
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int TIFF ;


 int ChanCountFromPixelType (int) ;
 int EXTRASAMPLE_UNASSALPHA ;
 int FatalError (char*) ;
 int INKSET_CMYK ;
 int PHOTOMETRIC_CIELAB ;
 int PHOTOMETRIC_MINISBLACK ;
 int PHOTOMETRIC_RGB ;
 int PHOTOMETRIC_SEPARATED ;
 int SAMPLEFORMAT_IEEEFP ;
 int StoreAsAlpha ;
 int TIFFSetField (int *,int ,int,...) ;
 int TIFFTAG_BITSPERSAMPLE ;
 int TIFFTAG_EXTRASAMPLES ;
 int TIFFTAG_INKSET ;
 int TIFFTAG_NUMBEROFINKS ;
 int TIFFTAG_PHOTOMETRIC ;
 int TIFFTAG_SAMPLEFORMAT ;
 int TIFFTAG_SAMPLESPERPIXEL ;
 int Width ;

__attribute__((used)) static
void WriteOutputTags(TIFF *out, int Colorspace, int BytesPerSample)
{
    int BitsPerSample = (8 * BytesPerSample);
    int nChannels = ChanCountFromPixelType(Colorspace);

    uint16 Extra[] = { EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA,
                       EXTRASAMPLE_UNASSALPHA
    };


  switch (Colorspace) {

  case 144:
      TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_MINISBLACK);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 1);
      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;

  case 128:
      TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_RGB);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 3);
      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;

  case 146:
      TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_SEPARATED);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 3);
      TIFFSetField(out, TIFFTAG_INKSET, 2);
      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;

  case 145:
      TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_SEPARATED);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 4);
      TIFFSetField(out, TIFFTAG_INKSET, INKSET_CMYK);
      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;

  case 143:
      if (BitsPerSample == 16)
          TIFFSetField(out, TIFFTAG_PHOTOMETRIC, 9);
      else
          TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_CIELAB);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 3);
      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;



  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
  case 137:

      TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_SEPARATED);
      TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, nChannels);

      if (StoreAsAlpha && nChannels >= 4) {

          TIFFSetField(out, TIFFTAG_EXTRASAMPLES, nChannels - 4, Extra);
          TIFFSetField(out, TIFFTAG_INKSET, 1);
          TIFFSetField(out, TIFFTAG_NUMBEROFINKS, 4);
      }
      else {
          TIFFSetField(out, TIFFTAG_INKSET, 2);
          TIFFSetField(out, TIFFTAG_NUMBEROFINKS, nChannels);
      }

      TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, BitsPerSample);
      break;


  default:
      FatalError("Unsupported output colorspace");
    }

  if (Width == 32)
      TIFFSetField(out, TIFFTAG_SAMPLEFORMAT, SAMPLEFORMAT_IEEEFP);
}
