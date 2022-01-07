; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i8** }
%struct.cmdq_item = type { i32 }
%struct.wait_channel = type { i8* }

@wait_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_wait_for_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_wait_for_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wait_channel*, align 8
  %9 = alloca %struct.wait_channel, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %10 = load %struct.cmd*, %struct.cmd** %4, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 0
  %12 = load %struct.args*, %struct.args** %11, align 8
  store %struct.args* %12, %struct.args** %6, align 8
  %13 = load %struct.args*, %struct.args** %6, align 8
  %14 = getelementptr inbounds %struct.args, %struct.args* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %9, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @wait_channels, align 4
  %21 = call %struct.wait_channel* @RB_FIND(i32 %20, i32* @wait_channels, %struct.wait_channel* %9)
  store %struct.wait_channel* %21, %struct.wait_channel** %8, align 8
  %22 = load %struct.args*, %struct.args** %6, align 8
  %23 = call i64 @args_has(%struct.args* %22, i8 zeroext 83)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.wait_channel*, %struct.wait_channel** %8, align 8
  %29 = call i32 @cmd_wait_for_signal(%struct.cmdq_item* %26, i8* %27, %struct.wait_channel* %28)
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.args*, %struct.args** %6, align 8
  %32 = call i64 @args_has(%struct.args* %31, i8 zeroext 76)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.wait_channel*, %struct.wait_channel** %8, align 8
  %38 = call i32 @cmd_wait_for_lock(%struct.cmdq_item* %35, i8* %36, %struct.wait_channel* %37)
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load %struct.args*, %struct.args** %6, align 8
  %41 = call i64 @args_has(%struct.args* %40, i8 zeroext 85)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.wait_channel*, %struct.wait_channel** %8, align 8
  %47 = call i32 @cmd_wait_for_unlock(%struct.cmdq_item* %44, i8* %45, %struct.wait_channel* %46)
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.wait_channel*, %struct.wait_channel** %8, align 8
  %52 = call i32 @cmd_wait_for_wait(%struct.cmdq_item* %49, i8* %50, %struct.wait_channel* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %43, %34, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.wait_channel* @RB_FIND(i32, i32*, %struct.wait_channel*) #1

declare dso_local i64 @args_has(%struct.args*, i8 zeroext) #1

declare dso_local i32 @cmd_wait_for_signal(%struct.cmdq_item*, i8*, %struct.wait_channel*) #1

declare dso_local i32 @cmd_wait_for_lock(%struct.cmdq_item*, i8*, %struct.wait_channel*) #1

declare dso_local i32 @cmd_wait_for_unlock(%struct.cmdq_item*, i8*, %struct.wait_channel*) #1

declare dso_local i32 @cmd_wait_for_wait(%struct.cmdq_item*, i8*, %struct.wait_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
