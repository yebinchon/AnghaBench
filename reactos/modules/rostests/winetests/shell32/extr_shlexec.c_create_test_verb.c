
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_test_verb_dde (char const*,char const*,int,char const*,int *,int *,int *,int *) ;
 int reset_association_description () ;

__attribute__((used)) static void create_test_verb(const char* classname, const char* verb,
                             int rawcmd, const char* cmdtail)
{
    create_test_verb_dde(classname, verb, rawcmd, cmdtail, ((void*)0), ((void*)0),
                         ((void*)0), ((void*)0));
    reset_association_description();
}
