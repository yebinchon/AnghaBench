
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jsonb ;


 int ID_FIELD ;
 int cstring_to_text (int ) ;
 char* ts_jsonb_get_str_field (int *,int ) ;

__attribute__((used)) static char *
json_get_id(Jsonb *license)
{
 return ts_jsonb_get_str_field(license, cstring_to_text(ID_FIELD));
}
