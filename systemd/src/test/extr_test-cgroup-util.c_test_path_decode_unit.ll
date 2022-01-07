; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_decode_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_decode_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"getty@tty2.service\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"getty@tty2.service/\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"getty@tty2.service/xxx\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"getty@.service/\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"getty@.service\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"getty.service\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"getty\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"getty/waldo\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"_cpu.service\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cpu.service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_decode_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_decode_unit() #0 {
  %1 = call i32 @check_p_d_u(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @check_p_d_u(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @check_p_d_u(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @ENXIO, align 4
  %5 = sub nsw i32 0, %4
  %6 = call i32 @check_p_d_u(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %5, i8* null)
  %7 = load i32, i32* @ENXIO, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @check_p_d_u(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %8, i8* null)
  %10 = call i32 @check_p_d_u(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @check_p_d_u(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %12, i8* null)
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @check_p_d_u(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %15, i8* null)
  %17 = call i32 @check_p_d_u(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @check_p_d_u(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
