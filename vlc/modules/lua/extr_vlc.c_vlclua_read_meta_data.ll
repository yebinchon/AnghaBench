; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_read_meta_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_read_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Title: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"artist\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Artist: %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Genre: %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Copyright: %s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"album\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Album: %s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"tracknum\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TrackNum: %s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Description: %s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Rating: %s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Date: %s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Setting: %s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"URL: %s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Language: %s\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"nowplaying\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"NowPlaying: %s\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Publisher: %s\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"encodedby\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"EncodedBy: %s\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"arturl\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"ArtURL: %s\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"trackid\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"TrackID: %s\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"director\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Director: %s\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"season\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Season: %s\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"episode\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Episode: %s\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"show_name\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"ShowName: %s\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"actors\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Actors: %s\00", align 1
@Actors = common dso_local global i32 0, align 4
@Album = common dso_local global i32 0, align 4
@ArtURL = common dso_local global i32 0, align 4
@Artist = common dso_local global i32 0, align 4
@Copyright = common dso_local global i32 0, align 4
@Date = common dso_local global i32 0, align 4
@Description = common dso_local global i32 0, align 4
@Director = common dso_local global i32 0, align 4
@EncodedBy = common dso_local global i32 0, align 4
@Episode = common dso_local global i32 0, align 4
@Genre = common dso_local global i32 0, align 4
@Language = common dso_local global i32 0, align 4
@NowPlaying = common dso_local global i32 0, align 4
@Publisher = common dso_local global i32 0, align 4
@Rating = common dso_local global i32 0, align 4
@Season = common dso_local global i32 0, align 4
@Setting = common dso_local global i32 0, align 4
@ShowName = common dso_local global i32 0, align 4
@Title = common dso_local global i32 0, align 4
@TrackID = common dso_local global i32 0, align 4
@TrackNum = common dso_local global i32 0, align 4
@URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlclua_read_meta_data(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %29, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %31, i32 -1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %3
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %35, i32 -1)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %42, i32 -1)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetTitle to i32 (i32*, i8*, ...)*)(i32* %52, i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %55)
  br label %57

57:                                               ; preds = %41, %34, %3
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %58, i32 1)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %60, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %62, i32 -1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %57
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %66, i32 -1)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %73, i32 -1)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i8* @strdup(i8* %76)
  store i8* %77, i8** %8, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetArtist to i32 (i32*, i8*, ...)*)(i32* %83, i8* %84)
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %86)
  br label %88

88:                                               ; preds = %72, %65, %57
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %89, i32 1)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %91, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %93, i32 -1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %88
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %97, i32 -1)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %104, i32 -1)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i8* @strdup(i8* %107)
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetGenre to i32 (i32*, i8*, ...)*)(i32* %114, i8* %115)
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %117)
  br label %119

119:                                              ; preds = %103, %96, %88
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %120, i32 1)
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %122, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %124, i32 -1)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %119
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %128, i32 -1)
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %127
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %135, i32 -1)
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i8* @strdup(i8* %138)
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %6, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetCopyright to i32 (i32*, i8*, ...)*)(i32* %145, i8* %146)
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %148)
  br label %150

150:                                              ; preds = %134, %127, %119
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %151, i32 1)
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %153, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %155, i32 -1)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %150
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %159, i32 -1)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %158
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %166, i32 -1)
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i8* @strdup(i8* %169)
  store i8* %170, i8** %11, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %171)
  %173 = load i32*, i32** %4, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetAlbum to i32 (i32*, i8*, ...)*)(i32* %176, i8* %177)
  %179 = load i8*, i8** %11, align 8
  %180 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %179)
  br label %181

181:                                              ; preds = %165, %158, %150
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %182, i32 1)
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %184, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %186, i32 -1)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %212

189:                                              ; preds = %181
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %190, i32 -1)
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %189
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %197, i32 -1)
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = call i8* @strdup(i8* %200)
  store i8* %201, i8** %12, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %202)
  %204 = load i32*, i32** %4, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetTrackNum to i32 (i32*, i8*, ...)*)(i32* %207, i8* %208)
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %210)
  br label %212

212:                                              ; preds = %196, %189, %181
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %213, i32 1)
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %215, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %217 = load i32*, i32** %5, align 8
  %218 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %217, i32 -1)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %212
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %221, i32 -1)
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %228, i32 -1)
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = call i8* @strdup(i8* %231)
  store i8* %232, i8** %13, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %233)
  %235 = load i32*, i32** %4, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %236)
  %238 = load i32*, i32** %6, align 8
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetDescription to i32 (i32*, i8*, ...)*)(i32* %238, i8* %239)
  %241 = load i8*, i8** %13, align 8
  %242 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %241)
  br label %243

