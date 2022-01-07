
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mxArray ;


 int FatalError (char*,int) ;
 int* mxGetDimensions (int const*) ;
 int mxGetNumberOfDimensions (int const*) ;

__attribute__((used)) static
size_t GetNumberOfPixels(const mxArray* In)
{
 int nDimensions = mxGetNumberOfDimensions(In);
 const int *Dimensions = mxGetDimensions(In);

 switch (nDimensions) {

  case 1: return 1;
  case 2: return Dimensions[0];
  case 3: return Dimensions[0]*Dimensions[1];

  default:
   FatalError("Unsupported array of %d dimensions", nDimensions);
   return 0;
 }
}
