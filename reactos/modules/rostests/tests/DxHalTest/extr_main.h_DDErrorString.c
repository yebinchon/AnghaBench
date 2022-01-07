
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
char* DDErrorString (HRESULT hr)
{
 switch (hr)
 {
  case 128: return "DD_OK";
  case 228: return "DDERR_ALREADYINITIALIZED";
  case 226: return "DDERR_CANNOTATTACHSURFACE";
  case 225: return "DDERR_CANNOTDETACHSURFACE";
  case 217: return "DDERR_CURRENTLYNOTAVAIL";
  case 214: return "DDERR_EXCEPTION";
  case 212: return "DDERR_GENERIC";
  case 211: return "DDERR_HEIGHTALIGN";
  case 207: return "DDERR_INCOMPATIBLEPRIMARY";
  case 206: return "DDERR_INVALIDCAPS";
  case 205: return "DDERR_INVALIDCLIPLIST";
  case 203: return "DDERR_INVALIDMODE";
  case 202: return "DDERR_INVALIDOBJECT";
  case 201: return "DDERR_INVALIDPARAMS";
  case 200: return "DDERR_INVALIDPIXELFORMAT";
  case 198: return "DDERR_INVALIDRECT";
  case 196: return "DDERR_LOCKEDSURFACES";
  case 195: return "DDERR_NO3D";
  case 194: return "DDERR_NOALPHAHW";
  case 192: return "DDERR_NOCLIPLIST";
  case 190: return "DDERR_NOCOLORCONVHW";
  case 187: return "DDERR_NOCOOPERATIVELEVELSET";
  case 189: return "DDERR_NOCOLORKEY";
  case 188: return "DDERR_NOCOLORKEYHW";
  case 183: return "DDERR_NODIRECTDRAWSUPPORT";
  case 181: return "DDERR_NOEXCLUSIVEMODE";
  case 180: return "DDERR_NOFLIPHW";
  case 179: return "DDERR_NOGDI";
  case 176: return "DDERR_NOMIRRORHW";
  case 162: return "DDERR_NOTFOUND";
  case 174: return "DDERR_NOOVERLAYHW";
  case 171: return "DDERR_NORASTEROPHW";
  case 170: return "DDERR_NOROTATIONHW";
  case 169: return "DDERR_NOSTRETCHHW";
  case 168: return "DDERR_NOT4BITCOLOR";
  case 167: return "DDERR_NOT4BITCOLORINDEX";
  case 166: return "DDERR_NOT8BITCOLOR";
  case 164: return "DDERR_NOTEXTUREHW";
  case 157: return "DDERR_NOVSYNCHW";
  case 156: return "DDERR_NOZBUFFERHW";
  case 155: return "DDERR_NOZOVERLAYHW";
  case 154: return "DDERR_OUTOFCAPS";
  case 153: return "DDERR_OUTOFMEMORY";
  case 152: return "DDERR_OUTOFVIDEOMEMORY";
  case 151: return "DDERR_OVERLAYCANTCLIP";
  case 150: return "DDERR_OVERLAYCOLORKEYONLYONEACTIVE";
  case 148: return "DDERR_PALETTEBUSY";
  case 218: return "DDERR_COLORKEYNOTSET";
  case 145: return "DDERR_SURFACEALREADYATTACHED";
  case 144: return "DDERR_SURFACEALREADYDEPENDENT";
  case 143: return "DDERR_SURFACEBUSY";
  case 222: return "DDERR_CANTLOCKSURFACE";
  case 142: return "DDERR_SURFACEISOBSCURED";
  case 141: return "DDERR_SURFACELOST";
  case 140: return "DDERR_SURFACENOTATTACHED";
  case 139: return "DDERR_TOOBIGHEIGHT";
  case 138: return "DDERR_TOOBIGSIZE";
  case 137: return "DDERR_TOOBIGWIDTH";
  case 136: return "DDERR_UNSUPPORTED";
  case 135: return "DDERR_UNSUPPORTEDFORMAT";
  case 134: return "DDERR_UNSUPPORTEDMASK";
  case 132: return "DDERR_VERTICALBLANKINPROGRESS";
  case 131: return "DDERR_WASSTILLDRAWING";
  case 129: return "DDERR_XALIGN";
  case 204: return "DDERR_INVALIDDIRECTDRAWGUID";
  case 215: return "DDERR_DIRECTDRAWALREADYCREATED";
  case 184: return "DDERR_NODIRECTDRAWHW";
  case 147: return "DDERR_PRIMARYSURFACEALREADYEXISTS";
  case 182: return "DDERR_NOEMULATION";
  case 146: return "DDERR_REGIONTOOSMALL";
  case 219: return "DDERR_CLIPPERISUSINGHWND";
  case 191: return "DDERR_NOCLIPPERATTACHED";
  case 178: return "DDERR_NOHWND";
  case 209: return "DDERR_HWNDSUBCLASSED";
  case 210: return "DDERR_HWNDALREADYSET";
  case 173: return "DDERR_NOPALETTEATTACHED";
  case 172: return "DDERR_NOPALETTEHW";
  case 227: return "DDERR_BLTFASTCANTCLIP";
  case 193: return "DDERR_NOBLTHW";
  case 185: return "DDERR_NODDROPSHW";
  case 149: return "DDERR_OVERLAYNOTVISIBLE";
  case 175: return "DDERR_NOOVERLAYDEST";
  case 199: return "DDERR_INVALIDPOSITION";
  case 165: return "DDERR_NOTAOVERLAYSURFACE";
  case 213: return "DDERR_EXCLUSIVEMODEALREADYSET";
  case 163: return "DDERR_NOTFLIPPABLE";
  case 223: return "DDERR_CANTDUPLICATE";
  case 160: return "DDERR_NOTLOCKED";
  case 224: return "DDERR_CANTCREATEDC";
  case 186: return "DDERR_NODC";
  case 130: return "DDERR_WRONGMODE";
  case 208: return "DDERR_IMPLICITLYCREATED";
  case 158: return "DDERR_NOTPALETTIZED";
  case 133: return "DDERR_UNSUPPORTEDMODE";
  case 177: return "DDERR_NOMIPMAPHW";
  case 197: return "DDERR_INVALIDSURFACETYPE";
  case 216: return "DDERR_DCALREADYCREATED";
  case 221: return "DDERR_CANTPAGELOCK";
  case 220: return "DDERR_CANTPAGEUNLOCK";
  case 159: return "DDERR_NOTPAGELOCKED";
  case 161: return "DDERR_NOTINITIALIZED";
 }

 return "Unknown Error ";
}
