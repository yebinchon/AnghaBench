; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_unlock.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32 }
%struct.wait_channel = type { i64, i32 }
%struct.wait_item = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"channel %s not locked\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, i8*, %struct.wait_channel*)* @cmd_wait_for_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_wait_for_unlock(%struct.cmdq_item* %0, i8* %1, %struct.wait_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wait_channel*, align 8
  %8 = alloca %struct.wait_item*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wait_channel* %2, %struct.wait_channel** %7, align 8
  %9 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %10 = icmp eq %struct.wait_channel* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %13 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @cmdq_error(%struct.cmdq_item* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %11
  %22 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %23 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %22, i32 0, i32 1
  %24 = call %struct.wait_item* @TAILQ_FIRST(i32* %23)
  store %struct.wait_item* %24, %struct.wait_item** %8, align 8
  %25 = icmp ne %struct.wait_item* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.wait_item*, %struct.wait_item** %8, align 8
  %28 = getelementptr inbounds %struct.wait_item, %struct.wait_item* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cmdq_continue(i32 %29)
  %31 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %32 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %31, i32 0, i32 1
  %33 = load %struct.wait_item*, %struct.wait_item** %8, align 8
  %34 = load i32, i32* @entry, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %32, %struct.wait_item* %33, i32 %34)
  %36 = load %struct.wait_item*, %struct.wait_item** %8, align 8
  %37 = call i32 @free(%struct.wait_item* %36)
  br label %43

38:                                               ; preds = %21
  %39 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %40 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.wait_channel*, %struct.wait_channel** %7, align 8
  %42 = call i32 @cmd_wait_for_remove(%struct.wait_channel* %41)
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local %struct.wait_item* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cmdq_continue(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.wait_item*, i32) #1

declare dso_local i32 @free(%struct.wait_item*) #1

declare dso_local i32 @cmd_wait_for_remove(%struct.wait_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
