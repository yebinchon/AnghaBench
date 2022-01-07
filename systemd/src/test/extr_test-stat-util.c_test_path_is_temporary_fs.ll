; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_path_is_temporary_fs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_path_is_temporary_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/run\00", align 1
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/i-dont-exist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_is_temporary_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_is_temporary_fs() #0 {
  %1 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %2 = call i64 @path_is_mount_point(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @path_is_temporary_fs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp sgt i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  br label %9

9:                                                ; preds = %4, %0
  %10 = call i32 @path_is_temporary_fs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = call i32 @path_is_temporary_fs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  ret void
}

declare dso_local i64 @path_is_mount_point(i8*, i32*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @path_is_temporary_fs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
