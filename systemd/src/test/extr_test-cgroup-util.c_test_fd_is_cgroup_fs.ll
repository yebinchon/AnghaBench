; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_fd_is_cgroup_fs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_fd_is_cgroup_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"/sys/fs/cgroup/systemd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fd_is_cgroup_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fd_is_cgroup_fs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O_RDONLY, align 4
  %3 = load i32, i32* @O_DIRECTORY, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @O_CLOEXEC, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @O_NOFOLLOW, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @fd_is_temporary_fs(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @safe_close(i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = load i32, i32* @O_DIRECTORY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_CLOEXEC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_NOFOLLOW, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  br label %32

32:                                               ; preds = %17, %0
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @fd_is_cgroup_fs(i32 %33)
  %35 = call i32 @assert_se(i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @safe_close(i32 %36)
  store i32 %37, i32* %1, align 4
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @fd_is_temporary_fs(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @fd_is_cgroup_fs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
