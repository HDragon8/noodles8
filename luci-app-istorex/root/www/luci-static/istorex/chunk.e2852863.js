import{d as c,u,i as r,s as d,o as l,c as e,a as t,F as _,E as i,l as s}from"./index.js?v=6248f3bd";const h={class:"ul-container"},p={class:"ul-container_body"},m={class:"page-table"},v=t("colgroup",null,[t("col"),t("col"),t("col"),t("col")],-1),f=t("thead",null,[t("tr",null,[t("th",null,"Mac"),t("th",null,"IPv4"),t("th",null,"IPv6"),t("th")])],-1),b=t("th",null,null,-1),g=t("th",null,null,-1),E=c({__name:"index",setup(x){const o=u(),a=r(()=>o.device.devices);return d(),(y,B)=>(l(),e("main",null,[t("ul",h,[t("div",p,[t("table",m,[v,f,t("tbody",null,[(l(!0),e(_,null,i(a.value,n=>(l(),e("tr",null,[t("th",null,s(n.mac),1),t("th",null,s(n.ipv4addr),1),b,g]))),256))])])])])]))}});export{E as default};
