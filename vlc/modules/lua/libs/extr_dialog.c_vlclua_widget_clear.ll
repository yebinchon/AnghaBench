; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_clear.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, %struct.extension_widget_value_t* }
%struct.TYPE_3__ = type { i32 }
%struct.extension_widget_value_t = type { %struct.extension_widget_value_t*, %struct.extension_widget_value_t* }

@.str = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to widget\00", align 1
@EXTENSION_WIDGET_DROPDOWN = common dso_local global i64 0, align 8
@EXTENSION_WIDGET_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"method clear not valid for this widget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_widget_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_widget_clear(i32* %0) #0 {
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
  br label %73

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
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %73

37:                                               ; preds = %28, %20
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_lock(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %44, align 8
  store %struct.extension_widget_value_t* %45, %struct.extension_widget_value_t** %6, align 8
  br label %46

46:                                               ; preds = %59, %37
  %47 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %48 = icmp ne %struct.extension_widget_value_t* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %51 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %50, i32 0, i32 1
  %52 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %51, align 8
  store %struct.extension_widget_value_t* %52, %struct.extension_widget_value_t** %7, align 8
  %53 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %54 = getelementptr inbounds %struct.extension_widget_value_t, %struct.extension_widget_value_t* %53, i32 0, i32 0
  %55 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %54, align 8
  %56 = call i32 @free(%struct.extension_widget_value_t* %55)
  %57 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %6, align 8
  %58 = call i32 @free(%struct.extension_widget_value_t* %57)
  br label %59

59:                                               ; preds = %49
  %60 = load %struct.extension_widget_value_t*, %struct.extension_widget_value_t** %7, align 8
  store %struct.extension_widget_value_t* %60, %struct.extension_widget_value_t** %6, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store %struct.extension_widget_value_t* null, %struct.extension_widget_value_t** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @vlc_mutex_unlock(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_SetDialogUpdate(i32* %71, i32 1)
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %61, %34, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @free(%struct.extension_widget_value_t*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @lua_SetDialogUpdate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
