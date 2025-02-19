; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_sanitize_environment.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_sanitize_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"EXIT_CODE\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"EXIT_STATUS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"INVOCATION_ID\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"JOURNAL_STREAM\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LISTEN_FDNAMES\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LISTEN_FDS\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LISTEN_PID\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"MAINPID\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"MANAGERPID\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"NOTIFY_SOCKET\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PIDFILE\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"REMOTE_ADDR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"REMOTE_PORT\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SERVICE_RESULT\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"WATCHDOG_PID\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"WATCHDOG_USEC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @sanitize_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @sanitize_environment(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = call i32 @strv_env_unset_many(i8** %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %5 = load i8**, i8*** %2, align 8
  %6 = call i32 @strv_sort(i8** %5)
  %7 = load i8**, i8*** %2, align 8
  ret i8** %7
}

declare dso_local i32 @strv_env_unset_many(i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strv_sort(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
