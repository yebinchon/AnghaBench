; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_navigate_href.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_navigate_href.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@BINDING_NAVIGATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"empty href\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32*)* @navigate_href to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navigate_href(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_15__* @get_target_window(i32 %19, i32* %20, i64* %9)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @nsAString_GetData(i32* %28, i64** %12)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = call i32 @navigate_href_new_window(%struct.TYPE_16__* %30, i32* %31, i64* %32)
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %24
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @nsAString_GetData(i32* %37, i64** %10)
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BINDING_NAVIGATED, align 4
  %49 = call i32 @navigate_url(%struct.TYPE_15__* %43, i64* %44, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %53

50:                                               ; preds = %36
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @IHTMLWindow2_Release(i32* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %34, %27
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_15__* @get_target_window(i32, i32*, i64*) #1

declare dso_local i32 @nsAString_GetData(i32*, i64**) #1

declare dso_local i32 @navigate_href_new_window(%struct.TYPE_16__*, i32*, i64*) #1

declare dso_local i32 @navigate_url(%struct.TYPE_15__*, i64*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
