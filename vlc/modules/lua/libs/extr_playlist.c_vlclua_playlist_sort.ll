; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_sort.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_vlclua_playlist_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_sort_criterion = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid search key.\00", align 1
@VLC_PLAYLIST_SORT_ORDER_DESCENDING = common dso_local global i32 0, align 4
@VLC_PLAYLIST_SORT_ORDER_ASCENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_playlist_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_playlist_sort(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_playlist_sort_criterion, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @vlclua_get_playlist_internal(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checkstring(i32* %10, i32 1)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @vlc_playlist_Lock(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @vlc_playlist_Shuffle(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @vlc_playlist_Unlock(i32* %20)
  %22 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %22, i32* %6, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %7, i32 0, i32 1
  %26 = call i32 @vlc_sort_key_from_string(i8* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @luaL_optboolean(i32* %32, i32 2, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @VLC_PLAYLIST_SORT_ORDER_DESCENDING, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @VLC_PLAYLIST_SORT_ORDER_ASCENDING, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @vlc_playlist_Lock(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @vlc_playlist_Sort(i32* %44, %struct.vlc_playlist_sort_criterion* %7, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @vlc_playlist_Unlock(i32* %46)
  br label %48

48:                                               ; preds = %39, %15
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @vlclua_push_ret(i32* %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @vlclua_get_playlist_internal(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_Shuffle(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @vlc_sort_key_from_string(i8*, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_optboolean(i32*, i32, i32) #1

declare dso_local i32 @vlc_playlist_Sort(i32*, %struct.vlc_playlist_sort_criterion*, i32) #1

declare dso_local i32 @vlclua_push_ret(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
