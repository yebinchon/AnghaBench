
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int helpcontext; int version; int uuid; int libflags; int lcid; int syskind; int helpfile; int helpstring; int name; } ;
struct sltg_typelib {int index; TYPE_1__ library; } ;
typedef int GUID ;


 int add_index (int *,char*) ;
 int strcpy (char*,int ) ;
 short strlen (int ) ;
 void* xmalloc (int) ;

__attribute__((used)) static void *create_library_block(struct sltg_typelib *typelib, int *size, int *index)
{
    void *block;
    short *p;

    *size = sizeof(short) * 9 + sizeof(int) * 3 + sizeof(GUID);
    if (typelib->library.helpstring) *size += strlen(typelib->library.helpstring);
    if (typelib->library.helpfile) *size += strlen(typelib->library.helpfile);

    block = xmalloc(*size);
    p = block;
    *p++ = 0x51cc;
    *p++ = 3;
    *p++ = typelib->library.name;
    *p++ = 0xffff;
    if (typelib->library.helpstring)
    {
        *p++ = strlen(typelib->library.helpstring);
        strcpy((char *)p, typelib->library.helpstring);
        p = (short *)((char *)p + strlen(typelib->library.helpstring));
    }
    else
        *p++ = 0xffff;
    if (typelib->library.helpfile)
    {
        *p++ = strlen(typelib->library.helpfile);
        strcpy((char *)p, typelib->library.helpfile);
        p = (short *)((char *)p + strlen(typelib->library.helpfile));
    }
    else
        *p++ = 0xffff;
    *(int *)p = typelib->library.helpcontext;
    p += 2;
    *p++ = typelib->library.syskind;
    *p++ = typelib->library.lcid;
    *(int *)p = 0;
    p += 2;
    *p++ = typelib->library.libflags;
    *(int *)p = typelib->library.version;
    p += 2;
    *(GUID *)p = typelib->library.uuid;

    *index = add_index(&typelib->index, "dir");

    return block;
}
