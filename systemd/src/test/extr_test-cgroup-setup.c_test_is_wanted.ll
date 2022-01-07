; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-setup.c_test_is_wanted.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-setup.c_test_is_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"SYSTEMD_PROC_CMDLINE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"systemd.unified_cgroup_hierarchy\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"systemd.unified_cgroup_hierarchy=0\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"systemd.unified_cgroup_hierarchy=0 systemd.legacy_systemd_cgroup_controller\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"systemd.unified_cgroup_hierarchy=0 systemd.legacy_systemd_cgroup_controller=0\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"cgroup_no_v1=all\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"cgroup_no_v1=all systemd.unified_cgroup_hierarchy=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_is_wanted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_is_wanted() #0 {
  %1 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %2 = icmp sge i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @test_is_wanted_print(i32 0)
  %6 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %7 = icmp sge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i32 @test_is_wanted_print(i32 0)
  %11 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = call i32 @test_is_wanted_print(i32 0)
  %16 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 @test_is_wanted_print(i32 0)
  %21 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i32 @test_is_wanted_print(i32 0)
  %26 = call i64 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %27 = icmp sge i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = call i32 @test_is_wanted_print(i32 0)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @test_is_wanted_print(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
