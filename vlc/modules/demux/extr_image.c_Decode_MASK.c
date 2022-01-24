#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_11__ {size_t i_pitch; size_t i_lines; int i_visible_lines; size_t i_visible_pitch; int /*<<< orphan*/ * p_pixels; } ;
typedef  TYPE_1__ plane_t ;
struct TYPE_12__ {int i_planes; TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
typedef  int /*<<< orphan*/  es_format_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_13__ {int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC11(demux_t *demux,
                       es_format_t *fmt, vlc_fourcc_t chroma, block_t *data)
{
    image_handler_t *handler = FUNC4(demux);
    if (!handler) {
        FUNC1(data);
        return NULL;
    }

    video_format_t decoded;
    FUNC10(&decoded, chroma);

    picture_t *image = FUNC6(handler, data, fmt, &decoded);
    FUNC5(handler);

    if (!image)
        return NULL;

    FUNC2(fmt);
    FUNC3(fmt, &decoded);
    FUNC9(&decoded);

    size_t size = 0;
    for (int i = 0; i < image->i_planes; i++)
        size += image->p[i].i_pitch * image->p[i].i_lines;

    data = FUNC0(size);
    if (!data) {
        FUNC8(image);
        return NULL;
    }

    size_t offset = 0;
    for (int i = 0; i < image->i_planes; i++) {
        const plane_t *src = &image->p[i];
        for (int y = 0; y < src->i_visible_lines; y++) {
            FUNC7(&data->p_buffer[offset],
                   &src->p_pixels[y * src->i_pitch],
                   src->i_visible_pitch);
            offset += src->i_visible_pitch;
        }
    }

    FUNC8(image);
    return data;
}