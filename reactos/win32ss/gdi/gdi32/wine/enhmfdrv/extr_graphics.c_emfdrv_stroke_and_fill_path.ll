; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_emfdrv_stroke_and_fill_path.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_emfdrv_stroke_and_fill_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gdi_path = type { i32 }

@empty_bounds = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @emfdrv_stroke_and_fill_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emfdrv_stroke_and_fill_path(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca %struct.gdi_path*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @get_physdev_dc(i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 12, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.gdi_path* @get_gdi_flat_path(i32* %19, i32* null)
  store %struct.gdi_path* %20, %struct.gdi_path** %8, align 8
  %21 = icmp ne %struct.gdi_path* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.gdi_path*, %struct.gdi_path** %8, align 8
  %24 = call i32 @get_gdi_path_data(%struct.gdi_path* %23, i32** %9, i32** %10)
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @get_points_bounds(i32* %25, i32* %26, i32 %27, i32 0)
  %29 = load %struct.gdi_path*, %struct.gdi_path** %8, align 8
  %30 = call i32 @free_gdi_path(%struct.gdi_path* %29)
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @empty_bounds, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %37 = call i32 @EMFDRV_WriteRecord(i32 %35, %struct.TYPE_4__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.gdi_path*, %struct.gdi_path** %8, align 8
  %43 = icmp ne %struct.gdi_path* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %49 = call i32 @EMFDRV_UpdateBBox(i32 %47, i32* %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %44, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @get_physdev_dc(i32) #1

declare dso_local %struct.gdi_path* @get_gdi_flat_path(i32*, i32*) #1

declare dso_local i32 @get_gdi_path_data(%struct.gdi_path*, i32**, i32**) #1

declare dso_local i32 @get_points_bounds(i32*, i32*, i32, i32) #1

declare dso_local i32 @free_gdi_path(%struct.gdi_path*) #1

declare dso_local i32 @EMFDRV_WriteRecord(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @EMFDRV_UpdateBBox(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
