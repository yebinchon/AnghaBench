; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_rename_process_multi.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_rename_process_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@CLD_EXITED = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"more\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"time!\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rename_process_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rename_process_multi() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = call i64 (...) @fork()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp sge i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i64, i64* %1, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @wait_for_terminate(i64 %11, %struct.TYPE_3__* %2)
  %13 = icmp sge i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CLD_EXITED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXIT_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  ret void

28:                                               ; preds = %0
  %29 = call i32 @test_rename_process_now(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %30 = call i32 @test_rename_process_now(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %31 = call i32 @setresuid(i32 99, i32 99, i32 99)
  %32 = call i32 @test_rename_process_now(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %33 = call i32 @test_rename_process_now(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @test_rename_process_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @test_rename_process_one(i8* null, i32 %38)
  %40 = load i64, i64* @EXIT_SUCCESS, align 8
  %41 = call i32 @_exit(i64 %40) #3
  unreachable
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @wait_for_terminate(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @test_rename_process_now(i8*, i32) #1

declare dso_local i32 @setresuid(i32, i32, i32) #1

declare dso_local i32 @test_rename_process_one(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
