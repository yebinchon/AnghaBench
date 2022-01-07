; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_thread_arena.c_thd_start.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_thread_arena.c_thd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Error in malloc()\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"thread.arena\00", align 1
@BUFERROR_BUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error in mallctl(): %s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Arena index should be same as for main thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thd_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = call i8* @malloc(i32 1)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @assert_ptr_not_null(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @free(i8* %18)
  store i64 4, i64* %6, align 8
  %20 = bitcast i32* %5 to i8*
  %21 = bitcast i32* %3 to i8*
  %22 = call i32 @mallctl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %20, i64* %6, i8* %21, i32 4)
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @BUFERROR_BUF, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = trunc i64 %26 to i32
  %31 = call i32 @buferror(i32 %29, i8* %28, i32 %30)
  %32 = call i32 @test_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %33 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %33)
  br label %34

34:                                               ; preds = %24, %1
  store i64 4, i64* %6, align 8
  %35 = bitcast i32* %5 to i8*
  %36 = call i32 @mallctl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %35, i64* %6, i8* null, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* @BUFERROR_BUF, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %10, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = trunc i64 %40 to i32
  %45 = call i32 @buferror(i32 %43, i8* %42, i32 %44)
  %46 = call i32 @test_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %47 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %47)
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @assert_u_eq(i32 %49, i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @buferror(i32, i8*, i32) #1

declare dso_local i32 @test_fail(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert_u_eq(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
