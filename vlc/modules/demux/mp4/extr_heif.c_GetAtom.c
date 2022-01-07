
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int const MP4_Box_t ;


 int const* NextAtom (int const*,int ,char const*,int const*) ;

__attribute__((used)) static MP4_Box_t * GetAtom( MP4_Box_t *p_root, MP4_Box_t *p_atom,
                            vlc_fourcc_t i_type, const char *psz_path,
                            bool(*pf_match)(const MP4_Box_t *, void *),
                            void *priv )
{
    while( (p_atom = NextAtom( p_root, i_type, psz_path, p_atom )) )
    {
        if( pf_match( p_atom, priv ) )
            return p_atom;
    }
    return ((void*)0);
}
