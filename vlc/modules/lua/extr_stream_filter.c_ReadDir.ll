; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_stream_filter.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_stream_filter.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.vlclua_playlist* }
%struct.vlclua_playlist = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"vlc\00", align 1
@p_reg_parse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"error running script %s: function %s(): %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@VLC_ENOITEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"script went completely foobar\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Playlist should be a table.\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlclua_playlist*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %11, align 8
  store %struct.vlclua_playlist* %12, %struct.vlclua_playlist** %6, align 8
  %13 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %6, align 8
  %14 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @p_reg_parse, align 4
  %18 = call i32 @luaL_register_namespace(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @lua_getglobal(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @lua_isfunction(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %6, align 8
  %27 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %2
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @lua_pcall(i32* %32, i32 0, i32 1, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %6, align 8
  %38 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @lua_gettop(i32* %41)
  %43 = call i32 @lua_tostring(i32* %40, i32 %42)
  %44 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %45, i32* %3, align 4
  br label %105

46:                                               ; preds = %31
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @lua_gettop(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %53, i32* %3, align 4
  br label %105

54:                                               ; preds = %46
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @lua_istable(i32* %55, i32 -1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %61, i32* %3, align 4
  br label %105

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @lua_pushnil(i32* %63)
  br label %65

65:                                               ; preds = %100, %62
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @lua_next(i32* %66, i32 -2)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = call i32 @VLC_OBJECT(%struct.TYPE_6__* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @vlclua_read_input_item(i32 %71, i32* %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %69
  %77 = load i32*, i32** %8, align 8
  %78 = call i8* @input_item_GetURL(i32* %77)
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @input_item_SetURL(i32* %87, i32* %90)
  br label %92

92:                                               ; preds = %86, %81, %76
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @input_item_node_AppendItem(i32* %95, i32* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @input_item_Release(i32* %98)
  br label %100

100:                                              ; preds = %92, %69
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @lua_pop(i32* %101, i32 1)
  br label %65

103:                                              ; preds = %65
  %104 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %58, %50, %35, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @luaL_register_namespace(i32*, i8*, i32) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32* @vlclua_read_input_item(i32, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_6__*) #1

declare dso_local i8* @input_item_GetURL(i32*) #1

declare dso_local i32 @input_item_SetURL(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
