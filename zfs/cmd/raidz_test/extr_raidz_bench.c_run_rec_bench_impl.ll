; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_bench.c_run_rec_bench_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_bench.c_run_rec_bench_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@run_rec_bench_impl.tgt = internal constant [7 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 0, i32 2, i32 3], [3 x i32] [i32 0, i32 1, i32 3], [3 x i32] [i32 2, i32 3, i32 4], [3 x i32] [i32 1, i32 3, i32 4], [3 x i32] [i32 0, i32 3, i32 4], [3 x i32] [i32 3, i32 4, i32 5]], align 16
@RAIDZ_REC_NUM = common dso_local global i32 0, align 4
@MIN_CS_SHIFT = common dso_local global i64 0, align 8
@MAX_CS_SHIFT = common dso_local global i64 0, align 8
@rto_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PARITY_PQR = common dso_local global i32 0, align 4
@zio_bench = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BENCH_ASHIFT = common dso_local global i64 0, align 8
@rm_bench = common dso_local global i32 0, align 4
@REC_BENCH_MEMORY = common dso_local global i64 0, align 8
@D_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%10s, %8s, %zu, %10llu, %lf, %lf, %u\0A\00", align 1
@raidz_rec_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_rec_bench_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rec_bench_impl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %113, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RAIDZ_REC_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %13
  %18 = load i64, i64* @MIN_CS_SHIFT, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %109, %17
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MAX_CS_SHIFT, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %112

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %25 = load i32, i32* @PARITY_PQR, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* %6, align 8
  %28 = shl i64 1, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zio_bench, i32 0, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zio_bench, i32 0, i32 0), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = load i64, i64* @BENCH_ASHIFT, align 8
  %34 = shl i64 1, %33
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %109

37:                                               ; preds = %23
  %38 = load i64, i64* @BENCH_ASHIFT, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PARITY_PQR, align 4
  %41 = call i32 @vdev_raidz_map_alloc(%struct.TYPE_4__* @zio_bench, i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* @rm_bench, align 4
  %42 = load i64, i64* @REC_BENCH_MEMORY, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zio_bench, i32 0, i32 0), align 8
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* @rm_bench, align 4
  %47 = call i64 @raidz_ncols(i32 %46)
  %48 = load i32, i32* @rm_bench, align 4
  %49 = call i64 @raidz_parity(i32 %48)
  %50 = sub nsw i64 %47, %49
  %51 = call i32 @MIN(i32 3, i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = call i64 (...) @gethrtime()
  store i64 %52, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %65, %37
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* @rm_bench, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* @run_rec_bench_impl.tgt, i64 0, i64 %60
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @vdev_raidz_reconstruct(i32 %58, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %53

68:                                               ; preds = %53
  %69 = call i64 (...) @gethrtime()
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %69, %70
  %72 = sitofp i64 %71 to double
  %73 = call double @NSEC2SEC(double %72)
  store double %73, double* %11, align 8
  %74 = load i64, i64* %6, align 8
  %75 = shl i64 1, %74
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %77 = sext i32 %76 to i64
  %78 = udiv i64 %75, %77
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = uitofp i64 %79 to double
  %81 = load i64, i64* %9, align 8
  %82 = uitofp i64 %81 to double
  %83 = fmul double %80, %82
  store double %83, double* %12, align 8
  %84 = load double, double* %11, align 8
  %85 = fmul double 0x4130000000000000, %84
  %86 = load double, double* %12, align 8
  %87 = fdiv double %86, %85
  store double %87, double* %12, align 8
  %88 = load i32, i32* @D_ALL, align 4
  %89 = load i8*, i8** %2, align 8
  %90 = load i32*, i32** @raidz_rec_name, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = shl i64 1, %97
  %99 = load double, double* %12, align 8
  %100 = load double, double* %12, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sitofp i32 %101 to double
  %103 = fmul double %100, %102
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @LOG(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %94, i64 %96, i64 %98, double %99, double %103, i32 %105)
  %107 = load i32, i32* @rm_bench, align 4
  %108 = call i32 @vdev_raidz_map_free(i32 %107)
  br label %109

109:                                              ; preds = %68, %36
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %19

112:                                              ; preds = %19
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %13

116:                                              ; preds = %13
  ret void
}

declare dso_local i32 @vdev_raidz_map_alloc(%struct.TYPE_4__*, i64, i32, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @raidz_ncols(i32) #1

declare dso_local i64 @raidz_parity(i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @vdev_raidz_reconstruct(i32, i32*, i32) #1

declare dso_local double @NSEC2SEC(double) #1

declare dso_local i32 @LOG(i32, i8*, i8*, i32, i64, i64, double, double, i32) #1

declare dso_local i32 @vdev_raidz_map_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
