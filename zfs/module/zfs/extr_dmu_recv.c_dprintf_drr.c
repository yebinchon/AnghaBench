
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drr_object_range {int drr_flags; int drr_numslots; int drr_firstobj; } ;
struct drr_spill {int drr_length; int drr_object; } ;
struct drr_free {int drr_length; int drr_offset; int drr_object; } ;
struct drr_write_embedded {int drr_psize; int drr_lsize; int drr_etype; int drr_compression; int drr_length; int drr_offset; int drr_object; } ;
struct drr_write_byref {int drr_flags; int drr_checksumtype; int drr_refoffset; int drr_refobject; int drr_refguid; int drr_toguid; int drr_length; int drr_offset; int drr_object; } ;
struct drr_write {int drr_compressed_size; int drr_compressiontype; int drr_flags; int drr_checksumtype; int drr_logical_size; int drr_offset; int drr_type; int drr_object; } ;
struct drr_freeobjects {int drr_numobjs; int drr_firstobj; } ;
struct drr_object {int drr_dn_slots; int drr_compress; int drr_checksumtype; int drr_bonuslen; int drr_blksz; int drr_bonustype; int drr_type; int drr_object; } ;
struct TYPE_3__ {struct drr_object_range drr_object_range; struct drr_spill drr_spill; struct drr_free drr_free; struct drr_write_embedded drr_write_embedded; struct drr_write_byref drr_write_byref; struct drr_write drr_write; struct drr_freeobjects drr_freeobjects; struct drr_object drr_object; } ;
struct TYPE_4__ {int drr_type; TYPE_1__ drr_u; } ;
struct receive_record_arg {TYPE_2__ header; } ;
 int dprintf (char*,int ,int ,int,...) ;

__attribute__((used)) static void
dprintf_drr(struct receive_record_arg *rrd, int err)
{
}
