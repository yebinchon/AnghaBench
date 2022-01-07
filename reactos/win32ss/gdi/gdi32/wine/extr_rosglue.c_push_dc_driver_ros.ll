; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_push_dc_driver_ros.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_push_dc_driver_ros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.gdi_dc_funcs* }
%struct.gdi_dc_funcs = type { i64 }
%struct.TYPE_7__ = type { i32 }

@WINEDC = common dso_local global i32 0, align 4
@physDev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_dc_driver_ros(%struct.TYPE_6__** %0, %struct.TYPE_6__* %1, %struct.gdi_dc_funcs* %2) #0 {
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.gdi_dc_funcs*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.gdi_dc_funcs* %2, %struct.gdi_dc_funcs** %6, align 8
  br label %7

7:                                                ; preds = %18, %3
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.gdi_dc_funcs*, %struct.gdi_dc_funcs** %10, align 8
  %12 = getelementptr inbounds %struct.gdi_dc_funcs, %struct.gdi_dc_funcs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.gdi_dc_funcs*, %struct.gdi_dc_funcs** %6, align 8
  %15 = getelementptr inbounds %struct.gdi_dc_funcs, %struct.gdi_dc_funcs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.TYPE_6__** %21, %struct.TYPE_6__*** %4, align 8
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.gdi_dc_funcs*, %struct.gdi_dc_funcs** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store %struct.gdi_dc_funcs* %23, %struct.gdi_dc_funcs** %25, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %31 = load i32, i32* @WINEDC, align 4
  %32 = load i32, i32* @physDev, align 4
  %33 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_6__** %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %39, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_6__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
