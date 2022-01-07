; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_fd_move_above_stdio.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_fd_move_above_stdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_DUPFD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fd_move_above_stdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fd_move_above_stdio() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @F_DUPFD, align 4
  %4 = call i32 @fcntl(i32 0, i32 %3, i32 3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 3
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i64 @close_nointr(i32 0)
  %10 = load i64, i64* @EBADF, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @fd_move_above_stdio(i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sge i32 %22, 3
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @dup(i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = call i64 @close_nointr(i32 %31)
  %33 = load i64, i64* @EBADF, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @close_nointr(i32 %37)
  %39 = load i64, i64* @EBADF, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @close_nointr(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fd_move_above_stdio(i32) #1

declare dso_local i64 @dup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
