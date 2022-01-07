
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int Actors ;
 int Album ;
 int ArtURL ;
 int Artist ;
 int Copyright ;
 int Date ;
 int Description ;
 int Director ;
 int EncodedBy ;
 int Episode ;
 int Genre ;
 int Language ;
 int NowPlaying ;
 int Publisher ;
 int Rating ;
 int Season ;
 int Setting ;
 int ShowName ;
 int TRY_META (char*,int ) ;
 int Title ;
 int TrackID ;
 int TrackNum ;
 int URL ;

void vlclua_read_meta_data( vlc_object_t *p_this, lua_State *L,
                            input_item_t *p_input )
{
    lua_getfield( L, -1, "title" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Title" ": %s", psz_value ); input_item_SetTitle ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "artist" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Artist" ": %s", psz_value ); input_item_SetArtist ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "genre" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Genre" ": %s", psz_value ); input_item_SetGenre ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "copyright" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Copyright" ": %s", psz_value ); input_item_SetCopyright ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "album" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Album" ": %s", psz_value ); input_item_SetAlbum ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "tracknum" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "TrackNum" ": %s", psz_value ); input_item_SetTrackNum ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "description" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Description" ": %s", psz_value ); input_item_SetDescription ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "rating" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Rating" ": %s", psz_value ); input_item_SetRating ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "date" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Date" ": %s", psz_value ); input_item_SetDate ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "setting" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Setting" ": %s", psz_value ); input_item_SetSetting ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "url" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "URL" ": %s", psz_value ); input_item_SetURL ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "language" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Language" ": %s", psz_value ); input_item_SetLanguage ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "nowplaying" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "NowPlaying" ": %s", psz_value ); input_item_SetNowPlaying ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "publisher" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Publisher" ": %s", psz_value ); input_item_SetPublisher ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "encodedby" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "EncodedBy" ": %s", psz_value ); input_item_SetEncodedBy ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "arturl" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "ArtURL" ": %s", psz_value ); input_item_SetArtURL ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "trackid" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "TrackID" ": %s", psz_value ); input_item_SetTrackID ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "director" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Director" ": %s", psz_value ); input_item_SetDirector ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "season" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Season" ": %s", psz_value ); input_item_SetSeason ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "episode" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Episode" ": %s", psz_value ); input_item_SetEpisode ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "show_name" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "ShowName" ": %s", psz_value ); input_item_SetShowName ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
    lua_getfield( L, -1, "actors" ); if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) ) { char *psz_value = strdup( lua_tostring( L, -1 ) ); EnsureUTF8( psz_value ); msg_Dbg( p_this, "Actors" ": %s", psz_value ); input_item_SetActors ( p_input, psz_value ); free( psz_value ); } lua_pop( L, 1 );;
}
