; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__setup_sig_handlers.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed.c__setup_sig_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to initialize sigset\00", align 1
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to ignore SIGPIPE\00", align 1
@_exit_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register SIGINT handler\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register SIGTERM handler\00", align 1
@_hup_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register SIGHUP handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_setup_sig_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_setup_sig_handlers() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %3 = call i64 @sigemptyset(i32* %2)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @zed_log_die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @SA_RESTART, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SIG_IGN, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SIGPIPE, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %1, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = call i32 @zed_log_die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %7
  %18 = load i32, i32* @_exit_handler, align 4
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @SIGINT, align 4
  %21 = call i64 @sigaction(i32 %20, %struct.sigaction* %1, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @zed_log_die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* @SIGTERM, align 4
  %27 = call i64 @sigaction(i32 %26, %struct.sigaction* %1, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @zed_log_die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @_hup_handler, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SIGHUP, align 4
  %35 = call i64 @sigaction(i32 %34, %struct.sigaction* %1, i32* null)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @zed_log_die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  ret void
}

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i32 @zed_log_die(i8*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
