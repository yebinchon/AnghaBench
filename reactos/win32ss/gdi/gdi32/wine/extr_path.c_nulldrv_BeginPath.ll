; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_path.c_nulldrv_BeginPath.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_path.c_nulldrv_BeginPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32*, i32*, i32*, i32*, i32*)* }
%struct.path_physdev = type { i32 }
%struct.TYPE_6__ = type { i32 }

@path_driver = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nulldrv_BeginPath dev %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"nulldrv_BeginPath pd %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nulldrv_BeginPath(%struct.path_physdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path_physdev*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.path_physdev*, align 8
  store %struct.path_physdev* %0, %struct.path_physdev** %3, align 8
  %6 = load %struct.path_physdev*, %struct.path_physdev** %3, align 8
  %7 = call %struct.TYPE_6__* @get_nulldrv_dc(%struct.path_physdev* %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load i32 (i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @path_driver, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 %8(i32* %10, i32* null, i32* null, i32* null, i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @find_dc_driver(%struct.TYPE_6__* %16, %struct.TYPE_7__* @path_driver)
  %18 = call %struct.path_physdev* @get_path_physdev(i32 %17)
  store %struct.path_physdev* %18, %struct.path_physdev** %5, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = load %struct.path_physdev*, %struct.path_physdev** %5, align 8
  %21 = getelementptr inbounds %struct.path_physdev, %struct.path_physdev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.path_physdev*, %struct.path_physdev** %3, align 8
  %23 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.path_physdev* %22)
  %24 = load %struct.path_physdev*, %struct.path_physdev** %5, align 8
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.path_physdev* %24)
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_6__* @get_nulldrv_dc(%struct.path_physdev*) #1

declare dso_local %struct.path_physdev* @get_path_physdev(i32) #1

declare dso_local i32 @find_dc_driver(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @DPRINT(i8*, %struct.path_physdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