243:                                              ; preds = %227, %220, %212
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %244, i32 1)
  %246 = load i32*, i32** %5, align 8
  %247 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %246, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %248, i32 -1)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %243
  %252 = load i32*, i32** %5, align 8
  %253 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %252, i32 -1)
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = call i32 @strcmp(i8* %255, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %274

258:                                              ; preds = %251
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %259, i32 -1)
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = call i8* @strdup(i8* %262)
  store i8* %263, i8** %14, align 8
  %264 = load i8*, i8** %14, align 8
  %265 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %264)
  %266 = load i32*, i32** %4, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %267)
  %269 = load i32*, i32** %6, align 8
  %270 = load i8*, i8** %14, align 8
  %271 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetRating to i32 (i32*, i8*, ...)*)(i32* %269, i8* %270)
  %272 = load i8*, i8** %14, align 8
  %273 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %272)
  br label %274

274:                                              ; preds = %258, %251, %243
  %275 = load i32*, i32** %5, align 8
  %276 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %275, i32 1)
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %277, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %279, i32 -1)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %274
  %283 = load i32*, i32** %5, align 8
  %284 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %283, i32 -1)
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i8*
  %287 = call i32 @strcmp(i8* %286, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %282
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %290, i32 -1)
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  %294 = call i8* @strdup(i8* %293)
  store i8* %294, i8** %15, align 8
  %295 = load i8*, i8** %15, align 8
  %296 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %295)
  %297 = load i32*, i32** %4, align 8
  %298 = load i8*, i8** %15, align 8
  %299 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %298)
  %300 = load i32*, i32** %6, align 8
  %301 = load i8*, i8** %15, align 8
  %302 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetDate to i32 (i32*, i8*, ...)*)(i32* %300, i8* %301)
  %303 = load i8*, i8** %15, align 8
  %304 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %303)
  br label %305

305:                                              ; preds = %289, %282, %274
  %306 = load i32*, i32** %5, align 8
  %307 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %306, i32 1)
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %308, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %310 = load i32*, i32** %5, align 8
  %311 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %310, i32 -1)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %305
  %314 = load i32*, i32** %5, align 8
  %315 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %314, i32 -1)
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to i8*
  %318 = call i32 @strcmp(i8* %317, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %313
  %321 = load i32*, i32** %5, align 8
  %322 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %321, i32 -1)
  %323 = sext i32 %322 to i64
  %324 = inttoptr i64 %323 to i8*
  %325 = call i8* @strdup(i8* %324)
  store i8* %325, i8** %16, align 8
  %326 = load i8*, i8** %16, align 8
  %327 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %326)
  %328 = load i32*, i32** %4, align 8
  %329 = load i8*, i8** %16, align 8
  %330 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %329)
  %331 = load i32*, i32** %6, align 8
  %332 = load i8*, i8** %16, align 8
  %333 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetSetting to i32 (i32*, i8*, ...)*)(i32* %331, i8* %332)
  %334 = load i8*, i8** %16, align 8
  %335 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %334)
  br label %336

336:                                              ; preds = %320, %313, %305
  %337 = load i32*, i32** %5, align 8
  %338 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %337, i32 1)
  %339 = load i32*, i32** %5, align 8
  %340 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %339, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %341 = load i32*, i32** %5, align 8
  %342 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %341, i32 -1)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %367

344:                                              ; preds = %336
  %345 = load i32*, i32** %5, align 8
  %346 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %345, i32 -1)
  %347 = sext i32 %346 to i64
  %348 = inttoptr i64 %347 to i8*
  %349 = call i32 @strcmp(i8* %348, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %344
  %352 = load i32*, i32** %5, align 8
  %353 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %352, i32 -1)
  %354 = sext i32 %353 to i64
  %355 = inttoptr i64 %354 to i8*
  %356 = call i8* @strdup(i8* %355)
  store i8* %356, i8** %17, align 8
  %357 = load i8*, i8** %17, align 8
  %358 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %357)
  %359 = load i32*, i32** %4, align 8
  %360 = load i8*, i8** %17, align 8
  %361 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %360)
  %362 = load i32*, i32** %6, align 8
  %363 = load i8*, i8** %17, align 8
  %364 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetURL to i32 (i32*, i8*, ...)*)(i32* %362, i8* %363)
  %365 = load i8*, i8** %17, align 8
  %366 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %365)
  br label %367

