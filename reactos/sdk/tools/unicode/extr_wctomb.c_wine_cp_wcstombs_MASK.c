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
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,char const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,char*,int,char const*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,char*,int,char const*,int*) ; 

int FUNC6( const union cptable *table, int flags,
                      const WCHAR *src, int srclen,
                      char *dst, int dstlen, const char *defchar, int *used )
{
    if (table->info.char_size == 1)
    {
        if (flags || defchar || used)
        {
            if (!dstlen) return FUNC1( &table->sbcs, flags, src, srclen, used );
            return FUNC5( &table->sbcs, flags, src, srclen,
                                       dst, dstlen, defchar, used );
        }
        if (!dstlen) return srclen;
        return FUNC4( &table->sbcs, src, srclen, dst, dstlen );
    }
    else /* mbcs */
    {
        if (!dstlen) return FUNC0( &table->dbcs, flags, src, srclen, defchar, used );
        if (flags || defchar || used)
            return FUNC3( &table->dbcs, flags, src, srclen,
                                       dst, dstlen, defchar, used );
        return FUNC2( &table->dbcs, src, srclen, dst, dstlen );
    }
}