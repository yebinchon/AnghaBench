
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
struct inode_data {int ino; int dev; } ;


 int assert (struct inode_data const*) ;
 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void inode_data_hash_func(const struct inode_data *d, struct siphash *state) {
        assert(d);

        siphash24_compress(&d->dev, sizeof(d->dev), state);
        siphash24_compress(&d->ino, sizeof(d->ino), state);
}
