@startuml
title ${model.name} — Dominio y Subdominios

skinparam packageStyle rectangle

package "${model.domains[0].name} — Dominio" {
  package "Core Domains" {
  <#list model.domains[0].subdomains?filter(sd -> sd.type?string == "CORE_DOMAIN") as sd>
    rectangle "${sd.name}" as ${sd.name}
  </#list>
  }
  package "Supporting Domains" {
  <#list model.domains[0].subdomains?filter(sd -> sd.type?string == "SUPPORTING_DOMAIN") as sd>
    rectangle "${sd.name}" as ${sd.name}
  </#list>
  }
  package "Generic Subdomains" {
  <#list model.domains[0].subdomains?filter(sd -> sd.type?string == "GENERIC_SUBDOMAIN") as sd>
    rectangle "${sd.name}" as ${sd.name}
  </#list>
  }
}
@enduml