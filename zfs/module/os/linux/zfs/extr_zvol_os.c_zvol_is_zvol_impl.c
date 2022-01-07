
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_dev; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 unsigned int MAJOR (int ) ;
 int bdput (struct block_device*) ;
 struct block_device* vdev_lookup_bdev (char const*) ;
 unsigned int zvol_major ;

__attribute__((used)) static boolean_t
zvol_is_zvol_impl(const char *device)
{
 struct block_device *bdev;
 unsigned int major;

 bdev = vdev_lookup_bdev(device);
 if (IS_ERR(bdev))
  return (B_FALSE);

 major = MAJOR(bdev->bd_dev);
 bdput(bdev);

 if (major == zvol_major)
  return (B_TRUE);

 return (B_FALSE);
}
