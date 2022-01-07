
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision; int build; int minor; int major; } ;
struct assembly_identity {char* name; char* arch; char* public_key; char* type; TYPE_1__ version; } ;
typedef char WCHAR ;
typedef int SIZE_T ;


 char* RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 int append_string (char*,char const*,char*) ;
 int sprintfW (char*,int ,int ,int ,int ,int ) ;
 int strcpyW (char*,char*) ;
 int strlenW (char const*) ;
 int version_formatW ;

__attribute__((used)) static WCHAR *build_assembly_id( const struct assembly_identity *ai )
{
    static const WCHAR archW[] =
        {',','p','r','o','c','e','s','s','o','r','A','r','c','h','i','t','e','c','t','u','r','e','=',0};
    static const WCHAR public_keyW[] =
        {',','p','u','b','l','i','c','K','e','y','T','o','k','e','n','=',0};
    static const WCHAR typeW2[] =
        {',','t','y','p','e','=',0};
    static const WCHAR versionW2[] =
        {',','v','e','r','s','i','o','n','=',0};

    WCHAR version[64], *ret;
    SIZE_T size = 0;

    sprintfW( version, version_formatW,
              ai->version.major, ai->version.minor, ai->version.build, ai->version.revision );
    if (ai->name) size += strlenW(ai->name) * sizeof(WCHAR);
    if (ai->arch) size += strlenW(archW) + strlenW(ai->arch) + 2;
    if (ai->public_key) size += strlenW(public_keyW) + strlenW(ai->public_key) + 2;
    if (ai->type) size += strlenW(typeW2) + strlenW(ai->type) + 2;
    size += strlenW(versionW2) + strlenW(version) + 2;

    if (!(ret = RtlAllocateHeap( RtlGetProcessHeap(), 0, (size + 1) * sizeof(WCHAR) )))
        return ((void*)0);

    if (ai->name) strcpyW( ret, ai->name );
    else *ret = 0;
    append_string( ret, archW, ai->arch );
    append_string( ret, public_keyW, ai->public_key );
    append_string( ret, typeW2, ai->type );
    append_string( ret, versionW2, version );
    return ret;
}
