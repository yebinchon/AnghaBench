; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficePage_getSize.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficePage_getSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MuError_BadNull = common dso_local global i32 0, align 4
@MuError_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MuOfficePage_getSize(%struct.TYPE_7__* %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @MuError_BadNull, align 4
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @MuError_BadNull, align 4
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call { i64, i64 } @fz_bound_page(i32 %26, i32 %29)
  %31 = bitcast %struct.TYPE_6__* %10 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 4
  %36 = bitcast %struct.TYPE_6__* %9 to i8*
  %37 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 16, i1 false)
  %38 = load float*, float** %6, align 8
  %39 = icmp ne float* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = mul nsw i32 90, %45
  %47 = sdiv i32 %46, 72
  %48 = sitofp i32 %47 to float
  %49 = load float*, float** %6, align 8
  store float %48, float* %49, align 4
  br label %50

50:                                               ; preds = %40, %23
  %51 = load float*, float** %7, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %55, %57
  %59 = mul nsw i32 90, %58
  %60 = sdiv i32 %59, 72
  %61 = sitofp i32 %60 to float
  %62 = load float*, float** %7, align 8
  store float %61, float* %62, align 4
  br label %63

63:                                               ; preds = %53, %50
  %64 = load i32, i32* @MuError_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %21, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local { i64, i64 } @fz_bound_page(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
