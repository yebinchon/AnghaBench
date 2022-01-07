
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int VdpChromaType ;


 int VDP_CHROMA_TYPE_420 ;
 int VDP_CHROMA_TYPE_422 ;
 int VDP_CHROMA_TYPE_444 ;




__attribute__((used)) static bool ChromaMatches(VdpChromaType vdp_type, vlc_fourcc_t vlc_chroma)
{
    switch (vlc_chroma)
    {
        case 130:
            return vdp_type == VDP_CHROMA_TYPE_420;
        case 129:
            return vdp_type == VDP_CHROMA_TYPE_422;
        case 128:
            return vdp_type == VDP_CHROMA_TYPE_444;
        default:
            return 0;
    }
}
