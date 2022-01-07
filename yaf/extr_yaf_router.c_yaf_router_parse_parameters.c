
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ uint ;


 int YAF_ROUTER_URL_DELIMIETER ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 int Z_ARRVAL_P (int *) ;
 int array_init (int *) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 char* php_strtok_r (char*,int ,char**) ;
 scalar_t__ strlen (char*) ;
 int zend_hash_str_update (int ,char*,scalar_t__,int *) ;

void yaf_router_parse_parameters(char *uri, zval *params) {
 char *key, *ptrptr, *tmp, *value;
 zval val;
 uint key_len;

 array_init(params);

 tmp = estrdup(uri);
 key = php_strtok_r(tmp, YAF_ROUTER_URL_DELIMIETER, &ptrptr);
 while (key) {
  key_len = strlen(key);
  if (key_len) {
   value = php_strtok_r(((void*)0), YAF_ROUTER_URL_DELIMIETER, &ptrptr);
   if (value && strlen(value)) {
    ZVAL_STRING(&val, value);
   } else {
    ZVAL_NULL(&val);
   }
   zend_hash_str_update(Z_ARRVAL_P(params), key, key_len, &val);
  }

  key = php_strtok_r(((void*)0), YAF_ROUTER_URL_DELIMIETER, &ptrptr);
 }

 efree(tmp);
}
