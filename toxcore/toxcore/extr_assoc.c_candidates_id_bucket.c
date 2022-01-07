
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int bucket_t ;
struct TYPE_3__ {int candidates_bucket_bits; } ;
typedef TYPE_1__ Assoc ;


 int id_bucket (int const*,int ) ;

__attribute__((used)) static bucket_t candidates_id_bucket(const Assoc *assoc, const uint8_t *id)
{
    return id_bucket(id, assoc->candidates_bucket_bits);
}
