; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-mask.c_test_cg_mask_to_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-mask.c_test_cg_mask_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_CGROUP_MASK_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices\00", align 1
@CGROUP_MASK_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@CGROUP_MASK_CPUACCT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cpuacct\00", align 1
@CGROUP_MASK_CPUSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cpuset\00", align 1
@CGROUP_MASK_IO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@CGROUP_MASK_BLKIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"blkio\00", align 1
@CGROUP_MASK_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@CGROUP_MASK_DEVICES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@CGROUP_MASK_PIDS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"pids\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cpu cpuacct\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"cpu pids\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"cpuacct pids\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"devices pids\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"io blkio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cg_mask_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cg_mask_to_string() #0 {
  %1 = call i32 @test_cg_mask_to_string_one(i32 0, i8* null)
  %2 = load i32, i32* @_CGROUP_MASK_ALL, align 4
  %3 = call i32 @test_cg_mask_to_string_one(i32 %2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @CGROUP_MASK_CPU, align 4
  %5 = call i32 @test_cg_mask_to_string_one(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @CGROUP_MASK_CPUACCT, align 4
  %7 = call i32 @test_cg_mask_to_string_one(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @CGROUP_MASK_CPUSET, align 4
  %9 = call i32 @test_cg_mask_to_string_one(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @CGROUP_MASK_IO, align 4
  %11 = call i32 @test_cg_mask_to_string_one(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @CGROUP_MASK_BLKIO, align 4
  %13 = call i32 @test_cg_mask_to_string_one(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @CGROUP_MASK_MEMORY, align 4
  %15 = call i32 @test_cg_mask_to_string_one(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @CGROUP_MASK_DEVICES, align 4
  %17 = call i32 @test_cg_mask_to_string_one(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @CGROUP_MASK_PIDS, align 4
  %19 = call i32 @test_cg_mask_to_string_one(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @CGROUP_MASK_CPU, align 4
  %21 = load i32, i32* @CGROUP_MASK_CPUACCT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @test_cg_mask_to_string_one(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32, i32* @CGROUP_MASK_CPU, align 4
  %25 = load i32, i32* @CGROUP_MASK_PIDS, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @test_cg_mask_to_string_one(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %28 = load i32, i32* @CGROUP_MASK_CPUACCT, align 4
  %29 = load i32, i32* @CGROUP_MASK_PIDS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @test_cg_mask_to_string_one(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %32 = load i32, i32* @CGROUP_MASK_DEVICES, align 4
  %33 = load i32, i32* @CGROUP_MASK_PIDS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @test_cg_mask_to_string_one(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i32, i32* @CGROUP_MASK_IO, align 4
  %37 = load i32, i32* @CGROUP_MASK_BLKIO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @test_cg_mask_to_string_one(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_cg_mask_to_string_one(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
