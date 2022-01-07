; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_GetLuaState.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_GetLuaState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not create new Lua State\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vlc\00", align 1
@p_reg = common dso_local global i32 0, align 4
@vlclua_extension_deactivate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1
@vlclua_extension_keep_alive = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"keep_alive\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"zip://\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@vlclua_extension_require = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Error while setting the module search path for %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Error loading script %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*)* @GetLuaState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetLuaState(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %168, label %20

20:                                               ; preds = %2
  %21 = call i32* (...) @luaL_newstate()
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @msg_Err(i32* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %170

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @vlclua_set_this(i32* %28, i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @vlc_object_parent(i32* %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @vlc_intf_GetMainPlaylist(i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @vlclua_set_playlist_internal(i32* %36, i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = call i32 @vlclua_extension_set(i32* %39, %struct.TYPE_7__* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @luaL_openlibs(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @p_reg, align 4
  %46 = call i32 @luaL_register_namespace(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @luaopen_msg(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @luaopen_config(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i32 @luaopen_dialog(i32* %51, %struct.TYPE_7__* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @luaopen_input(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @luaopen_msg(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = call i64 @vlclua_fd_init(i32* %58, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %27
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @lua_close(i32* %66)
  store i32* null, i32** %3, align 8
  br label %170

68:                                               ; preds = %27
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @luaopen_object(i32* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @luaopen_osd(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @luaopen_playlist(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @luaopen_stream(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @luaopen_strings(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @luaopen_variables(i32* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @luaopen_video(i32* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @luaopen_vlm(i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @luaopen_volume(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @luaopen_xml(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @luaopen_vlcio(i32* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @luaopen_errno(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @luaopen_rand(i32* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @lua_getglobal(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @vlclua_extension_deactivate, align 4
  %99 = call i32 @lua_pushcfunction(i32* %97, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @lua_setfield(i32* %100, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @vlclua_extension_keep_alive, align 4
  %104 = call i32 @lua_pushcfunction(i32* %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @lua_setfield(i32* %105, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @strncmp(i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %68
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @lua_register(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* @vlclua_extension_require)
  br label %136

115:                                              ; preds = %68
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @vlclua_add_modules_path(i32* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32*, i8*, i32, ...) @msg_Warn(i32* %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = call i32 @vlclua_fd_cleanup(i32* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @lua_close(i32* %133)
  store i32* null, i32** %3, align 8
  br label %170

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %112
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @VLC_OBJECT(i32* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @vlclua_dofile(i32 %138, i32* %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %136
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @lua_gettop(i32* %151)
  %153 = call i32 @lua_tostring(i32* %150, i32 %152)
  %154 = call i32 (i32*, i8*, i32, ...) @msg_Warn(i32* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = call i32 @vlclua_fd_cleanup(i32* %158)
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @lua_close(i32* %160)
  store i32* null, i32** %3, align 8
  br label %170

162:                                              ; preds = %136
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i32* %163, i32** %167, align 8
  br label %168

168:                                              ; preds = %162, %2
  %169 = load i32*, i32** %6, align 8
  store i32* %169, i32** %3, align 8
  br label %170

170:                                              ; preds = %168, %145, %122, %65, %24
  %171 = load i32*, i32** %3, align 8
  ret i32* %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @vlclua_set_this(i32*, i32*) #1

declare dso_local i64 @vlc_object_parent(i32*) #1

declare dso_local i32* @vlc_intf_GetMainPlaylist(i32*) #1

declare dso_local i32 @vlclua_set_playlist_internal(i32*, i32*) #1

declare dso_local i32 @vlclua_extension_set(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_register_namespace(i32*, i8*, i32) #1

declare dso_local i32 @luaopen_msg(i32*) #1

declare dso_local i32 @luaopen_config(i32*) #1

declare dso_local i32 @luaopen_dialog(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @luaopen_input(i32*) #1

declare dso_local i64 @vlclua_fd_init(i32*, i32*) #1

declare dso_local i32 @lua_close(i32*) #1

declare dso_local i32 @luaopen_object(i32*) #1

declare dso_local i32 @luaopen_osd(i32*) #1

declare dso_local i32 @luaopen_playlist(i32*) #1

declare dso_local i32 @luaopen_stream(i32*) #1

declare dso_local i32 @luaopen_strings(i32*) #1

declare dso_local i32 @luaopen_variables(i32*) #1

declare dso_local i32 @luaopen_video(i32*) #1

declare dso_local i32 @luaopen_vlm(i32*) #1

declare dso_local i32 @luaopen_volume(i32*) #1

declare dso_local i32 @luaopen_xml(i32*) #1

declare dso_local i32 @luaopen_vlcio(i32*) #1

declare dso_local i32 @luaopen_errno(i32*) #1

declare dso_local i32 @luaopen_rand(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @lua_register(i32*, i8*, i32*) #1

declare dso_local i64 @vlclua_add_modules_path(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @vlclua_fd_cleanup(i32*) #1

declare dso_local i64 @vlclua_dofile(i32, i32*, i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
