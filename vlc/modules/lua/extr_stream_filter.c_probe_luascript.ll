; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_stream_filter.c_probe_luascript.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_stream_filter.c_probe_luascript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vlclua_playlist* }
%struct.vlclua_playlist = type { i32*, i32, i32*, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vlc\00", align 1
@p_reg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"error setting the module search path for %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"error loading script %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"error running script %s: function %s(): %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Lua playlist script %s's probe() function was successful\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @probe_luascript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_luascript(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.vlclua_playlist*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %14, align 8
  store %struct.vlclua_playlist* %15, %struct.vlclua_playlist** %9, align 8
  %16 = call i32* (...) @luaL_newstate()
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %152

21:                                               ; preds = %3
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %24 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @luaL_openlibs(i32* %25)
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = call i32 @vlclua_set_this(i32* %27, %struct.TYPE_6__* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @p_reg, align 4
  %32 = call i32 @luaL_register_namespace(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @luaopen_msg(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @luaopen_strings(i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @luaopen_stream(i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @luaopen_variables(i32* %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @luaopen_xml(i32* %41)
  %43 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %44 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %50 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @lua_pushstring(i32* %48, i32* %51)
  br label %56

53:                                               ; preds = %21
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @lua_pushnil(i32* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @lua_setfield(i32* %57, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %60 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %66 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @lua_pushstring(i32* %64, i32* %67)
  br label %72

69:                                               ; preds = %56
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @lua_pushnil(i32* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @lua_pop(i32* %75, i32 1)
  %77 = load i32*, i32** %10, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @vlclua_add_modules_path(i32* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %144

85:                                               ; preds = %72
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = call i32 @VLC_OBJECT(%struct.TYPE_6__* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @vlclua_dofile(i32 %87, i32* %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @lua_gettop(i32* %96)
  %98 = call i8* @lua_tostring(i32* %95, i64 %97)
  %99 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %98)
  br label %144

100:                                              ; preds = %85
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @lua_getglobal(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @lua_isfunction(i32* %103, i32 -1)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %144

110:                                              ; preds = %100
  %111 = load i32*, i32** %10, align 8
  %112 = call i64 @lua_pcall(i32* %111, i32 0, i32 1, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i64 @lua_gettop(i32* %118)
  %120 = call i8* @lua_tostring(i32* %117, i64 %119)
  %121 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  br label %144

122:                                              ; preds = %110
  %123 = load i32*, i32** %10, align 8
  %124 = call i64 @lua_gettop(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = load i32*, i32** %10, align 8
  %128 = call i64 @lua_toboolean(i32* %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @msg_Dbg(%struct.TYPE_6__* %131, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @lua_pop(i32* %134, i32 1)
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @strdup(i8* %136)
  %138 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %139 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %140, i32* %4, align 4
  br label %152

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %122
  %143 = load i32*, i32** %7, align 8
  br label %144

144:                                              ; preds = %142, %114, %106, %92, %81
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @lua_pop(i32* %145, i32 1)
  %147 = load %struct.vlclua_playlist*, %struct.vlclua_playlist** %9, align 8
  %148 = getelementptr inbounds %struct.vlclua_playlist, %struct.vlclua_playlist* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @lua_close(i32* %149)
  %151 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %144, %130, %19
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @vlclua_set_this(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @luaL_register_namespace(i32*, i8*, i32) #1

declare dso_local i32 @luaopen_msg(i32*) #1

declare dso_local i32 @luaopen_strings(i32*) #1

declare dso_local i32 @luaopen_stream(i32*) #1

declare dso_local i32 @luaopen_variables(i32*) #1

declare dso_local i32 @luaopen_xml(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @vlclua_add_modules_path(i32*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_6__*, i8*, i8*, ...) #1

declare dso_local i64 @vlclua_dofile(i32, i32*, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_6__*) #1

declare dso_local i8* @lua_tostring(i32*, i64) #1

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
