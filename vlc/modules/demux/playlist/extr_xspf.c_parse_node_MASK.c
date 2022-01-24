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
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* smpl ) (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cmplx ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int const) ;} ;
struct TYPE_12__ {char const* name; TYPE_1__ pf_handler; int /*<<< orphan*/  cmplx; } ;
typedef  TYPE_2__ xml_elem_hnd_t ;
struct TYPE_13__ {int /*<<< orphan*/  p_sys; } ;
typedef  TYPE_3__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  XML_READER_ENDELEM 130 
 int XML_READER_NONE ; 
#define  XML_READER_STARTELEM 129 
#define  XML_READER_TEXT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (TYPE_2__ const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static bool FUNC13(stream_t *p_stream,
                       input_item_node_t *p_input_node, input_item_t *p_input_item,
                       xml_reader_t *p_xml_reader, const char *psz_root_node,
                       const xml_elem_hnd_t *pl_elements, size_t i_pl_elements)
{
    bool b_ret = false;

    char *psz_value = NULL;
    const char *name;
    int i_node;
    const xml_elem_hnd_t *p_handler = NULL;

    while ((i_node = FUNC12(p_xml_reader, &name)) > XML_READER_NONE)
    {
        const bool b_empty = FUNC11(p_xml_reader);

        switch (i_node)
        {
            case XML_READER_STARTELEM:
                FUNC0(psz_value);
                if (!*name)
                {
                    FUNC3(p_stream, "invalid XML stream");
                    goto end;
                }

                p_handler = FUNC2(pl_elements, i_pl_elements, name);
                if (!p_handler)
                {
                    FUNC4(p_stream, "skipping unexpected element <%s>", name);
                    if(!FUNC5(NULL, NULL, p_xml_reader, name, b_empty))
                        return false;
                }
                else
                {
                    /* complex content is parsed in a separate function */
                    if (p_handler->cmplx)
                    {
                        if (!p_handler->pf_handler.cmplx(p_stream, p_input_node,
                                                         p_xml_reader, p_handler->name,
                                                         b_empty))
                            return false;
                        /* Complex reader does read the named end element */
                        p_handler = NULL;
                    }
                }
                break;

            case XML_READER_TEXT:
                FUNC1(psz_value);
                if(!p_handler)
                {
                    psz_value = NULL;
                }
                else
                {
                    psz_value = FUNC7(name);
                    if (FUNC10(!psz_value))
                        goto end;
                }
                break;

            case XML_READER_ENDELEM:
                /* leave if the current parent node is terminated */
                if (!FUNC6(name, psz_root_node))
                {
                    b_ret = true;
                    goto end;
                }

                if(p_handler)
                {
                    /* there MUST have been a start tag for that element name */
                    if (FUNC6(p_handler->name, name))
                    {
                        FUNC3(p_stream, "there's no open element left for <%s>", name);
                        goto end;
                    }

                    if (p_handler->pf_handler.smpl)
                        p_handler->pf_handler.smpl(p_input_item, p_handler->name,
                                                   psz_value, p_stream->p_sys);

                    FUNC1(psz_value);
                    psz_value = NULL;
                    p_handler = NULL;
                }
                break;
        }
    }

end:
    FUNC1(psz_value);

    return b_ret;
}