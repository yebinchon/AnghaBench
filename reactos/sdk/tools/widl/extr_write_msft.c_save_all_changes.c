
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int varflags; int nrtypeinfos; } ;
struct TYPE_12__ {TYPE_5__* typelib; TYPE_4__ typelib_segdir; TYPE_4__ typelib_header; TYPE_4__* typelib_typeinfo_offsets; TYPE_4__ help_string_dll_offset; } ;
typedef TYPE_1__ msft_typelib_t ;
struct TYPE_13__ {int cval; } ;
typedef TYPE_2__ expr_t ;
struct TYPE_15__ {int attrs; } ;
typedef int MSFT_SegDir ;
typedef int MSFT_Header ;


 int ATTR_ID ;
 int MSFT_SEG_ARRAYDESC ;
 int MSFT_SEG_CUSTDATA ;
 int MSFT_SEG_CUSTDATAGUID ;
 int MSFT_SEG_GUID ;
 int MSFT_SEG_GUIDHASH ;
 int MSFT_SEG_IMPORTFILES ;
 int MSFT_SEG_IMPORTINFO ;
 int MSFT_SEG_NAME ;
 int MSFT_SEG_NAMEHASH ;
 int MSFT_SEG_REFERENCES ;
 int MSFT_SEG_STRING ;
 int MSFT_SEG_TYPEDESC ;
 int MSFT_SEG_TYPEINFO ;
 int add_output_to_resources (char*,char*) ;
 scalar_t__ byte_swapped ;
 int chat (char*,TYPE_1__*) ;
 scalar_t__ ctl2_finalize_segment (TYPE_1__*,int,int ) ;
 int ctl2_finalize_typeinfos (TYPE_1__*,int) ;
 int ctl2_write_segment (TYPE_1__*,int ) ;
 int ctl2_write_typeinfos (TYPE_1__*) ;
 int flush_output_buffer (int ) ;
 int flush_output_resources (int ) ;
 TYPE_2__* get_attrp (int ,int ) ;
 int init_output_buffer () ;
 int output_typelib_regscript (TYPE_5__*) ;
 int put_data (TYPE_4__*,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strendswith (int ,char*) ;
 int typelib_name ;

__attribute__((used)) static void save_all_changes(msft_typelib_t *typelib)
{
    int filepos;

    chat("save_all_changes(%p)\n", typelib);

    filepos = sizeof(MSFT_Header) + sizeof(MSFT_SegDir);
    if(typelib->typelib_header.varflags & 0x100) filepos += 4;
    filepos += typelib->typelib_header.nrtypeinfos * 4;

    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_TYPEINFO);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_GUIDHASH);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_GUID);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_REFERENCES);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_IMPORTINFO);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_IMPORTFILES);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_NAMEHASH);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_NAME);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_STRING);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_TYPEDESC);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_ARRAYDESC);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_CUSTDATA);
    filepos += ctl2_finalize_segment(typelib, filepos, MSFT_SEG_CUSTDATAGUID);

    ctl2_finalize_typeinfos(typelib, filepos);

    byte_swapped = 0;
    init_output_buffer();

    put_data(&typelib->typelib_header, sizeof(typelib->typelib_header));
    if(typelib->typelib_header.varflags & 0x100)
        put_data(&typelib->help_string_dll_offset, sizeof(typelib->help_string_dll_offset));

    put_data(typelib->typelib_typeinfo_offsets, typelib->typelib_header.nrtypeinfos * 4);
    put_data(&typelib->typelib_segdir, sizeof(typelib->typelib_segdir));
    ctl2_write_segment( typelib, MSFT_SEG_TYPEINFO );
    ctl2_write_segment( typelib, MSFT_SEG_GUIDHASH );
    ctl2_write_segment( typelib, MSFT_SEG_GUID );
    ctl2_write_segment( typelib, MSFT_SEG_REFERENCES );
    ctl2_write_segment( typelib, MSFT_SEG_IMPORTINFO );
    ctl2_write_segment( typelib, MSFT_SEG_IMPORTFILES );
    ctl2_write_segment( typelib, MSFT_SEG_NAMEHASH );
    ctl2_write_segment( typelib, MSFT_SEG_NAME );
    ctl2_write_segment( typelib, MSFT_SEG_STRING );
    ctl2_write_segment( typelib, MSFT_SEG_TYPEDESC );
    ctl2_write_segment( typelib, MSFT_SEG_ARRAYDESC );
    ctl2_write_segment( typelib, MSFT_SEG_CUSTDATA );
    ctl2_write_segment( typelib, MSFT_SEG_CUSTDATAGUID );

    ctl2_write_typeinfos(typelib);

    if (strendswith( typelib_name, ".res" ))
    {
        char typelib_id[13] = "#1";

        expr_t *expr = get_attrp( typelib->typelib->attrs, ATTR_ID );
        if (expr)
            sprintf( typelib_id, "#%d", expr->cval );
        add_output_to_resources( "TYPELIB", typelib_id );
        output_typelib_regscript( typelib->typelib );



    }
    else flush_output_buffer( typelib_name );
}