367:                                              ; preds = %351, %344, %336
  %368 = load i32*, i32** %5, align 8
  %369 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %368, i32 1)
  %370 = load i32*, i32** %5, align 8
  %371 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %370, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %372 = load i32*, i32** %5, align 8
  %373 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %372, i32 -1)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %398

375:                                              ; preds = %367
  %376 = load i32*, i32** %5, align 8
  %377 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %376, i32 -1)
  %378 = sext i32 %377 to i64
  %379 = inttoptr i64 %378 to i8*
  %380 = call i32 @strcmp(i8* %379, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %398

382:                                              ; preds = %375
  %383 = load i32*, i32** %5, align 8
  %384 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %383, i32 -1)
  %385 = sext i32 %384 to i64
  %386 = inttoptr i64 %385 to i8*
  %387 = call i8* @strdup(i8* %386)
  store i8* %387, i8** %18, align 8
  %388 = load i8*, i8** %18, align 8
  %389 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %388)
  %390 = load i32*, i32** %4, align 8
  %391 = load i8*, i8** %18, align 8
  %392 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %390, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %391)
  %393 = load i32*, i32** %6, align 8
  %394 = load i8*, i8** %18, align 8
  %395 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetLanguage to i32 (i32*, i8*, ...)*)(i32* %393, i8* %394)
  %396 = load i8*, i8** %18, align 8
  %397 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %396)
  br label %398

398:                                              ; preds = %382, %375, %367
  %399 = load i32*, i32** %5, align 8
  %400 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %399, i32 1)
  %401 = load i32*, i32** %5, align 8
  %402 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %401, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %403 = load i32*, i32** %5, align 8
  %404 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %403, i32 -1)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %429

406:                                              ; preds = %398
  %407 = load i32*, i32** %5, align 8
  %408 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %407, i32 -1)
  %409 = sext i32 %408 to i64
  %410 = inttoptr i64 %409 to i8*
  %411 = call i32 @strcmp(i8* %410, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %429

413:                                              ; preds = %406
  %414 = load i32*, i32** %5, align 8
  %415 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %414, i32 -1)
  %416 = sext i32 %415 to i64
  %417 = inttoptr i64 %416 to i8*
  %418 = call i8* @strdup(i8* %417)
  store i8* %418, i8** %19, align 8
  %419 = load i8*, i8** %19, align 8
  %420 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %419)
  %421 = load i32*, i32** %4, align 8
  %422 = load i8*, i8** %19, align 8
  %423 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %421, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %422)
  %424 = load i32*, i32** %6, align 8
  %425 = load i8*, i8** %19, align 8
  %426 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetNowPlaying to i32 (i32*, i8*, ...)*)(i32* %424, i8* %425)
  %427 = load i8*, i8** %19, align 8
  %428 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %427)
  br label %429

429:                                              ; preds = %413, %406, %398
  %430 = load i32*, i32** %5, align 8
  %431 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %430, i32 1)
  %432 = load i32*, i32** %5, align 8
  %433 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %432, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %434 = load i32*, i32** %5, align 8
  %435 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %434, i32 -1)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %460

437:                                              ; preds = %429
  %438 = load i32*, i32** %5, align 8
  %439 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %438, i32 -1)
  %440 = sext i32 %439 to i64
  %441 = inttoptr i64 %440 to i8*
  %442 = call i32 @strcmp(i8* %441, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %437
  %445 = load i32*, i32** %5, align 8
  %446 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %445, i32 -1)
  %447 = sext i32 %446 to i64
  %448 = inttoptr i64 %447 to i8*
  %449 = call i8* @strdup(i8* %448)
  store i8* %449, i8** %20, align 8
  %450 = load i8*, i8** %20, align 8
  %451 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %450)
  %452 = load i32*, i32** %4, align 8
  %453 = load i8*, i8** %20, align 8
  %454 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %452, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %453)
  %455 = load i32*, i32** %6, align 8
  %456 = load i8*, i8** %20, align 8
  %457 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetPublisher to i32 (i32*, i8*, ...)*)(i32* %455, i8* %456)
  %458 = load i8*, i8** %20, align 8
  %459 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %458)
  br label %460

460:                                              ; preds = %444, %437, %429
  %461 = load i32*, i32** %5, align 8
  %462 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %461, i32 1)
  %463 = load i32*, i32** %5, align 8
  %464 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %463, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %465 = load i32*, i32** %5, align 8
  %466 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %465, i32 -1)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %491

