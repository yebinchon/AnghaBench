; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_yes_no_option.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_yes_no_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"nofail,fail,nofail\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nofail\00fail\00\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nofail,nofail,fail\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"abc,cde,afail\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"nofail,fail=0,nofail=0\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"nofail,nofail=0,fail=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fstab_yes_no_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fstab_yes_no_option() #0 {
  %1 = call i32 @fstab_test_yes_no_option(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %2 = icmp eq i32 %1, 1
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @fstab_test_yes_no_option(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @fstab_test_yes_no_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = call i32 @fstab_test_yes_no_option(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = call i32 @fstab_test_yes_no_option(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @fstab_test_yes_no_option(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
