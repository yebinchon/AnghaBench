; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_push_playlist_item.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_playlist.c_push_playlist_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @push_playlist_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_playlist_item(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_newtable(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @vlc_playlist_item_GetId(i32* %10)
  %12 = call i32 @lua_pushinteger(i32* %9, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_setfield(i32* %13, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_5__* @vlc_playlist_item_GetMedia(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = call i8* @input_item_GetTitleFbName(%struct.TYPE_5__* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @lua_pushstring(i32* %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_setfield(i32* %24, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @lua_pushstring(i32* %26, i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushnumber(i32* %38, i32 -1)
  br label %47

40:                                               ; preds = %2
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @secf_from_vlc_tick(i64 %44)
  %46 = call i32 @lua_pushnumber(i32* %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_setfield(i32* %48, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = call i32 @luaopen_input_item(i32* %50, %struct.TYPE_5__* %51)
  ret void
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @vlc_playlist_item_GetId(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @vlc_playlist_item_GetMedia(i32*) #1

declare dso_local i8* @input_item_GetTitleFbName(%struct.TYPE_5__*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @secf_from_vlc_tick(i64) #1

declare dso_local i32 @luaopen_input_item(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
