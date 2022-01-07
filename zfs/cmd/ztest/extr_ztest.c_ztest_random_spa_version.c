
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int ASSERT (int ) ;
 scalar_t__ SPA_VERSION_BEFORE_FEATURES ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 scalar_t__ ztest_random (scalar_t__) ;

__attribute__((used)) static uint64_t
ztest_random_spa_version(uint64_t initial_version)
{
 uint64_t version = initial_version;

 if (version <= SPA_VERSION_BEFORE_FEATURES) {
  version = version +
      ztest_random(SPA_VERSION_BEFORE_FEATURES - version + 1);
 }

 if (version > SPA_VERSION_BEFORE_FEATURES)
  version = SPA_VERSION_FEATURES;

 ASSERT(SPA_VERSION_IS_SUPPORTED(version));
 return (version);
}
