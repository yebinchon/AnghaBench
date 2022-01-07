; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bio.c_bioInit.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bio.c_bioInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_NUM_OPS = common dso_local global i32 0, align 4
@bio_mutex = common dso_local global i32* null, align 8
@bio_newjob_cond = common dso_local global i32* null, align 8
@bio_step_cond = common dso_local global i32* null, align 8
@bio_jobs = common dso_local global i32* null, align 8
@bio_pending = common dso_local global i64* null, align 8
@REDIS_THREAD_STACK_SIZE = common dso_local global i64 0, align 8
@bioProcessBackgroundJobs = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Fatal: Can't initialize Background Jobs.\00", align 1
@bio_threads = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BIO_NUM_OPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32*, i32** @bio_mutex, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @pthread_mutex_init(i32* %14, i32* null)
  %16 = load i32*, i32** @bio_newjob_cond, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @pthread_cond_init(i32* %19, i32* null)
  %21 = load i32*, i32** @bio_step_cond, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @pthread_cond_init(i32* %24, i32* null)
  %26 = call i32 (...) @listCreate()
  %27 = load i32*, i32** @bio_jobs, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i64*, i64** @bio_pending, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %10
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  %39 = call i32 @pthread_attr_init(i32* %1)
  %40 = call i32 @pthread_attr_getstacksize(i32* %1, i64* %3)
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i64 1, i64* %3, align 8
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @REDIS_THREAD_STACK_SIZE, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %3, align 8
  %51 = mul i64 %50, 2
  store i64 %51, i64* %3, align 8
  br label %45

52:                                               ; preds = %45
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @pthread_attr_setstacksize(i32* %1, i64 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %77, %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @BIO_NUM_OPS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %5, align 8
  %63 = load i32, i32* @bioProcessBackgroundJobs, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @pthread_create(i32* %2, i32* %1, i32 %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @LL_WARNING, align 4
  %69 = call i32 @serverLog(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %59
  %72 = load i32, i32* %2, align 4
  %73 = load i32*, i32** @bio_threads, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %55

80:                                               ; preds = %55
  ret void
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @listCreate(...) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_getstacksize(i32*, i64*) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i64) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @serverLog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
