; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-wait-for.c_cmd_wait_for_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_channel = type { i32, i32, i32, i64, i64 }

@wait_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"add wait channel %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wait_channel* (i8*)* @cmd_wait_for_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wait_channel* @cmd_wait_for_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wait_channel*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.wait_channel* @xmalloc(i32 32)
  store %struct.wait_channel* %4, %struct.wait_channel** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @xstrdup(i8* %5)
  %7 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %8 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %10 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %12 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %14 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %13, i32 0, i32 2
  %15 = call i32 @TAILQ_INIT(i32* %14)
  %16 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %17 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %16, i32 0, i32 1
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load i32, i32* @wait_channels, align 4
  %20 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %21 = call i32 @RB_INSERT(i32 %19, i32* @wait_channels, %struct.wait_channel* %20)
  %22 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  %23 = getelementptr inbounds %struct.wait_channel, %struct.wait_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.wait_channel*, %struct.wait_channel** %3, align 8
  ret %struct.wait_channel* %26
}

declare dso_local %struct.wait_channel* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.wait_channel*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
