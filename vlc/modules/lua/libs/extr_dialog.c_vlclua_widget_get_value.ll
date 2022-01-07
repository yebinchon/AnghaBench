; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_get_value.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, %struct.extension_widget_value_t* }
%struct.TYPE_3__ = type { i32 }
%struct.extension_widget_value_t = type { i32, i32, i64, %struct.extension_widget_value_t* }

@.str = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to widget\00", align 1
@EXTENSION_WIDGET_DROPDOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"method get_value not valid for this widget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_widget_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_widget_get_value(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.extension_widget_value_t*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaL_checkudata(i32* %7, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = inttoptr i64 %8 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %9, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %11 = icmp ne %struct.TYPE_4__** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %78

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXTENSION_WIDGET_DROPDOWN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %78

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %37, align 8
  store %struct.extension_widget_value_t* %38, %struct.extension_widget_value_t** %6, align 8
  br label %39

39:                                               ; preds = %64, %30
  %40 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %41 = icmp ne %struct.extension_widget_value_t* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %44 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %50 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @lua_pushinteger(i32* %48, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %55 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lua_pushstring(i32* %53, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @vlc_mutex_unlock(i32* %61)
  store i32 2, i32* %2, align 4
  br label %78

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %66 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %65, i32 0, i32 3
  %67 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %66, align 8
  store %struct.extension_widget_value_t* %67, %struct.extension_widget_value_t** %6, align 8
  br label %39

68:                                               ; preds = %39
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @vlc_mutex_unlock(i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @lua_pushinteger(i32* %74, i32 -1)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_pushnil(i32* %76)
  store i32 2, i32* %2, align 4
  br label %78

78:                                               ; preds = %68, %47, %27, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
