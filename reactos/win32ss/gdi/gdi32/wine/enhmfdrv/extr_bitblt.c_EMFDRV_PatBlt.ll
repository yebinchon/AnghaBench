; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_bitblt.c_EMFDRV_PatBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_bitblt.c_EMFDRV_PatBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitblt_coords = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, i64, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { double, double, double, double, double, double }

@EMR_BITBLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EMFDRV_PatBlt(i32 %0, %struct.bitblt_coords* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitblt_coords*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bitblt_coords* %1, %struct.bitblt_coords** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EMR_BITBLT, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 192, i32* %13, align 8
  %14 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %15 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %20 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %25 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %28 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %35 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %38 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = sub nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %45 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 15
  store i64 %46, i64* %47, align 8
  %48 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %49 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 14
  store i64 %50, i64* %51, align 8
  %52 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %53 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 13
  store i64 %54, i64* %55, align 8
  %56 = load %struct.bitblt_coords*, %struct.bitblt_coords** %5, align 8
  %57 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 12
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 11
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 10
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store double 1.000000e+00, double* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store double 0.000000e+00, double* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store double 0.000000e+00, double* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store double 1.000000e+00, double* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  store double 0.000000e+00, double* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store double 0.000000e+00, double* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %84 = call i64 @EMFDRV_WriteRecord(i32 %82, %struct.TYPE_7__* %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %3
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %90 = call i32 @EMFDRV_UpdateBBox(i32 %88, %struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %87, %3
  %92 = load i64, i64* %8, align 8
  ret i64 %92
}

declare dso_local i64 @EMFDRV_WriteRecord(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @EMFDRV_UpdateBBox(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
