
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int error (char*) ;
 int strcpy (char*,char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static const char *new_index_name(void)
{
    static char name[11] = "0000000000";
    static int pos = 0;
    char *new_name;

    if (name[pos] == 'Z')
    {
        pos++;
        if (pos > 9)
            error("too many index names\n");
    }

    name[pos]++;

    new_name = xmalloc(sizeof(name));
    strcpy(new_name, name);
    return new_name;
}
