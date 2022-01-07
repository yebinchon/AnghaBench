
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_data {int ino; int dev; } ;


 int CMP (int ,int ) ;
 int assert (struct inode_data const*) ;

__attribute__((used)) static int inode_data_compare(const struct inode_data *x, const struct inode_data *y) {
        int r;

        assert(x);
        assert(y);

        r = CMP(x->dev, y->dev);
        if (r != 0)
                return r;

        return CMP(x->ino, y->ino);
}
