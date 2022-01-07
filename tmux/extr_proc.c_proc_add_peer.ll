; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_add_peer.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxpeer = type { void (%struct.imsg*, i8*)*, i32, i32, i8*, %struct.tmuxproc* }
%struct.imsg = type opaque
%struct.tmuxproc = type { i32 }
%struct.imsg.0 = type opaque

@EV_READ = common dso_local global i32 0, align 4
@proc_event_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"add peer %p: %d (%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tmuxpeer* @proc_add_peer(%struct.tmuxproc* %0, i32 %1, void (%struct.imsg.0*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.tmuxproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.imsg.0*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tmuxpeer*, align 8
  store %struct.tmuxproc* %0, %struct.tmuxproc** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.imsg.0*, i8*)* %2, void (%struct.imsg.0*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.tmuxpeer* @xcalloc(i32 1, i32 32)
  store %struct.tmuxpeer* %10, %struct.tmuxpeer** %9, align 8
  %11 = load %struct.tmuxproc*, %struct.tmuxproc** %5, align 8
  %12 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %13 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %12, i32 0, i32 4
  store %struct.tmuxproc* %11, %struct.tmuxproc** %13, align 8
  %14 = load void (%struct.imsg.0*, i8*)*, void (%struct.imsg.0*, i8*)** %7, align 8
  %15 = bitcast void (%struct.imsg.0*, i8*)* %14 to void (%struct.imsg*, i8*)*
  %16 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %17 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %16, i32 0, i32 0
  store void (%struct.imsg*, i8*)* %15, void (%struct.imsg*, i8*)** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %20 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %22 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %21, i32 0, i32 2
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @imsg_init(i32* %22, i32 %23)
  %25 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %26 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EV_READ, align 4
  %29 = load i32, i32* @proc_event_cb, align 4
  %30 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %31 = call i32 @event_set(i32* %26, i32 %27, i32 %28, i32 %29, %struct.tmuxpeer* %30)
  %32 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.tmuxpeer* %32, i32 %33, i8* %34)
  %36 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  %37 = call i32 @proc_update_event(%struct.tmuxpeer* %36)
  %38 = load %struct.tmuxpeer*, %struct.tmuxpeer** %9, align 8
  ret %struct.tmuxpeer* %38
}

declare dso_local %struct.tmuxpeer* @xcalloc(i32, i32) #1

declare dso_local i32 @imsg_init(i32*, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.tmuxpeer*) #1

declare dso_local i32 @log_debug(i8*, %struct.tmuxpeer*, i32, i8*) #1

declare dso_local i32 @proc_update_event(%struct.tmuxpeer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
