; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyModePrint.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyModePrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OUTPUT_STANDARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"min: %lld, max: %lld, avg: %.2f (%lld samples)\00", align 1
@stdout = common dso_local global i32 0, align 4
@OUTPUT_CSV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%lld,%lld,%.2f,%lld\0A\00", align 1
@OUTPUT_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%lld %lld %.2f %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, double, i64)* @latencyModePrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latencyModePrint(i64 %0, i64 %1, double %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %10 = load i64, i64* @OUTPUT_STANDARD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load double, double* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, double %15, i64 %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  br label %42

20:                                               ; preds = %4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %22 = load i64, i64* @OUTPUT_CSV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load double, double* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %26, double %27, i64 %28)
  br label %41

30:                                               ; preds = %20
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %32 = load i64, i64* @OUTPUT_RAW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load double, double* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36, double %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @printf(i8*, i64, i64, double, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
