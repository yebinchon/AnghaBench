; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogSwitchCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogSwitchCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger = type { i32* }
%struct.vlc_logger_switch = type { %struct.vlc_logger, i32, i32* }

@switch_ops = common dso_local global i32 0, align 4
@discard_log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_logger* ()* @vlc_LogSwitchCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_logger* @vlc_LogSwitchCreate() #0 {
  %1 = alloca %struct.vlc_logger*, align 8
  %2 = alloca %struct.vlc_logger_switch*, align 8
  %3 = call %struct.vlc_logger_switch* @malloc(i32 24)
  store %struct.vlc_logger_switch* %3, %struct.vlc_logger_switch** %2, align 8
  %4 = load %struct.vlc_logger_switch*, %struct.vlc_logger_switch** %2, align 8
  %5 = icmp eq %struct.vlc_logger_switch* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.vlc_logger* null, %struct.vlc_logger** %1, align 8
  br label %21

10:                                               ; preds = %0
  %11 = load %struct.vlc_logger_switch*, %struct.vlc_logger_switch** %2, align 8
  %12 = getelementptr inbounds %struct.vlc_logger_switch, %struct.vlc_logger_switch* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.vlc_logger, %struct.vlc_logger* %12, i32 0, i32 0
  store i32* @switch_ops, i32** %13, align 8
  %14 = load %struct.vlc_logger_switch*, %struct.vlc_logger_switch** %2, align 8
  %15 = getelementptr inbounds %struct.vlc_logger_switch, %struct.vlc_logger_switch* %14, i32 0, i32 2
  store i32* @discard_log, i32** %15, align 8
  %16 = load %struct.vlc_logger_switch*, %struct.vlc_logger_switch** %2, align 8
  %17 = getelementptr inbounds %struct.vlc_logger_switch, %struct.vlc_logger_switch* %16, i32 0, i32 1
  %18 = call i32 @vlc_rwlock_init(i32* %17)
  %19 = load %struct.vlc_logger_switch*, %struct.vlc_logger_switch** %2, align 8
  %20 = getelementptr inbounds %struct.vlc_logger_switch, %struct.vlc_logger_switch* %19, i32 0, i32 0
  store %struct.vlc_logger* %20, %struct.vlc_logger** %1, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.vlc_logger*, %struct.vlc_logger** %1, align 8
  ret %struct.vlc_logger* %22
}

declare dso_local %struct.vlc_logger_switch* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
