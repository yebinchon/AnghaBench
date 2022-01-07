
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int parse_script_af (int ,char const*) ;

__attribute__((used)) static void parse_script_a(const char *src)
{
    parse_script_af(SCRIPTITEM_GLOBALMEMBERS, src);
}
