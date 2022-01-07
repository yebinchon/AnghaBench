; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_is_cgroup_fs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_is_cgroup_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"/sys/fs/cgroup/systemd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_is_cgroup_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_is_cgroup_fs() #0 {
  %1 = alloca %struct.statfs, align 4
  %2 = call i64 @statfs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.statfs* %1)
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = call i64 @is_temporary_fs(%struct.statfs* %1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = call i64 @statfs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.statfs* %1)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = call i32 @is_cgroup_fs(%struct.statfs* %1)
  %15 = call i32 @assert_se(i32 %14)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i64 @is_temporary_fs(%struct.statfs*) #1

declare dso_local i32 @is_cgroup_fs(%struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
