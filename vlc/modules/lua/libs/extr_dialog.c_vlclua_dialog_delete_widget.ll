; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_dialog_delete_widget.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_dialog_delete_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to dialog\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Argument to del_widget is not a widget\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't get pointer to widget\00", align 1
@EXTENSION_WIDGET_BUTTON = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not delete widget\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Could not remove widget from list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_dialog_delete_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_dialog_delete_widget(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checkudata(i32* %10, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = inttoptr i64 %11 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %12, %struct.TYPE_8__*** %4, align 8
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %14 = icmp ne %struct.TYPE_8__** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %119

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_isuserdata(i32* %25, i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %119

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @luaL_checkudata(i32* %32, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %34 = inttoptr i64 %33 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %34, %struct.TYPE_7__*** %6, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %36 = icmp ne %struct.TYPE_7__** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %31
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_error(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 %43, i32* %2, align 4
  br label %119

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %7, align 8
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EXTENSION_WIDGET_BUTTON, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i32 @lua_pushlightuserdata(i32* %54, %struct.TYPE_7__* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pushnil(i32* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %61 = call i32 @lua_settable(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %44
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @vlclua_get_this(i32* %63)
  store i32* %64, i32** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @lua_SetDialogUpdate(i32* %67, i32 0)
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = call i32 @vlc_ext_dialog_update(i32* %69, %struct.TYPE_8__* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @luaL_error(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 %77, i32* %2, align 4
  br label %119

78:                                               ; preds = %62
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @vlc_mutex_lock(i32* %80)
  br label %82

82:                                               ; preds = %99, %78
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br label %97

97:                                               ; preds = %92, %87, %82
  %98 = phi i1 [ false, %87 ], [ false, %82 ], [ %96, %92 ]
  br i1 %98, label %99, label %105

99:                                               ; preds = %97
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = call i32 @vlc_cond_wait(i32* %101, i32* %103)
  br label %82

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = call i32 @DeleteWidget(%struct.TYPE_8__* %106, %struct.TYPE_7__* %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = call i32 @vlc_mutex_unlock(i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @VLC_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @luaL_error(i32* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 %117, i32* %2, align 4
  br label %119

118:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %115, %75, %41, %28, %19
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_isuserdata(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i32 @lua_SetDialogUpdate(i32*, i32) #1

declare dso_local i32 @vlc_ext_dialog_update(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @DeleteWidget(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
