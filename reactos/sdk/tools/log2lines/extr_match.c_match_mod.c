
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_3__ {void* RelBase; scalar_t__ ImageBase; void* Size; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef int FILE ;


 int NAMESIZE ;
 int cache ;
 TYPE_1__* entry_lookup (int *,char*) ;
 int l2l_dbg (int,char*,...) ;
 int sscanf (char*,char*,...) ;

__attribute__((used)) static int match_mod(FILE *outFile, char *Line, int processed)
{
    static int state = 0;
    char Image[NAMESIZE];
    UINT Base;
    UINT Size;
    PLIST_MEMBER plm;

    int cnt;

    if ( processed ) return processed;
    if ( (cnt = sscanf(Line," Base Size %5s", Image)) == 1 )
    {
        l2l_dbg(1, "Module relocate list:\n");
        state = 1;
        return 0;
    }
    switch (state)
    {
    case 1:
        if ( (cnt = sscanf(Line,"%x %x %20s", &Base, &Size, Image)) == 3 )
        {
            if (( plm = entry_lookup(&cache, Image) ))
            {
                plm->RelBase = Base;
                plm->Size = Size;
                l2l_dbg(1, "Relocated: %s %p -> %p\n", Image, (void*)plm->ImageBase, (void*)plm->RelBase);
            }
            return 0;
        }
        else
        {
            state = 0;
        }
        break;
    default:
        state = 0;
    }
    return 1;
}
