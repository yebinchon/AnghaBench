; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllCount.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hllhdr = type { i64, i32 }

@HLL_REGISTERS = common dso_local global double 0.000000e+00, align 8
@HLL_DENSE = common dso_local global i64 0, align 8
@HLL_SPARSE = common dso_local global i64 0, align 8
@HLL_HDR_SIZE = common dso_local global i64 0, align 8
@HLL_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unknown HyperLogLog encoding in hllCount()\00", align 1
@HLL_Q = common dso_local global i32 0, align 4
@HLL_ALPHA_INF = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hllCount(%struct.hllhdr* %0, i32* %1) #0 {
  %3 = alloca %struct.hllhdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i32], align 16
  %9 = alloca double, align 8
  store %struct.hllhdr* %0, %struct.hllhdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load double, double* @HLL_REGISTERS, align 8
  store double %10, double* %5, align 8
  %11 = bitcast [64 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 256, i1 false)
  %12 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %13 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HLL_DENSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %19 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %22 = call i32 @hllDenseRegHisto(i32 %20, i32* %21)
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %25 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HLL_SPARSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %31 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %34 = ptrtoint %struct.hllhdr* %33 to i32
  %35 = call i64 @sdslen(i32 %34)
  %36 = load i64, i64* @HLL_HDR_SIZE, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %40 = call i32 @hllSparseRegHisto(i32 %32, i64 %37, i32* %38, i32* %39)
  br label %56

41:                                               ; preds = %23
  %42 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %43 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HLL_RAW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.hllhdr*, %struct.hllhdr** %3, align 8
  %49 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %52 = call i32 @hllRawRegHisto(i32 %50, i32* %51)
  br label %55

53:                                               ; preds = %41
  %54 = call i32 @serverPanic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %17
  %58 = load double, double* %5, align 8
  %59 = load double, double* %5, align 8
  %60 = load i32, i32* @HLL_Q, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to double
  %66 = fsub double %59, %65
  %67 = load double, double* %5, align 8
  %68 = fdiv double %66, %67
  %69 = call double @hllTau(double %68)
  %70 = fmul double %58, %69
  store double %70, double* %9, align 8
  %71 = load i32, i32* @HLL_Q, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %85, %57
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 1
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to double
  %81 = load double, double* %9, align 8
  %82 = fadd double %81, %80
  store double %82, double* %9, align 8
  %83 = load double, double* %9, align 8
  %84 = fmul double %83, 5.000000e-01
  store double %84, double* %9, align 8
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load double, double* %5, align 8
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = sitofp i32 %91 to double
  %93 = load double, double* %5, align 8
  %94 = fdiv double %92, %93
  %95 = fptosi double %94 to i32
  %96 = call double @hllSigma(i32 %95)
  %97 = fmul double %89, %96
  %98 = load double, double* %9, align 8
  %99 = fadd double %98, %97
  store double %99, double* %9, align 8
  %100 = load double, double* @HLL_ALPHA_INF, align 8
  %101 = load double, double* %5, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %5, align 8
  %104 = fmul double %102, %103
  %105 = load double, double* %9, align 8
  %106 = fdiv double %104, %105
  %107 = call double @llroundl(double %106)
  store double %107, double* %6, align 8
  %108 = load double, double* %6, align 8
  %109 = fptosi double %108 to i32
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hllDenseRegHisto(i32, i32*) #2

declare dso_local i32 @hllSparseRegHisto(i32, i64, i32*, i32*) #2

declare dso_local i64 @sdslen(i32) #2

declare dso_local i32 @hllRawRegHisto(i32, i32*) #2

declare dso_local i32 @serverPanic(i8*) #2

declare dso_local double @hllTau(double) #2

declare dso_local double @hllSigma(i32) #2

declare dso_local double @llroundl(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
