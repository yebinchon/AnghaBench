; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_showThroughput.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_showThroughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i64, i64, i64 }
%struct.aeEventLoop = type opaque

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"All clients disconnected... aborting.\0A\00", align 1
@AE_NOMORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"clients: %d\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s: %.2f\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @showThroughput(%struct.aeEventLoop* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aeEventLoop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.aeEventLoop* %0, %struct.aeEventLoop** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.aeEventLoop*, %struct.aeEventLoop** %5, align 8
  %13 = bitcast %struct.aeEventLoop* %12 to i8*
  %14 = call i32 @UNUSED(i8* %13)
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @UNUSED(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @UNUSED(i8* %18)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @atomicGet(i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @atomicGet(i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %28, %3
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.aeEventLoop*, %struct.aeEventLoop** %5, align 8
  %45 = bitcast %struct.aeEventLoop* %44 to i8*
  %46 = call i32 @aeStop(i8* %45)
  %47 = load i32, i32* @AE_NOMORE, align 4
  store i32 %47, i32* %4, align 4
  br label %78

48:                                               ; preds = %39, %36
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 250, i32* %4, align 4
  br label %78

52:                                               ; preds = %48
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fflush(i32 %58)
  store i32 250, i32* %4, align 4
  br label %78

60:                                               ; preds = %52
  %61 = call i64 (...) @mstime()
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %63 = sub nsw i64 %61, %62
  %64 = sitofp i64 %63 to float
  %65 = fpext float %64 to double
  %66 = fdiv double %65, 1.000000e+03
  %67 = fptrunc double %66 to float
  store float %67, float* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %10, align 4
  %71 = fdiv float %69, %70
  store float %71, float* %11, align 4
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %73 = load float, float* %11, align 4
  %74 = fpext float %73 to double
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %72, double %74)
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 @fflush(i32 %76)
  store i32 250, i32* %4, align 4
  br label %78

78:                                               ; preds = %60, %55, %51, %43
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @atomicGet(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aeStop(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @mstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
