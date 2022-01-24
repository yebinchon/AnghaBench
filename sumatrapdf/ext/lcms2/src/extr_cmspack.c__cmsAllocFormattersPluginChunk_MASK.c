#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _cmsContext_struct {int /*<<< orphan*/  MemPool; int /*<<< orphan*/ * chunks; } ;
struct TYPE_3__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ _cmsFormattersPluginChunkType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _cmsContext_struct*,struct _cmsContext_struct const*) ; 
 size_t FormattersPlugin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC3(struct _cmsContext_struct* ctx,
                                    const struct _cmsContext_struct* src)
{
      FUNC1(ctx != NULL);

     if (src != NULL) {

         // Duplicate the LIST
         FUNC0(ctx, src);
     }
     else {
          static _cmsFormattersPluginChunkType FormattersPluginChunk = { NULL };
          ctx ->chunks[FormattersPlugin] = FUNC2(ctx ->MemPool, &FormattersPluginChunk, sizeof(_cmsFormattersPluginChunkType));
     }
}