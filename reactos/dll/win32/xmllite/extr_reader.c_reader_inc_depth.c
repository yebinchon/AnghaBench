
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; scalar_t__ max_depth; } ;
typedef TYPE_1__ xmlreader ;
typedef int HRESULT ;


 int SC_E_MAXELEMENTDEPTH ;
 int S_OK ;

__attribute__((used)) static HRESULT reader_inc_depth(xmlreader *reader)
{
    return (++reader->depth >= reader->max_depth && reader->max_depth) ? SC_E_MAXELEMENTDEPTH : S_OK;
}
