; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_fork_test.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_fork_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void ()*)* @fork_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fork_test(void ()* %0) #0 {
  %2 = alloca void ()*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store void ()* %0, void ()** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = call i64 (...) @fork()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp sge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load void ()*, void ()** %2, align 8
  call void %13()
  %14 = load i32, i32* @EXIT_SUCCESS, align 4
  %15 = call i32 @exit(i32 %14) #3
  unreachable

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @waitpid(i64 %20, i32* %4, i32 0)
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @WIFEXITED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @WEXITSTATUS(i32 %29)
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %28, %19
  %33 = phi i1 [ false, %19 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  br label %36

36:                                               ; preds = %32, %16
  br label %37

37:                                               ; preds = %36
  ret void
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @assert_se(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
