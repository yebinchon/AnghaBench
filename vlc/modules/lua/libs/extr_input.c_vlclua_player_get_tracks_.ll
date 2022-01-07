; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_player_get_tracks_.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_player_get_tracks_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vlclua_player_get_tracks_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_player_get_tracks_(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_player_track*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @vlclua_get_player_internal(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @vlc_player_Lock(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @vlc_player_GetTrackCount(i32* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @lua_createtable(i32* %16, i64 %17, i32 0)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %24, i32 %25, i64 %26)
  store %struct.vlc_player_track* %27, %struct.vlc_player_track** %8, align 8
  %28 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %29 = icmp ne %struct.vlc_player_track* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %60

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %36 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vlc_es_id_GetInputId(i32 %37)
  %39 = call i32 @lua_pushinteger(i32* %34, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_setfield(i32* %40, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %44 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lua_pushstring(i32* %42, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_setfield(i32* %47, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.vlc_player_track*, %struct.vlc_player_track** %8, align 8
  %51 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lua_pushboolean(i32* %49, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_setfield(i32* %54, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  %59 = call i32 @lua_rawseti(i32* %56, i32 -2, i64 %58)
  br label %60

60:                                               ; preds = %31, %30
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %19

63:                                               ; preds = %19
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @vlc_player_Unlock(i32* %64)
  ret i32 1
}

declare dso_local i32* @vlclua_get_player_internal(i32*) #1

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i64, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @vlc_es_id_GetInputId(i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i64) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
