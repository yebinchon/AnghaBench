; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_wait.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { %struct.client* }
%struct.client = type { i32 }
%struct.wait_channel = type { i32, i32, i64 }
%struct.wait_item = type { %struct.cmdq_item* }

@.str = private unnamed_addr constant [17 x i8] c"not able to wait\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wait channel %s already woken (%p)\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"wait channel %s not woken (%p)\00", align 1
@entry = common dso_local global i32 0, align 4
@CMD_RETURN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, i8*, %struct.wait_channel*)* @cmd_wait_for_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_wait_for_wait(%struct.cmdq_item* %0, i8* %1, %struct.wait_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wait_channel*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.wait_item*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wait_channel* %2, %struct.wait_channel** %7, align 8
  %10 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %11 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %10, i32 0, i32 0
  %12 = load %struct.client*, %struct.client** %11, align 8
  store %struct.client* %12, %struct.client** %8, align 8
  %13 = load %struct.client*, %struct.client** %8, align 8
  %14 = icmp eq %struct.client* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %17 = call i32 @cmdq_error(%struct.cmdq_item* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %21 = icmp eq %struct.wait_channel* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.wait_channel* @cmd_wait_for_add(i8* %23)
  store %struct.wait_channel* %24, %struct.wait_channel** %7, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %27 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %32 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.client*, %struct.client** %8, align 8
  %35 = call i32 @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, %struct.client* %34)
  %36 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %37 = call i32 @cmd_wait_for_remove(%struct.wait_channel* %36)
  %38 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %25
  %40 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %41 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.client*, %struct.client** %8, align 8
  %44 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42, %struct.client* %43)
  %45 = call %struct.wait_item* @xcalloc(i32 1, i32 8)
  store %struct.wait_item* %45, %struct.wait_item** %9, align 8
  %46 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %47 = load %struct.wait_item*, %struct.wait_item** %9, align 8
  %48 = getelementptr inbounds %struct.wait_item, %struct.wait_item* %47, i32 0, i32 0
  store %struct.cmdq_item* %46, %struct.cmdq_item** %48, align 8
  %49 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %50 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %49, i32 0, i32 0
  %51 = load %struct.wait_item*, %struct.wait_item** %9, align 8
  %52 = load i32, i32* @entry, align 4
  %53 = call i32 @TAILQ_INSERT_TAIL(i32* %50, %struct.wait_item* %51, i32 %52)
  %54 = load i32, i32* @CMD_RETURN_WAIT, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %39, %30, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*) #1

declare dso_local %struct.wait_channel* @cmd_wait_for_add(i8*) #1

declare dso_local i32 @log_debug(i8*, i32, %struct.client*) #1

declare dso_local i32 @cmd_wait_for_remove(%struct.wait_channel*) #1

declare dso_local %struct.wait_item* @xcalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.wait_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