468:                                              ; preds = %460
  %469 = load i32*, i32** %5, align 8
  %470 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %469, i32 -1)
  %471 = sext i32 %470 to i64
  %472 = inttoptr i64 %471 to i8*
  %473 = call i32 @strcmp(i8* %472, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %491

475:                                              ; preds = %468
  %476 = load i32*, i32** %5, align 8
  %477 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %476, i32 -1)
  %478 = sext i32 %477 to i64
  %479 = inttoptr i64 %478 to i8*
  %480 = call i8* @strdup(i8* %479)
  store i8* %480, i8** %21, align 8
  %481 = load i8*, i8** %21, align 8
  %482 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %481)
  %483 = load i32*, i32** %4, align 8
  %484 = load i8*, i8** %21, align 8
  %485 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %483, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* %484)
  %486 = load i32*, i32** %6, align 8
  %487 = load i8*, i8** %21, align 8
  %488 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetEncodedBy to i32 (i32*, i8*, ...)*)(i32* %486, i8* %487)
  %489 = load i8*, i8** %21, align 8
  %490 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %489)
  br label %491

491:                                              ; preds = %475, %468, %460
  %492 = load i32*, i32** %5, align 8
  %493 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %492, i32 1)
  %494 = load i32*, i32** %5, align 8
  %495 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %494, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %496 = load i32*, i32** %5, align 8
  %497 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %496, i32 -1)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %522

499:                                              ; preds = %491
  %500 = load i32*, i32** %5, align 8
  %501 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %500, i32 -1)
  %502 = sext i32 %501 to i64
  %503 = inttoptr i64 %502 to i8*
  %504 = call i32 @strcmp(i8* %503, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %522

506:                                              ; preds = %499
  %507 = load i32*, i32** %5, align 8
  %508 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %507, i32 -1)
  %509 = sext i32 %508 to i64
  %510 = inttoptr i64 %509 to i8*
  %511 = call i8* @strdup(i8* %510)
  store i8* %511, i8** %22, align 8
  %512 = load i8*, i8** %22, align 8
  %513 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %512)
  %514 = load i32*, i32** %4, align 8
  %515 = load i8*, i8** %22, align 8
  %516 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %514, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* %515)
  %517 = load i32*, i32** %6, align 8
  %518 = load i8*, i8** %22, align 8
  %519 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetArtURL to i32 (i32*, i8*, ...)*)(i32* %517, i8* %518)
  %520 = load i8*, i8** %22, align 8
  %521 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %520)
  br label %522

522:                                              ; preds = %506, %499, %491
  %523 = load i32*, i32** %5, align 8
  %524 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %523, i32 1)
  %525 = load i32*, i32** %5, align 8
  %526 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %525, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %527 = load i32*, i32** %5, align 8
  %528 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %527, i32 -1)
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %553

530:                                              ; preds = %522
  %531 = load i32*, i32** %5, align 8
  %532 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %531, i32 -1)
  %533 = sext i32 %532 to i64
  %534 = inttoptr i64 %533 to i8*
  %535 = call i32 @strcmp(i8* %534, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %553

537:                                              ; preds = %530
  %538 = load i32*, i32** %5, align 8
  %539 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %538, i32 -1)
  %540 = sext i32 %539 to i64
  %541 = inttoptr i64 %540 to i8*
  %542 = call i8* @strdup(i8* %541)
  store i8* %542, i8** %23, align 8
  %543 = load i8*, i8** %23, align 8
  %544 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %543)
  %545 = load i32*, i32** %4, align 8
  %546 = load i8*, i8** %23, align 8
  %547 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %545, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* %546)
  %548 = load i32*, i32** %6, align 8
  %549 = load i8*, i8** %23, align 8
  %550 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetTrackID to i32 (i32*, i8*, ...)*)(i32* %548, i8* %549)
  %551 = load i8*, i8** %23, align 8
  %552 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %551)
  br label %553

553:                                              ; preds = %537, %530, %522
  %554 = load i32*, i32** %5, align 8
  %555 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %554, i32 1)
  %556 = load i32*, i32** %5, align 8
  %557 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %556, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  %558 = load i32*, i32** %5, align 8
  %559 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %558, i32 -1)
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %584

