
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_value ;
typedef int json_settings ;
typedef int json_char ;


 int * json_parse_ex (int *,int const*,int ) ;
 int memset (int *,int ,int) ;

json_value * json_parse (const json_char * json)
{
   json_settings settings;
   memset (&settings, 0, sizeof (json_settings));

   return json_parse_ex (&settings, json, 0);
}
