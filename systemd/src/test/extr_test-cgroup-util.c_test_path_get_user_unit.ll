; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_user_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_path_get_user_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"/user.slice/user-1000.slice/session-2.scope/foobar.service\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"foobar.service\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"/user.slice/user-1000.slice/session-2.scope/waldo.slice/foobar.service\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"/user.slice/user-1002.slice/session-2.scope/foobar.service/waldo\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"/user.slice/user-1000.slice/session-2.scope/foobar.service/waldo/uuuux\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"/user.slice/user-1000.slice/session-2.scope/waldo/waldo/uuuux\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"/user.slice/user-1000.slice/session-2.scope/foobar@pie.service/pa/po\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"foobar@pie.service\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"/session-2.scope/foobar@pie.service/pa/po\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"/xyz.slice/xyz-waldo.slice/session-77.scope/foobar@pie.service/pa/po\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"/meh.service\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"/session-3.scope/_cpu.service\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"cpu.service\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"/user.slice/user-1000.slice/user@1000.service/server.service\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"server.service\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"/user.slice/user-1000.slice/user@1000.service/foobar.slice/foobar@pie.service\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"/user.slice/user-1000.slice/user@.service/server.service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_get_user_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_get_user_unit() #0 {
  %1 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @ENXIO, align 4
  %6 = sub nsw i32 0, %5
  %7 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %6, i8* null)
  %8 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %12, i8* null)
  %14 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %15 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %16 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @check_p_g_u_u(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 %18, i8* null)
  ret void
}

declare dso_local i32 @check_p_g_u_u(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
