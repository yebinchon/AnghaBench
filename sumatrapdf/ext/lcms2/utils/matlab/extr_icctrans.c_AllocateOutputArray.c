
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mxArray ;


 int memmove (int*,int const*,int) ;

 int * mxDuplicateArray (int const*) ;
 int mxFree (int*) ;
 int mxGetClassID (int const*) ;
 int* mxGetDimensions (int const*) ;
 int mxGetNumberOfDimensions (int const*) ;
 int mxGetPr (int *) ;


 scalar_t__ mxMalloc (int) ;
 int mxRealloc (int ,int) ;
 int mxSetDimensions (int *,int*,int) ;
 int mxSetPr (int *,int ) ;



__attribute__((used)) static
mxArray* AllocateOutputArray(const mxArray* In, int OutputChannels)
{

 mxArray* Out = mxDuplicateArray(In);
 int nDimensions = mxGetNumberOfDimensions(In);
 const int* Dimensions = mxGetDimensions(In);
 int InputChannels = Dimensions[nDimensions-1];




 if (InputChannels != OutputChannels) {


  int i, NewSize;
  int *ModifiedDimensions = (int*) mxMalloc(nDimensions * sizeof(int));


  memmove(ModifiedDimensions, Dimensions, nDimensions * sizeof(int));
  ModifiedDimensions[nDimensions - 1] = OutputChannels;

  switch (mxGetClassID(In)) {

  case 130: NewSize = sizeof(char); break;
  case 128: NewSize = sizeof(unsigned char); break;
  case 131: NewSize = sizeof(short); break;
  case 129: NewSize = sizeof(unsigned short); break;

  default:
  case 132: NewSize = sizeof(double); break;
  }



  for (i=0; i < nDimensions; i++)
   NewSize *= ModifiedDimensions[i];


  mxSetDimensions(Out, ModifiedDimensions, nDimensions);
  mxFree(ModifiedDimensions);

  mxSetPr(Out, mxRealloc(mxGetPr(Out), NewSize));

 }


 return Out;
}