561:                                              ; preds = %553
  %562 = load i32*, i32** %5, align 8
  %563 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %562, i32 -1)
  %564 = sext i32 %563 to i64
  %565 = inttoptr i64 %564 to i8*
  %566 = call i32 @strcmp(i8* %565, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %584

568:                                              ; preds = %561
  %569 = load i32*, i32** %5, align 8
  %570 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %569, i32 -1)
  %571 = sext i32 %570 to i64
  %572 = inttoptr i64 %571 to i8*
  %573 = call i8* @strdup(i8* %572)
  store i8* %573, i8** %24, align 8
  %574 = load i8*, i8** %24, align 8
  %575 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %574)
  %576 = load i32*, i32** %4, align 8
  %577 = load i8*, i8** %24, align 8
  %578 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %576, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* %577)
  %579 = load i32*, i32** %6, align 8
  %580 = load i8*, i8** %24, align 8
  %581 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetDirector to i32 (i32*, i8*, ...)*)(i32* %579, i8* %580)
  %582 = load i8*, i8** %24, align 8
  %583 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %582)
  br label %584

584:                                              ; preds = %568, %561, %553
  %585 = load i32*, i32** %5, align 8
  %586 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %585, i32 1)
  %587 = load i32*, i32** %5, align 8
  %588 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %587, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %589 = load i32*, i32** %5, align 8
  %590 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %589, i32 -1)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %615

592:                                              ; preds = %584
  %593 = load i32*, i32** %5, align 8
  %594 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %593, i32 -1)
  %595 = sext i32 %594 to i64
  %596 = inttoptr i64 %595 to i8*
  %597 = call i32 @strcmp(i8* %596, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %615

599:                                              ; preds = %592
  %600 = load i32*, i32** %5, align 8
  %601 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %600, i32 -1)
  %602 = sext i32 %601 to i64
  %603 = inttoptr i64 %602 to i8*
  %604 = call i8* @strdup(i8* %603)
  store i8* %604, i8** %25, align 8
  %605 = load i8*, i8** %25, align 8
  %606 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %605)
  %607 = load i32*, i32** %4, align 8
  %608 = load i8*, i8** %25, align 8
  %609 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %607, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %608)
  %610 = load i32*, i32** %6, align 8
  %611 = load i8*, i8** %25, align 8
  %612 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetSeason to i32 (i32*, i8*, ...)*)(i32* %610, i8* %611)
  %613 = load i8*, i8** %25, align 8
  %614 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %613)
  br label %615

615:                                              ; preds = %599, %592, %584
  %616 = load i32*, i32** %5, align 8
  %617 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %616, i32 1)
  %618 = load i32*, i32** %5, align 8
  %619 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %618, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %620 = load i32*, i32** %5, align 8
  %621 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %620, i32 -1)
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %646

623:                                              ; preds = %615
  %624 = load i32*, i32** %5, align 8
  %625 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %624, i32 -1)
  %626 = sext i32 %625 to i64
  %627 = inttoptr i64 %626 to i8*
  %628 = call i32 @strcmp(i8* %627, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %646

630:                                              ; preds = %623
  %631 = load i32*, i32** %5, align 8
  %632 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %631, i32 -1)
  %633 = sext i32 %632 to i64
  %634 = inttoptr i64 %633 to i8*
  %635 = call i8* @strdup(i8* %634)
  store i8* %635, i8** %26, align 8
  %636 = load i8*, i8** %26, align 8
  %637 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %636)
  %638 = load i32*, i32** %4, align 8
  %639 = load i8*, i8** %26, align 8
  %640 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %638, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* %639)
  %641 = load i32*, i32** %6, align 8
  %642 = load i8*, i8** %26, align 8
  %643 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetEpisode to i32 (i32*, i8*, ...)*)(i32* %641, i8* %642)
  %644 = load i8*, i8** %26, align 8
  %645 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %644)
  br label %646

646:                                              ; preds = %630, %623, %615
  %647 = load i32*, i32** %5, align 8
  %648 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %647, i32 1)
  %649 = load i32*, i32** %5, align 8
  %650 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %649, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0))
  %651 = load i32*, i32** %5, align 8
  %652 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %651, i32 -1)
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %677

