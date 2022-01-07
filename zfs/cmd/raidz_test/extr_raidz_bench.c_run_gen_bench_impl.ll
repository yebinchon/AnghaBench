; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_bench.c_run_gen_bench_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_bench.c_run_gen_bench_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@RAIDZ_GEN_NUM = common dso_local global i32 0, align 4
@MIN_CS_SHIFT = common dso_local global i64 0, align 8
@MAX_CS_SHIFT = common dso_local global i64 0, align 8
@rto_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@zio_bench = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BENCH_ASHIFT = common dso_local global i32 0, align 4
@rm_bench = common dso_local global i32 0, align 4
@GEN_BENCH_MEMORY = common dso_local global i64 0, align 8
@D_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%10s, %8s, %zu, %10llu, %lf, %lf, %u\0A\00", align 1
@raidz_gen_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_gen_bench_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_gen_bench_impl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %94, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RAIDZ_GEN_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = load i64, i64* @MIN_CS_SHIFT, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %90, %16
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_CS_SHIFT, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* %5, align 8
  %28 = shl i64 1, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zio_bench, i32 0, i32 0), align 8
  %29 = load i32, i32* @BENCH_ASHIFT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @vdev_raidz_map_alloc(%struct.TYPE_4__* @zio_bench, i32 %29, i32 %30, i32 %32)
  store i32 %33, i32* @rm_bench, align 4
  %34 = load i64, i64* @GEN_BENCH_MEMORY, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zio_bench, i32 0, i32 0), align 8
  %36 = load i64, i64* %6, align 8
  %37 = udiv i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = call i64 (...) @gethrtime()
  store i64 %38, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %46, %22
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @rm_bench, align 4
  %45 = call i32 @vdev_raidz_generate_parity(i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %39

49:                                               ; preds = %39
  %50 = call i64 (...) @gethrtime()
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  %53 = sitofp i64 %52 to double
  %54 = call double @NSEC2SEC(double %53)
  store double %54, double* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = shl i64 1, %55
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %56, %58
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %6, align 8
  %61 = uitofp i64 %60 to double
  %62 = load i64, i64* %8, align 8
  %63 = uitofp i64 %62 to double
  %64 = fmul double %61, %63
  store double %64, double* %11, align 8
  %65 = load double, double* %10, align 8
  %66 = fmul double 0x4130000000000000, %65
  %67 = load double, double* %11, align 8
  %68 = fdiv double %67, %66
  store double %68, double* %11, align 8
  %69 = load i32, i32* @D_ALL, align 4
  %70 = load i8*, i8** %2, align 8
  %71 = load i32*, i32** @raidz_gen_name, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rto_opts, i32 0, i32 0), align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = shl i64 1, %78
  %80 = load double, double* %11, align 8
  %81 = load double, double* %11, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sitofp i32 %82 to double
  %84 = fmul double %81, %83
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @LOG(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %75, i64 %77, i64 %79, double %80, double %84, i32 %86)
  %88 = load i32, i32* @rm_bench, align 4
  %89 = call i32 @vdev_raidz_map_free(i32 %88)
  br label %90

90:                                               ; preds = %49
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %18

93:                                               ; preds = %18
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %12

97:                                               ; preds = %12
  ret void
}

declare dso_local i32 @vdev_raidz_map_alloc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @vdev_raidz_generate_parity(i32) #1

declare dso_local double @NSEC2SEC(double) #1

declare dso_local i32 @LOG(i32, i8*, i8*, i32, i64, i64, double, double, i32) #1

declare dso_local i32 @vdev_raidz_map_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
