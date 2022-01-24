#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int char_size; } ;
union cptable {int /*<<< orphan*/  dbcs; int /*<<< orphan*/  sbcs; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int MB_COMPOSITE ; 
 int MB_ERR_INVALID_CHARS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,unsigned char const*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,unsigned char const*,int,int /*<<< orphan*/ *,int) ; 

int FUNC6( const union cptable *table, int flags,
                      const char *s, int srclen,
                      WCHAR *dst, int dstlen )
{
    const unsigned char *src = (const unsigned char*) s;

    if (table->info.char_size == 1)
    {
        if (flags & MB_ERR_INVALID_CHARS)
        {
            if (FUNC1( &table->sbcs, flags, src, srclen )) return -2;
        }
        if (!(flags & MB_COMPOSITE))
        {
            if (!dstlen) return srclen;
            return FUNC4( &table->sbcs, flags, src, srclen, dst, dstlen );
        }
        return FUNC5( &table->sbcs, flags, src, srclen, dst, dstlen );
    }
    else /* mbcs */
    {
        if (flags & MB_ERR_INVALID_CHARS)
        {
            if (FUNC0( &table->dbcs, src, srclen )) return -2;
        }
        if (!(flags & MB_COMPOSITE))
            return FUNC2( &table->dbcs, src, srclen, dst, dstlen );
        else
            return FUNC3( &table->dbcs, src, srclen, dst, dstlen );
    }
}