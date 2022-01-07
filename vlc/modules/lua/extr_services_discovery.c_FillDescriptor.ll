; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_FillDescriptor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_FillDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error loading script %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"descriptor\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error getting the descriptor in '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"short_description\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@ppsz_capabilities = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"Services discovery capability '%s' unknown in script '%s'\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_11__*)* @FillDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillDescriptor(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32* (...) @luaL_newstate()
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @vlclua_dofile(i32 %17, i32* %18, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @lua_tostring(i32* %29, i32 -1)
  %31 = call i32 @msg_Err(%struct.TYPE_9__* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30)
  br label %135

32:                                               ; preds = %2
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @lua_getglobal(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @lua_isfunction(i32* %35, i32 -1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @lua_pcall(i32* %39, i32 0, i32 1, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @lua_tostring(i32* %47, i32 -1)
  %49 = call i32 @msg_Warn(%struct.TYPE_9__* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %48)
  br label %135

50:                                               ; preds = %38
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @lua_getfield(i32* %51, i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32*, i32** %7, align 8
  %54 = call i8* @luaL_strdupornull(i32* %53, i32 -1)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @lua_getfield(i32* %59, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @luaL_strdupornull(i32* %61, i32 -1)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @lua_pop(i32* %65, i32 1)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @lua_getfield(i32* %67, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @luaL_strdupornull(i32* %69, i32 -1)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @lua_pop(i32* %73, i32 1)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @lua_getfield(i32* %75, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @lua_istable(i32* %79, i32 -1)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %50
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @lua_pushnil(i32* %83)
  br label %85

85:                                               ; preds = %129, %82
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @lua_next(i32* %86, i32 -2)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = call i8* @luaL_checkstring(i32* %90, i32 -1)
  store i8* %91, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %92 = load i8**, i8*** @ppsz_capabilities, align 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %10, align 8
  br label %94

94:                                               ; preds = %110, %89
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 1, %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %117

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load i8**, i8*** @ppsz_capabilities, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %10, align 8
  br label %94

117:                                              ; preds = %102, %94
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @lua_pop(i32* %118, i32 1)
  %120 = load i8*, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @msg_Warn(%struct.TYPE_9__* %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* %124, i8* %127)
  br label %129

129:                                              ; preds = %122, %117
  br label %85

130:                                              ; preds = %85
  br label %131

131:                                              ; preds = %130, %50
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @lua_pop(i32* %132, i32 1)
  %134 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %42, %24
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @lua_close(i32* %136)
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i64 @vlclua_dofile(i32, i32*, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, i8*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*, i8*, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i8* @luaL_strdupornull(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
