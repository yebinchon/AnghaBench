; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"/system.slice/foobar.service/sdfdsaf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"foobar.service\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"/system.slice/getty@tty5.service\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"getty@tty5.service\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"/system.slice/getty@tty5.service/aaa/bbb\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"/system.slice/getty@tty5.service/\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"/system.slice/getty@tty6.service/tty5\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"getty@tty6.service\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"sadfdsafsda\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"/system.slice/getty####@tty6.service/xxx\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"/system.slice/system-waldo.slice/foobar.service/sdfdsaf\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"/system.slice/system-waldo.slice/_cpu.service/sdfdsaf\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"cpu.service\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"/user.slice/user-1000.slice/user@1000.service/server.service\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"user@1000.service\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"/user.slice/user-1000.slice/user@.service/server.service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_get_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_get_unit() #0 {
  %1 = call i32 @check_p_g_u(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @check_p_g_u(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %3 = call i32 @check_p_g_u(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 @check_p_g_u(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @check_p_g_u(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %6 = load i32, i32* @ENXIO, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @check_p_g_u(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %7, i8* null)
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = call i32 @check_p_g_u(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %10, i8* null)
  %12 = call i32 @check_p_g_u(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @check_p_g_u(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @check_p_g_u(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @check_p_g_u(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 %16, i8* null)
  ret void
}

declare dso_local i32 @check_p_g_u(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
