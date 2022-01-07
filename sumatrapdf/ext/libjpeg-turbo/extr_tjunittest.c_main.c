
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TJSAMP_420 ;
 int TJSAMP_422 ;
 int TJSAMP_440 ;
 int TJSAMP_444 ;
 int TJSAMP_GRAY ;
 int YUVDECODE ;
 int YUVENCODE ;
 int _3byteFormats ;
 int _4byteFormats ;
 int _onlyGray ;
 int _onlyRGB ;
 int alloc ;
 int bufSizeTest () ;
 int doTest (int,int,int ,int,int ,char*) ;
 int exitStatus ;
 int printf (char*) ;
 int srand (unsigned int) ;
 int strcasecmp (char*,char*) ;
 int strncasecmp (char*,char*,int) ;
 scalar_t__ time (int *) ;
 int usage (char*) ;
 int yuv ;

int main(int argc, char *argv[])
{
 int doyuv=0, i;



 if(argc>1)
 {
  for(i=1; i<argc; i++)
  {
   if(!strcasecmp(argv[i], "-yuv")) doyuv=1;
   if(!strcasecmp(argv[i], "-alloc")) alloc=1;
   if(!strncasecmp(argv[i], "-h", 2) || !strcasecmp(argv[i], "-?"))
    usage(argv[0]);
  }
 }
 if(alloc) printf("Testing automatic buffer allocation\n");
 if(doyuv) {yuv=YUVENCODE; alloc=0;}
 doTest(35, 39, _3byteFormats, 2, TJSAMP_444, "test");
 doTest(39, 41, _4byteFormats, 4, TJSAMP_444, "test");
 doTest(41, 35, _3byteFormats, 2, TJSAMP_422, "test");
 doTest(35, 39, _4byteFormats, 4, TJSAMP_422, "test");
 doTest(39, 41, _3byteFormats, 2, TJSAMP_420, "test");
 doTest(41, 35, _4byteFormats, 4, TJSAMP_420, "test");
 doTest(35, 39, _3byteFormats, 2, TJSAMP_440, "test");
 doTest(39, 41, _4byteFormats, 4, TJSAMP_440, "test");
 doTest(35, 39, _onlyGray, 1, TJSAMP_GRAY, "test");
 doTest(39, 41, _3byteFormats, 2, TJSAMP_GRAY, "test");
 doTest(41, 35, _4byteFormats, 4, TJSAMP_GRAY, "test");
 bufSizeTest();
 if(doyuv)
 {
  printf("\n--------------------\n\n");
  yuv=YUVDECODE;
  doTest(48, 48, _onlyRGB, 1, TJSAMP_444, "test_yuv0");
  doTest(35, 39, _onlyRGB, 1, TJSAMP_444, "test_yuv1");
  doTest(48, 48, _onlyRGB, 1, TJSAMP_422, "test_yuv0");
  doTest(39, 41, _onlyRGB, 1, TJSAMP_422, "test_yuv1");
  doTest(48, 48, _onlyRGB, 1, TJSAMP_420, "test_yuv0");
  doTest(41, 35, _onlyRGB, 1, TJSAMP_420, "test_yuv1");
  doTest(48, 48, _onlyRGB, 1, TJSAMP_440, "test_yuv0");
  doTest(35, 39, _onlyRGB, 1, TJSAMP_440, "test_yuv1");
  doTest(48, 48, _onlyRGB, 1, TJSAMP_GRAY, "test_yuv0");
  doTest(35, 39, _onlyRGB, 1, TJSAMP_GRAY, "test_yuv1");
  doTest(48, 48, _onlyGray, 1, TJSAMP_GRAY, "test_yuv0");
  doTest(39, 41, _onlyGray, 1, TJSAMP_GRAY, "test_yuv1");
 }

 return exitStatus;
}
