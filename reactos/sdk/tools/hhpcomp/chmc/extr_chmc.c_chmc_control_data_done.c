
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chmcTreeNode {int flags; } ;
struct chmcFile {TYPE_1__** sections; } ;
typedef int UChar ;
struct TYPE_2__ {int control_data; } ;


 int CHMC_ENOMEM ;
 int CHMC_NOERR ;
 int CHMC_TNFL_STATIC ;
 int _CHMC_LZXC_V2_LEN ;
 struct chmcTreeNode* chmc_add_meta (struct chmcFile*,char*,int ,int *,int ) ;

int chmc_control_data_done(struct chmcFile *chm)
{
 struct chmcTreeNode *ctrl;

 ctrl = chmc_add_meta(chm, "::DataSpace/Storage/MSCompressed/ControlData",
                      0, (UChar *)&chm->sections[1]->control_data,
                      _CHMC_LZXC_V2_LEN);

 if (ctrl) {
  ctrl->flags |= CHMC_TNFL_STATIC;
  return CHMC_NOERR;
 }

 return CHMC_ENOMEM;
}
