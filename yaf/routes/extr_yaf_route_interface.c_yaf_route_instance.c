
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_bool ;
typedef int yaf_route_t ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int ZEND_STRL (char*) ;
 int Z_ARRVAL_P (int *) ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * yaf_route_map_instance (int *,int ,int *) ;
 int * yaf_route_regex_instance (int *,int *,int *,int *,int *,int *) ;
 int * yaf_route_rewrite_instance (int *,int *,int *,int *) ;
 int * yaf_route_simple_instance (int *,int *,int *,int *) ;
 int * yaf_route_supervar_instance (int *,int *) ;
 int * zend_hash_str_find (int ,int ) ;
 int zend_is_true (int *) ;
 scalar_t__ zend_string_equals_literal_ci (int *,char*) ;

yaf_route_t * yaf_route_instance(yaf_route_t *this_ptr, zval *config) {
 zval *match, *def, *map, *verify, *reverse, *pzval;
 yaf_route_t *instance = ((void*)0);

 if (!config || IS_ARRAY != Z_TYPE_P(config)) {
  return ((void*)0);
 }

 if ((pzval = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("type"))) == ((void*)0) ||
  IS_STRING != Z_TYPE_P(pzval)) {
  return ((void*)0);
 }

 if (zend_string_equals_literal_ci(Z_STR_P(pzval), "rewrite")) {
  if ((match = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("match"))) == ((void*)0) ||
   Z_TYPE_P(match) != IS_STRING) {
   return ((void*)0);
  }
  if ((def = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("route"))) == ((void*)0) ||
   Z_TYPE_P(def) != IS_ARRAY) {
   return ((void*)0);
  }

  if ((verify = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("route"))) == ((void*)0) ||
   Z_TYPE_P(verify) != IS_ARRAY) {
   verify = ((void*)0);
  }

        instance = yaf_route_rewrite_instance(this_ptr, match, def, verify);
 } else if (zend_string_equals_literal_ci(Z_STR_P(pzval), "regex")) {
  if ((match = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("match"))) == ((void*)0) ||
   Z_TYPE_P(match) != IS_STRING) {
   return ((void*)0);
  }
  if ((def = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("route"))) == ((void*)0) ||
   Z_TYPE_P(def) != IS_ARRAY) {
   return ((void*)0);
  }
  if ((map = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("map"))) == ((void*)0) ||
   Z_TYPE_P(map) != IS_ARRAY) {
   map = ((void*)0);
  }

  if ((verify = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("route"))) == ((void*)0) ||
   Z_TYPE_P(verify) != IS_ARRAY) {
   verify = ((void*)0);
  }

  if ((reverse = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("route"))) == ((void*)0) ||
   Z_TYPE_P(reverse) != IS_STRING) {
   reverse = ((void*)0);
  }

  instance = yaf_route_regex_instance(this_ptr, match, def, map, verify, reverse);
 } else if (zend_string_equals_literal_ci(Z_STR_P(pzval), "map")) {
  zend_string *delimiter = ((void*)0);
  zend_bool controller_prefer = 0;

  if ((pzval = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("controllerPrefer"))) != ((void*)0)) {
   controller_prefer = zend_is_true(pzval);
  }

  if ((pzval = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("delimiter"))) != ((void*)0)
   && Z_TYPE_P(pzval) == IS_STRING) {
   delimiter = Z_STR_P(pzval);
  }

  instance = yaf_route_map_instance(this_ptr, controller_prefer, delimiter);
 } else if (zend_string_equals_literal_ci(Z_STR_P(pzval), "simple")) {
  if ((match = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("module"))) == ((void*)0) ||
   Z_TYPE_P(match) != IS_STRING) {
   return ((void*)0);
  }
  if ((def = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("controller"))) == ((void*)0) ||
   Z_TYPE_P(def) != IS_STRING) {
   return ((void*)0);
  }
  if ((map = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("action"))) == ((void*)0) ||
   Z_TYPE_P(map) != IS_STRING) {
   return ((void*)0);
  }

  instance = yaf_route_simple_instance(this_ptr, match, def, map);
 } else if (zend_string_equals_literal_ci(Z_STR_P(pzval), "supervar")) {
  if ((match = zend_hash_str_find(Z_ARRVAL_P(config), ZEND_STRL("varname"))) == ((void*)0) ||
   Z_TYPE_P(match) != IS_STRING) {
   return ((void*)0);
  }

  instance = yaf_route_supervar_instance(this_ptr, match);
 }

 return instance;
}
