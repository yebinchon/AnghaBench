#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_31__ {int /*<<< orphan*/  state; } ;
struct TYPE_30__ {int flags; int /*<<< orphan*/  number; int /*<<< orphan*/  data_length; } ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  TYPE_2__ Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_FILE_EOF ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_FATAL ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_INFO ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC11 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC12 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 

int
FUNC13(Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data)
{
    FUNC2(ctx, JBIG2_SEVERITY_INFO, segment->number,
                "segment %d, flags=%x, type=%d, data_length=%d", segment->number, segment->flags, segment->flags & 63, segment->data_length);
    switch (segment->flags & 63) {
    case 0:
        return FUNC10(ctx, segment, segment_data);
    case 4:                    /* intermediate text region */
    case 6:                    /* immediate text region */
    case 7:                    /* immediate lossless text region */
        return FUNC12(ctx, segment, segment_data);
    case 16:
        return FUNC8(ctx, segment, segment_data);
    case 20:                   /* intermediate halftone region */
    case 22:                   /* immediate halftone region */
    case 23:                   /* immediate lossless halftone region */
        return FUNC3(ctx, segment, segment_data);
    case 36:
        return FUNC2(ctx, JBIG2_SEVERITY_FATAL, segment->number, "unhandled segment type 'intermediate generic region' (NYI)");
    case 38:                   /* immediate generic region */
    case 39:                   /* immediate lossless generic region */
        return FUNC4(ctx, segment, segment_data);
    case 40:                   /* intermediate generic refinement region */
    case 42:                   /* immediate generic refinement region */
    case 43:                   /* immediate lossless generic refinement region */
        return FUNC9(ctx, segment, segment_data);
    case 48:
        return FUNC5(ctx, segment, segment_data);
    case 49:
        return FUNC0(ctx, segment, segment_data);
    case 50:
        return FUNC1(ctx, segment, segment_data);
    case 51:
        ctx->state = JBIG2_FILE_EOF;
        FUNC2(ctx, JBIG2_SEVERITY_INFO, segment->number, "end of file");
        break;
    case 52:
        return FUNC7(ctx, segment, segment_data);
    case 53:                   /* user-supplied huffman table */
        return FUNC11(ctx, segment, segment_data);
    case 54:
        return FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "unhandled segment type 'color palette' (NYI)");
    case 62:
        return FUNC6(ctx, segment, segment_data);
    default:
        FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "unknown segment type %d", segment->flags & 63);
    }
    return 0;
}