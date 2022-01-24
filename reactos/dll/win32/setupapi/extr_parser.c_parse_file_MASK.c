#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  utf8_bom ;
struct line {scalar_t__ nb_fields; int first_field; } ;
struct inf_file {int strings_section; struct field* fields; void* strings; void* string_pos; } ;
struct field {int /*<<< orphan*/  text; } ;
typedef  int WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int CP_ACP ; 
 int CP_UTF8 ; 
 int /*<<< orphan*/  Chicago ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_WRONG_INF_STYLE ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int INF_STYLE_WIN4 ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC8 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  Signature ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  Version ; 
 int /*<<< orphan*/  Windows95 ; 
 int /*<<< orphan*/  WindowsNT ; 
 struct line* FUNC11 (struct inf_file*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inf_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inf_file*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int const*,int) ; 
 int FUNC15 (struct inf_file*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inf_file *FUNC17( HANDLE handle, UINT *error_line, DWORD style )
{
    void *buffer;
    DWORD err = 0;
    struct inf_file *file;

    DWORD size = FUNC1( handle, NULL );
    HANDLE mapping = FUNC0( handle, NULL, PAGE_READONLY, 0, size, NULL );
    if (!mapping) return NULL;
    buffer = FUNC5( mapping, FILE_MAP_READ, 0, 0, size );
    FUNC7( mapping );
    if (!buffer) return NULL;

    if (!(file = FUNC3( FUNC2(), HEAP_ZERO_MEMORY, sizeof(*file) )))
    {
        err = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }

    /* we won't need more strings space than the size of the file,
     * so we can preallocate it here
     */
    if (!(file->strings = FUNC3( FUNC2(), 0, size * sizeof(WCHAR) )))
    {
        err = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }
    file->string_pos = file->strings;
    file->strings_section = -1;

    if (!FUNC8( buffer, size, NULL ))
    {
        static const BYTE utf8_bom[3] = { 0xef, 0xbb, 0xbf };
        WCHAR *new_buff;
        UINT codepage = CP_ACP;
        UINT offset = 0;

        if (size > sizeof(utf8_bom) && !FUNC14( buffer, utf8_bom, sizeof(utf8_bom) ))
        {
            codepage = CP_UTF8;
            offset = sizeof(utf8_bom);
        }

        if ((new_buff = FUNC3( FUNC2(), 0, size * sizeof(WCHAR) )))
        {
            DWORD len = FUNC6( codepage, 0, (char *)buffer + offset,
                                             size - offset, new_buff, size );
            err = FUNC15( file, new_buff, new_buff + len, error_line );
            FUNC4( FUNC2(), 0, new_buff );
        }
    }
    else
    {
        WCHAR *new_buff = buffer;
        /* UCS-16 files should start with the Unicode BOM; we should skip it */
        if (*new_buff == 0xfeff)
            new_buff++;
        err = FUNC15( file, new_buff, (WCHAR *)((char *)buffer + size), error_line );
    }

    if (!err)  /* now check signature */
    {
        int version_index = FUNC12( file, Version );
        if (version_index != -1)
        {
            struct line *line = FUNC11( file, version_index, Signature );
            if (line && line->nb_fields > 0)
            {
                struct field *field = file->fields + line->first_field;
                if (!FUNC16( field->text, Chicago )) goto done;
                if (!FUNC16( field->text, WindowsNT )) goto done;
                if (!FUNC16( field->text, Windows95 )) goto done;
            }
        }
        if (error_line) *error_line = 0;
        if (style & INF_STYLE_WIN4) err = ERROR_WRONG_INF_STYLE;
    }

 done:
    FUNC10( buffer );
    if (err)
    {
        if (file) FUNC13( file );
        FUNC9( err );
        file = NULL;
    }
    return file;
}