
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wine_trailerW ;
struct TYPE_5__ {scalar_t__ build; scalar_t__ revision; int minor; int major; } ;
struct assembly_identity {char* language; TYPE_1__ version; int public_key; int name; int arch; } ;
typedef int lookup_fmtW ;
typedef int buffer ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {char* FileName; int FileNameLength; scalar_t__ NextEntryOffset; } ;
struct TYPE_6__ {scalar_t__ Information; } ;
typedef TYPE_2__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_3__ FILE_BOTH_DIR_INFORMATION ;


 int DPRINT1 (char*,char*) ;
 int FALSE ;
 int FileBothDirectoryInformation ;
 scalar_t__ NtQueryDirectoryFile (int ,int ,int *,int *,TYPE_2__*,char*,int,int ,int ,int *,int ) ;
 char* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,char*) ;
 int RtlGetProcessHeap () ;
 int RtlInitUnicodeString (int *,char*) ;
 int TRUE ;
 scalar_t__ atoiW (char*) ;
 int memcpy (char*,char*,int) ;
 int memicmpW (char*,char const*,int) ;
 int neutralW ;
 int sprintfW (char*,char const*,int ,int ,int ,int ,int ,char const*) ;
 char* strchrW (char*,char) ;
 int strcmpiW (char const*,int ) ;
 int strlenW (int ) ;
 char* wildcardW ;

__attribute__((used)) static WCHAR *lookup_manifest_file( HANDLE dir, struct assembly_identity *ai )
{
    static const WCHAR lookup_fmtW[] =
        {'%','s','_','%','s','_','%','s','_','%','u','.','%','u','.','*','.','*','_',
         '%','s','_','*','.','m','a','n','i','f','e','s','t',0};
    static const WCHAR wine_trailerW[] = {'d','e','a','d','b','e','e','f','.','m','a','n','i','f','e','s','t'};

    WCHAR *lookup, *ret = ((void*)0);
    UNICODE_STRING lookup_us;
    IO_STATUS_BLOCK io;
    const WCHAR *lang = ai->language;
    unsigned int data_pos = 0, data_len;
    char buffer[8192];

    if (!(lookup = RtlAllocateHeap( RtlGetProcessHeap(), 0,
                                    (strlenW(ai->arch) + strlenW(ai->name)
                                     + strlenW(ai->public_key) + 20) * sizeof(WCHAR)
                                    + sizeof(lookup_fmtW) )))
        return ((void*)0);

    if (!lang || !strcmpiW( lang, neutralW )) lang = wildcardW;
    sprintfW( lookup, lookup_fmtW, ai->arch, ai->name, ai->public_key,
              ai->version.major, ai->version.minor, lang );
    RtlInitUnicodeString( &lookup_us, lookup );

    if (!NtQueryDirectoryFile( dir, 0, ((void*)0), ((void*)0), &io, buffer, sizeof(buffer),
                               FileBothDirectoryInformation, FALSE, &lookup_us, TRUE ))
    {
        ULONG min_build = ai->version.build, min_revision = ai->version.revision;
        FILE_BOTH_DIR_INFORMATION *dir_info;
        WCHAR *tmp;
        ULONG build, revision;

        data_len = (ULONG)io.Information;

        for (;;)
        {
            if (data_pos >= data_len)
            {
                if (NtQueryDirectoryFile( dir, 0, ((void*)0), ((void*)0), &io, buffer, sizeof(buffer),
                                          FileBothDirectoryInformation, FALSE, &lookup_us, FALSE ))
                    break;
                data_len = (ULONG)io.Information;
                data_pos = 0;
            }
            dir_info = (FILE_BOTH_DIR_INFORMATION*)(buffer + data_pos);

            if (dir_info->NextEntryOffset) data_pos += dir_info->NextEntryOffset;
            else data_pos = data_len;

            tmp = (WCHAR *)dir_info->FileName + (strchrW(lookup, '*') - lookup);
            build = atoiW(tmp);
            if (build < min_build) continue;
            tmp = strchrW(tmp, '.') + 1;
            revision = atoiW(tmp);
            if (build == min_build && revision < min_revision) continue;
            tmp = strchrW(tmp, '_') + 1;
            tmp = strchrW(tmp, '_') + 1;
            if (dir_info->FileNameLength - (tmp - dir_info->FileName) * sizeof(WCHAR) == sizeof(wine_trailerW) &&
                !memicmpW( tmp, wine_trailerW, sizeof(wine_trailerW) / sizeof(WCHAR) ))
            {


                if (ret) continue;
            }
            else
            {
                min_build = build;
                min_revision = revision;
            }
            ai->version.build = build;
            ai->version.revision = revision;
            RtlFreeHeap( RtlGetProcessHeap(), 0, ret );
            if ((ret = RtlAllocateHeap( RtlGetProcessHeap(), 0, dir_info->FileNameLength + sizeof(WCHAR) )))
            {
                memcpy( ret, dir_info->FileName, dir_info->FileNameLength );
                ret[dir_info->FileNameLength/sizeof(WCHAR)] = 0;
            }
        }
    }
    else DPRINT1("no matching file for %S\n", lookup);
    RtlFreeHeap( RtlGetProcessHeap(), 0, lookup );
    return ret;
}
