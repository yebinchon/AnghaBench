; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@.str = private unnamed_addr constant [28 x i8] c"Error loading script %s: %s\00", align 1
@FETCHER_SCOPE_NETWORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"descriptor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@FETCHER_SCOPE_LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"skipping script (unmatched scope) %s\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Error while running script %s, function %s() not found\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Error while running script %s, function %s(): %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*, %struct.TYPE_4__*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32* %0, i8* %1, i32* %2, i8* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @lua_pushnil(i32* %14)
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @lua_setglobal(i32* %16, i8* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @vlclua_dofile(i32* %19, i32* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @lua_gettop(i32* %28)
  %30 = call i32 @lua_tostring(i32* %27, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 (i32*, i8*, i8*, i8*, ...) @msg_Warn(i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %32)
  br label %116

34:                                               ; preds = %5
  %35 = load i32, i32* @FETCHER_SCOPE_NETWORK, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @lua_getglobal(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @lua_gettop(i32* %39)
  %41 = call i64 @lua_isfunction(i32* %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @lua_pcall(i32* %44, i32 0, i32 1, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @lua_getfield(i32* %48, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @luaL_strdupornull(i32* %50, i32 -1)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @FETCHER_SCOPE_LOCAL, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %58, %54, %47
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @lua_pop(i32* %63, i32 1)
  br label %65

65:                                               ; preds = %60, %43, %34
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @lua_pop(i32* %66, i32 1)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.TYPE_4__*, i32)* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 %78(%struct.TYPE_4__* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @msg_Dbg(i32* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %116

87:                                               ; preds = %75, %70, %65
  %88 = load i32*, i32** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @lua_getglobal(i32* %88, i8* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @lua_gettop(i32* %92)
  %94 = call i64 @lua_isfunction(i32* %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (i32*, i8*, i8*, i8*, ...) @msg_Warn(i32* %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %98, i8* %99)
  br label %116

101:                                              ; preds = %87
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @lua_pcall(i32* %102, i32 0, i32 1, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @lua_gettop(i32* %110)
  %112 = call i32 @lua_tostring(i32* %109, i32 %111)
  %113 = call i32 (i32*, i8*, i8*, i8*, ...) @msg_Warn(i32* %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %107, i8* %108, i32 %112)
  br label %116

114:                                              ; preds = %101
  %115 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %115, i32* %6, align 4
  br label %120

116:                                              ; preds = %105, %96, %83, %24
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @lua_pop(i32* %117, i32 1)
  %119 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %114
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i64 @vlclua_dofile(i32*, i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i8* @luaL_strdupornull(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
