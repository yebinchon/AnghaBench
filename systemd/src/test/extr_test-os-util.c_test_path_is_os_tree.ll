; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-os-util.c_test_path_is_os_tree.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-os-util.c_test_path_is_os_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/idontexist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_is_os_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_is_os_tree() #0 {
  %1 = call i32 @path_is_os_tree(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @path_is_os_tree(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @path_is_os_tree(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @path_is_os_tree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
