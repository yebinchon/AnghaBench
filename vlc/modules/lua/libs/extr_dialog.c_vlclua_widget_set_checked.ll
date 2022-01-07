; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_set_checked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_widget_set_checked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to widget\00", align 1
@EXTENSION_WIDGET_CHECK_BOX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"method set_checked not valid for this widget\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"widget:set_checked usage: (bool)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_widget_set_checked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_widget_set_checked(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
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
  br label %66

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXTENSION_WIDGET_CHECK_BOX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %19
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_isboolean(i32* %31, i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_lock(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_toboolean(i32* %46, i32 2)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @vlc_mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_SetDialogUpdate(i32* %63, i32 1)
  br label %65

65:                                               ; preds = %60, %37
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %34, %27, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @lua_SetDialogUpdate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
