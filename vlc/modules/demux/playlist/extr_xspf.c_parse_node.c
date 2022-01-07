
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_11__ {int (* smpl ) (int *,char const*,char*,int ) ;int (* cmplx ) (TYPE_3__*,int *,int *,char const*,int const) ;} ;
struct TYPE_12__ {char const* name; TYPE_1__ pf_handler; int cmplx; } ;
typedef TYPE_2__ xml_elem_hnd_t ;
struct TYPE_13__ {int p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int FREENULL (char*) ;

 int XML_READER_NONE ;


 int free (char*) ;
 TYPE_2__* get_handler (TYPE_2__ const*,size_t,char const*) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 int msg_Warn (TYPE_3__*,char*,char const*) ;
 int skip_element (int *,int *,int *,char const*,int const) ;
 int strcmp (char const*,char const*) ;
 char* strdup (char const*) ;
 int stub1 (TYPE_3__*,int *,int *,char const*,int const) ;
 int stub2 (int *,char const*,char*,int ) ;
 int unlikely (int) ;
 int xml_ReaderIsEmptyElement (int *) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static bool parse_node(stream_t *p_stream,
                       input_item_node_t *p_input_node, input_item_t *p_input_item,
                       xml_reader_t *p_xml_reader, const char *psz_root_node,
                       const xml_elem_hnd_t *pl_elements, size_t i_pl_elements)
{
    bool b_ret = 0;

    char *psz_value = ((void*)0);
    const char *name;
    int i_node;
    const xml_elem_hnd_t *p_handler = ((void*)0);

    while ((i_node = xml_ReaderNextNode(p_xml_reader, &name)) > XML_READER_NONE)
    {
        const bool b_empty = xml_ReaderIsEmptyElement(p_xml_reader);

        switch (i_node)
        {
            case 129:
                FREENULL(psz_value);
                if (!*name)
                {
                    msg_Err(p_stream, "invalid XML stream");
                    goto end;
                }

                p_handler = get_handler(pl_elements, i_pl_elements, name);
                if (!p_handler)
                {
                    msg_Warn(p_stream, "skipping unexpected element <%s>", name);
                    if(!skip_element(((void*)0), ((void*)0), p_xml_reader, name, b_empty))
                        return 0;
                }
                else
                {

                    if (p_handler->cmplx)
                    {
                        if (!p_handler->pf_handler.cmplx(p_stream, p_input_node,
                                                         p_xml_reader, p_handler->name,
                                                         b_empty))
                            return 0;

                        p_handler = ((void*)0);
                    }
                }
                break;

            case 128:
                free(psz_value);
                if(!p_handler)
                {
                    psz_value = ((void*)0);
                }
                else
                {
                    psz_value = strdup(name);
                    if (unlikely(!psz_value))
                        goto end;
                }
                break;

            case 130:

                if (!strcmp(name, psz_root_node))
                {
                    b_ret = 1;
                    goto end;
                }

                if(p_handler)
                {

                    if (strcmp(p_handler->name, name))
                    {
                        msg_Err(p_stream, "there's no open element left for <%s>", name);
                        goto end;
                    }

                    if (p_handler->pf_handler.smpl)
                        p_handler->pf_handler.smpl(p_input_item, p_handler->name,
                                                   psz_value, p_stream->p_sys);

                    free(psz_value);
                    psz_value = ((void*)0);
                    p_handler = ((void*)0);
                }
                break;
        }
    }

end:
    free(psz_value);

    return b_ret;
}
