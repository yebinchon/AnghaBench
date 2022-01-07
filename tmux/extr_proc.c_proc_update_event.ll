; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_update_event.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxpeer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@proc_event_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmuxpeer*)* @proc_update_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_update_event(%struct.tmuxpeer* %0) #0 {
  %2 = alloca %struct.tmuxpeer*, align 8
  %3 = alloca i16, align 2
  store %struct.tmuxpeer* %0, %struct.tmuxpeer** %2, align 8
  %4 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %5 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %4, i32 0, i32 0
  %6 = call i32 @event_del(i32* %5)
  %7 = load i16, i16* @EV_READ, align 2
  store i16 %7, i16* %3, align 2
  %8 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %9 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i16, i16* @EV_WRITE, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %3, align 2
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %23 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %22, i32 0, i32 0
  %24 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %25 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i16, i16* %3, align 2
  %29 = load i32, i32* @proc_event_cb, align 4
  %30 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %31 = call i32 @event_set(i32* %23, i32 %27, i16 signext %28, i32 %29, %struct.tmuxpeer* %30)
  %32 = load %struct.tmuxpeer*, %struct.tmuxpeer** %2, align 8
  %33 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %32, i32 0, i32 0
  %34 = call i32 @event_add(i32* %33, i32* null)
  ret void
}

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i16 signext, i32, %struct.tmuxpeer*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
