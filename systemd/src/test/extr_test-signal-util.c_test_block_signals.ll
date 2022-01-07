; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-signal-util.c_test_block_signals.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-signal-util.c_test_block_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGUSR1 = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_block_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_block_signals() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @sigprocmask(i32 0, i32* null, i32* %1)
  %3 = icmp sge i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = load i32, i32* @SIGUSR1, align 4
  %7 = call i32 @sigismember(i32* %1, i32 %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = load i32, i32* @SIGALRM, align 4
  %12 = call i32 @sigismember(i32* %1, i32 %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i32, i32* @SIGVTALRM, align 4
  %17 = call i32 @sigismember(i32* %1, i32 %16)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32, i32* @SIGUSR1, align 4
  %22 = load i32, i32* @SIGVTALRM, align 4
  %23 = call i32 @BLOCK_SIGNALS(i32 %21, i32 %22)
  %24 = call i64 @sigprocmask(i32 0, i32* null, i32* %1)
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32, i32* @SIGUSR1, align 4
  %29 = call i32 @sigismember(i32* %1, i32 %28)
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32, i32* @SIGALRM, align 4
  %34 = call i32 @sigismember(i32* %1, i32 %33)
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32, i32* @SIGVTALRM, align 4
  %39 = call i32 @sigismember(i32* %1, i32 %38)
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = call i64 @sigprocmask(i32 0, i32* null, i32* %1)
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32, i32* @SIGUSR1, align 4
  %48 = call i32 @sigismember(i32* %1, i32 %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_se(i32 %50)
  %52 = load i32, i32* @SIGALRM, align 4
  %53 = call i32 @sigismember(i32* %1, i32 %52)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i32, i32* @SIGVTALRM, align 4
  %58 = call i32 @sigismember(i32* %1, i32 %57)
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i32 @BLOCK_SIGNALS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
