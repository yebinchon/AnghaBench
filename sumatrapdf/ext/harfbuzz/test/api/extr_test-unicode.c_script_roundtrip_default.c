
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_script_t ;


 int hb_script_from_iso15924_tag (int ) ;
 int hb_script_to_iso15924_tag (int ) ;

__attribute__((used)) static hb_script_t
script_roundtrip_default (hb_script_t script)
{
  return hb_script_from_iso15924_tag (hb_script_to_iso15924_tag (script));
}
