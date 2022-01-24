#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wine_trailerW ;
struct TYPE_5__ {scalar_t__ build; scalar_t__ revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct assembly_identity {char* language; TYPE_1__ version; int /*<<< orphan*/  public_key; int /*<<< orphan*/  name; int /*<<< orphan*/  arch; } ;
typedef  int /*<<< orphan*/  lookup_fmtW ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {char* FileName; int FileNameLength; scalar_t__ NextEntryOffset; } ;
struct TYPE_6__ {scalar_t__ Information; } ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_3__ FILE_BOTH_DIR_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FileBothDirectoryInformation ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  neutralW ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 char* wildcardW ; 

__attribute__((used)) static WCHAR *FUNC13( HANDLE dir, struct assembly_identity *ai )
{
    static const WCHAR lookup_fmtW[] =
        {'%','s','_','%','s','_','%','s','_','%','u','.','%','u','.','*','.','*','_',
         '%','s','_','*','.','m','a','n','i','f','e','s','t',0};
    static const WCHAR wine_trailerW[] = {'d','e','a','d','b','e','e','f','.','m','a','n','i','f','e','s','t'};

    WCHAR *lookup, *ret = NULL;
    UNICODE_STRING lookup_us;
    IO_STATUS_BLOCK io;
    const WCHAR *lang = ai->language;
    unsigned int data_pos = 0, data_len;
    char buffer[8192];

    if (!(lookup = FUNC2( FUNC4(), 0,
                                    (FUNC12(ai->arch) + FUNC12(ai->name)
                                     + FUNC12(ai->public_key) + 20) * sizeof(WCHAR)
                                    + sizeof(lookup_fmtW) )))
        return NULL;

    if (!lang || !FUNC11( lang, neutralW )) lang = wildcardW;
    FUNC9( lookup, lookup_fmtW, ai->arch, ai->name, ai->public_key,
              ai->version.major, ai->version.minor, lang );
    FUNC5( &lookup_us, lookup );

    if (!FUNC1( dir, 0, NULL, NULL, &io, buffer, sizeof(buffer),
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
                if (FUNC1( dir, 0, NULL, NULL, &io, buffer, sizeof(buffer),
                                          FileBothDirectoryInformation, FALSE, &lookup_us, FALSE ))
                    break;
                data_len = (ULONG)io.Information;
                data_pos = 0;
            }
            dir_info = (FILE_BOTH_DIR_INFORMATION*)(buffer + data_pos);

            if (dir_info->NextEntryOffset) data_pos += dir_info->NextEntryOffset;
            else data_pos = data_len;

            tmp = (WCHAR *)dir_info->FileName + (FUNC10(lookup, '*') - lookup);
            build = FUNC6(tmp);
            if (build < min_build) continue;
            tmp = FUNC10(tmp, '.') + 1;
            revision = FUNC6(tmp);
            if (build == min_build && revision < min_revision) continue;
            tmp = FUNC10(tmp, '_') + 1;
            tmp = FUNC10(tmp, '_') + 1;
            if (dir_info->FileNameLength - (tmp - dir_info->FileName) * sizeof(WCHAR) == sizeof(wine_trailerW) &&
                !FUNC8( tmp, wine_trailerW, sizeof(wine_trailerW) / sizeof(WCHAR) ))
            {
                /* prefer a non-Wine manifest if we already have one */
                /* we'll still load the builtin dll if specified through DllOverrides */
                if (ret) continue;
            }
            else
            {
                min_build = build;
                min_revision = revision;
            }
            ai->version.build = build;
            ai->version.revision = revision;
            FUNC3( FUNC4(), 0, ret );
            if ((ret = FUNC2( FUNC4(), 0, dir_info->FileNameLength + sizeof(WCHAR) )))
            {
                FUNC7( ret, dir_info->FileName, dir_info->FileNameLength );
                ret[dir_info->FileNameLength/sizeof(WCHAR)] = 0;
            }
        }
    }
    else FUNC0("no matching file for %S\n", lookup);
    FUNC3( FUNC4(), 0, lookup );
    return ret;
}