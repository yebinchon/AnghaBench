; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_slice.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/user.slice\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"user.slice\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/foobar\00", align 1
@SPECIAL_ROOT_SLICE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"/user.slice/user-waldo.slice\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"user-waldo.slice\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"foobar.slice\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"foo.slice/foo-bar.slice/waldo.service\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"foo-bar.slice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_get_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_get_slice() #0 {
  %1 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %2 = load i8*, i8** @SPECIAL_ROOT_SLICE, align 8
  %3 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %2)
  %4 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %5 = load i8*, i8** @SPECIAL_ROOT_SLICE, align 8
  %6 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* %5)
  %7 = load i8*, i8** @SPECIAL_ROOT_SLICE, align 8
  %8 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0, i8* %7)
  %9 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 @check_p_g_slice(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @check_p_g_slice(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
