; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_add_value.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, %struct.extension_widget_value_t* }
%struct.TYPE_3__ = type { i32 }
%struct.extension_widget_value_t = type { i32, %struct.extension_widget_value_t*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to widget\00", align 1
@EXTENSION_WIDGET_DROPDOWN = common dso_local global i64 0, align 8
@EXTENSION_WIDGET_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"method add_value not valid for this widget\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"widget:add_value usage: (text, id = 0)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_widget_add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_widget_add_value(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.extension_widget_value_t*, align 8
  %7 = alloca %struct.extension_widget_value_t*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @luaL_checkudata(i32* %8, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = inttoptr i64 %9 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %10, %struct.TYPE_4__*** %4, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %12 = icmp ne %struct.TYPE_4__** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EXTENSION_WIDGET_DROPDOWN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXTENSION_WIDGET_LIST, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %28, %20
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_isstring(i32* %38, i32 2)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_error(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 %43, i32* %2, align 4
  br label %105

44:                                               ; preds = %37
  %45 = call %struct.extension_widget_value_t* @calloc(i32 1, i32 24)
  store %struct.extension_widget_value_t* %45, %struct.extension_widget_value_t** %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @luaL_checkstring(i32* %46, i32 2)
  %48 = call i32 @strdup(i32 %47)
  %49 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  %50 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_tointeger(i32* %51, i32 3)
  %53 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  %54 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @vlc_mutex_lock(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %61, align 8
  %63 = icmp ne %struct.extension_widget_value_t* %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %44
  %65 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store %struct.extension_widget_value_t* %65, %struct.extension_widget_value_t** %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EXTENSION_WIDGET_DROPDOWN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  %75 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %64
  br label %95

77:                                               ; preds = %44
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %79, align 8
  store %struct.extension_widget_value_t* %80, %struct.extension_widget_value_t** %6, align 8
  br label %81

81:                                               ; preds = %87, %77
  %82 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %83 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %82, i32 0, i32 1
  %84 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %83, align 8
  %85 = icmp ne %struct.extension_widget_value_t* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %89 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %88, i32 0, i32 1
  %90 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %89, align 8
  store %struct.extension_widget_value_t* %90, %struct.extension_widget_value_t** %6, align 8
  br label %81

91:                                               ; preds = %81
  %92 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  %93 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %94 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %93, i32 0, i32 1
  store %struct.extension_widget_value_t* %92, %struct.extension_widget_value_t** %94, align 8
  br label %95

95:                                               ; preds = %91, %76
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @vlc_mutex_unlock(i32* %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_SetDialogUpdate(i32* %103, i32 1)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %41, %34, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local %struct.extension_widget_value_t* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @lua_SetDialogUpdate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
