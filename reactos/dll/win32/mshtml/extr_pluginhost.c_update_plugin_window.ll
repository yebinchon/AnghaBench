; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_update_plugin_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_update_plugin_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"unhandled hwnd\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%p %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_plugin_window(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %3
  %23 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %68

24:                                               ; preds = %16, %11
  %25 = load i64, i64* %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @wine_dbgstr_rect(i32* %26)
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i64 @memcmp(i32* %29, i32* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = call i32 @embed_plugin_object(%struct.TYPE_4__* %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @IOleInPlaceObject_SetObjectRects(i64 %62, i32* %64, i32* %66)
  br label %68

68:                                               ; preds = %22, %59, %54, %51
  ret void
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @embed_plugin_object(%struct.TYPE_4__*) #1

declare dso_local i32 @IOleInPlaceObject_SetObjectRects(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
