; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_add_common.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_add_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Playlist should be a table.\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vlclua_playlist_add_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_add_common(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @vlclua_get_this(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @vlclua_get_playlist_internal(i32* %14)
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_istable(i32* %16, i32 -1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @msg_Warn(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @vlc_playlist_Lock(i32* %25)
  br label %27

27:                                               ; preds = %61, %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @lua_next(i32* %28, i32 -2)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @vlclua_read_input_item(i32* %32, i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @vlc_playlist_AppendOne(i32* %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @VLC_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @vlc_playlist_Count(i32* %50)
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %11, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @vlc_playlist_PlayAt(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @input_item_Release(i32* %59)
  br label %61

61:                                               ; preds = %58, %31
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @lua_pop(i32* %62, i32 1)
  br label %27

64:                                               ; preds = %27
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @vlc_playlist_Unlock(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @lua_pushinteger(i32* %67, i32 %68)
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32* @vlclua_read_input_item(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_AppendOne(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @vlc_playlist_PlayAt(i32*, i64) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
