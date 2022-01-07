
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
 int WLDAP32_LDAP_AUTH_UNKNOWN ;
 int WLDAP32_LDAP_CLIENT_LOOP ;
 int WLDAP32_LDAP_CONNECT_ERROR ;
 int WLDAP32_LDAP_CONTROL_NOT_FOUND ;
 int WLDAP32_LDAP_DECODING_ERROR ;
 int WLDAP32_LDAP_FILTER_ERROR ;
 int WLDAP32_LDAP_LOCAL_ERROR ;
 int WLDAP32_LDAP_MORE_RESULTS_TO_RETURN ;
 int WLDAP32_LDAP_NOT_SUPPORTED ;
 int WLDAP32_LDAP_NO_MEMORY ;
 int WLDAP32_LDAP_NO_RESULTS_RETURNED ;
 int WLDAP32_LDAP_PARAM_ERROR ;
 int WLDAP32_LDAP_REFERRAL_LIMIT_EXCEEDED ;
 int WLDAP32_LDAP_SERVER_DOWN ;
 int WLDAP32_LDAP_TIMEOUT ;
 int WLDAP32_LDAP_USER_CANCELLED ;

ULONG map_error( int error )
{
    switch (error)
    {
    default: return error;
    }
}