654:                                              ; preds = %646
  %655 = load i32*, i32** %5, align 8
  %656 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %655, i32 -1)
  %657 = sext i32 %656 to i64
  %658 = inttoptr i64 %657 to i8*
  %659 = call i32 @strcmp(i8* %658, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %677

661:                                              ; preds = %654
  %662 = load i32*, i32** %5, align 8
  %663 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %662, i32 -1)
  %664 = sext i32 %663 to i64
  %665 = inttoptr i64 %664 to i8*
  %666 = call i8* @strdup(i8* %665)
  store i8* %666, i8** %27, align 8
  %667 = load i8*, i8** %27, align 8
  %668 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %667)
  %669 = load i32*, i32** %4, align 8
  %670 = load i8*, i8** %27, align 8
  %671 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %669, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* %670)
  %672 = load i32*, i32** %6, align 8
  %673 = load i8*, i8** %27, align 8
  %674 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetShowName to i32 (i32*, i8*, ...)*)(i32* %672, i8* %673)
  %675 = load i8*, i8** %27, align 8
  %676 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %675)
  br label %677

677:                                              ; preds = %661, %654, %646
  %678 = load i32*, i32** %5, align 8
  %679 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %678, i32 1)
  %680 = load i32*, i32** %5, align 8
  %681 = call i32 (i32*, i32, i8*, ...) bitcast (i32 (...)* @lua_getfield to i32 (i32*, i32, i8*, ...)*)(i32* %680, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %682 = load i32*, i32** %5, align 8
  %683 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_isstring to i32 (i32*, i32, ...)*)(i32* %682, i32 -1)
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %708

685:                                              ; preds = %677
  %686 = load i32*, i32** %5, align 8
  %687 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %686, i32 -1)
  %688 = sext i32 %687 to i64
  %689 = inttoptr i64 %688 to i8*
  %690 = call i32 @strcmp(i8* %689, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %708

692:                                              ; preds = %685
  %693 = load i32*, i32** %5, align 8
  %694 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_tostring to i32 (i32*, i32, ...)*)(i32* %693, i32 -1)
  %695 = sext i32 %694 to i64
  %696 = inttoptr i64 %695 to i8*
  %697 = call i8* @strdup(i8* %696)
  store i8* %697, i8** %28, align 8
  %698 = load i8*, i8** %28, align 8
  %699 = call i32 (i8*, ...) bitcast (i32 (...)* @EnsureUTF8 to i32 (i8*, ...)*)(i8* %698)
  %700 = load i32*, i32** %4, align 8
  %701 = load i8*, i8** %28, align 8
  %702 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @msg_Dbg to i32 (i32*, i8*, i8*, ...)*)(i32* %700, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8* %701)
  %703 = load i32*, i32** %6, align 8
  %704 = load i8*, i8** %28, align 8
  %705 = call i32 (i32*, i8*, ...) bitcast (i32 (...)* @input_item_SetActors to i32 (i32*, i8*, ...)*)(i32* %703, i8* %704)
  %706 = load i8*, i8** %28, align 8
  %707 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %706)
  br label %708

708:                                              ; preds = %692, %685, %677
  %709 = load i32*, i32** %5, align 8
  %710 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @lua_pop to i32 (i32*, i32, ...)*)(i32* %709, i32 1)
  ret void
}

declare dso_local i32 @lua_getfield(...) #1

declare dso_local i32 @lua_isstring(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_tostring(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @EnsureUTF8(...) #1

declare dso_local i32 @msg_Dbg(...) #1

declare dso_local i32 @input_item_SetTitle(...) #1

declare dso_local i32 @free(...) #1

declare dso_local i32 @lua_pop(...) #1

declare dso_local i32 @input_item_SetArtist(...) #1

declare dso_local i32 @input_item_SetGenre(...) #1

declare dso_local i32 @input_item_SetCopyright(...) #1

declare dso_local i32 @input_item_SetAlbum(...) #1

declare dso_local i32 @input_item_SetTrackNum(...) #1

declare dso_local i32 @input_item_SetDescription(...) #1

declare dso_local i32 @input_item_SetRating(...) #1

declare dso_local i32 @input_item_SetDate(...) #1

declare dso_local i32 @input_item_SetSetting(...) #1

declare dso_local i32 @input_item_SetURL(...) #1

declare dso_local i32 @input_item_SetLanguage(...) #1

declare dso_local i32 @input_item_SetNowPlaying(...) #1

declare dso_local i32 @input_item_SetPublisher(...) #1

declare dso_local i32 @input_item_SetEncodedBy(...) #1

declare dso_local i32 @input_item_SetArtURL(...) #1

declare dso_local i32 @input_item_SetTrackID(...) #1

declare dso_local i32 @input_item_SetDirector(...) #1

declare dso_local i32 @input_item_SetSeason(...) #1

declare dso_local i32 @input_item_SetEpisode(...) #1

declare dso_local i32 @input_item_SetShowName(...) #1

declare dso_local i32 @input_item_SetActors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
