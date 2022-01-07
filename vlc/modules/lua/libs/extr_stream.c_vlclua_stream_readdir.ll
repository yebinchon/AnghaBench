; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_readdir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_stream.c_vlclua_stream_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c":ignore-filetype=\22%s\22\00", align 1
@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ignore-filetypes=\22\22\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"show-hiddenfiles\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_stream_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_stream_readdir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_checkudata(i32* %11, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = inttoptr i64 %12 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @lua_tostring(i32* %18, i32 2)
  store i8* %19, i8** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_gettop(i32* %20)
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_toboolean(i32* %24, i32 3)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %29 = icmp ne %struct.TYPE_9__** %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %27
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @vlclua_error(i32* %35)
  store i32 %36, i32* %2, align 4
  br label %135

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @vlclua_error(i32* %44)
  store i32 %45, i32* %2, align 4
  br label %135

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @input_item_New(i32 %50, i32* null)
  store i32* %51, i32** %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @input_item_Release(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @vlclua_error(i32* %61)
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %67 = call i32 @input_item_AddOption(i32* %64, i8* %65, i32 %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  br label %74

70:                                               ; preds = %46
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %73 = call i32 @input_item_AddOption(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %80 = call i32 @input_item_AddOption(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32*, i32** %7, align 8
  %83 = call %struct.TYPE_10__* @input_item_node_Create(i32* %82)
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %9, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @input_item_Release(i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = icmp ne %struct.TYPE_10__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @vlclua_error(i32* %89)
  store i32 %90, i32* %2, align 4
  br label %135

91:                                               ; preds = %81
  %92 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = call i64 @vlc_stream_ReadDir(%struct.TYPE_9__* %93, %struct.TYPE_10__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = call i32 @input_item_node_Delete(%struct.TYPE_10__* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @vlclua_error(i32* %100)
  store i32 %101, i32* %2, align 4
  br label %135

102:                                              ; preds = %91
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_newtable(i32* %103)
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %129, %102
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @lua_pushinteger(i32* %112, i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i64 %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vlclua_input_item_get(i32* %116, i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @lua_settable(i32* %127, i32 -3)
  br label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %105

132:                                              ; preds = %105
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = call i32 @input_item_node_Delete(%struct.TYPE_10__* %133)
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %97, %88, %58, %43, %34
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @vlclua_error(i32*) #1

declare dso_local i32* @input_item_New(i32, i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @input_item_AddOption(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_10__* @input_item_node_Create(i32*) #1

declare dso_local i64 @vlc_stream_ReadDir(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @input_item_node_Delete(%struct.TYPE_10__*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @vlclua_input_item_get(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
