
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int LOCALDISPLAYLEVEL (int,int,char*,int ,int ,double const) ;

void COVER_warnOnSmallCorpus(size_t maxDictSize, size_t nbDmers, int displayLevel)
{
  const double ratio = (double)nbDmers / maxDictSize;
  if (ratio >= 10) {
      return;
  }
  LOCALDISPLAYLEVEL(displayLevel, 1,
                    "WARNING: The maximum dictionary size %u is too large "
                    "compared to the source size %u! "
                    "size(source)/size(dictionary) = %f, but it should be >= "
                    "10! This may lead to a subpar dictionary! We recommend "
                    "training on sources at least 10x, and preferably 100x "
                    "the size of the dictionary! \n", (U32)maxDictSize,
                    (U32)nbDmers, ratio);
}
