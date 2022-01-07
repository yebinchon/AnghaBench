; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.stream_ctrl* }
%struct.stream_ctrl = type { %struct.stream_ctrl*, %struct.stream_ctrl*, %struct.stream_ctrl*, %struct.stream_ctrl*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.stream_ctrl*, align 8
  %5 = alloca %struct.stream_ctrl*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.stream_ctrl*, %struct.stream_ctrl** %9, align 8
  store %struct.stream_ctrl* %10, %struct.stream_ctrl** %4, align 8
  %11 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %12 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vlc_cancel(i32 %13)
  %15 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vlc_interrupt_kill(i32 %17)
  %19 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vlc_join(i32 %21, i32* null)
  %23 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vlc_interrupt_destroy(i32 %25)
  %27 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %27, i32 0, i32 6
  %29 = call i32 @vlc_cond_destroy(i32* %28)
  %30 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %30, i32 0, i32 5
  %32 = call i32 @vlc_cond_destroy(i32* %31)
  %33 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %33, i32 0, i32 4
  %35 = call i32 @vlc_mutex_destroy(i32* %34)
  br label %36

36:                                               ; preds = %41, %1
  %37 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %37, i32 0, i32 3
  %39 = load %struct.stream_ctrl*, %struct.stream_ctrl** %38, align 8
  %40 = icmp ne %struct.stream_ctrl* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %42, i32 0, i32 3
  %44 = load %struct.stream_ctrl*, %struct.stream_ctrl** %43, align 8
  store %struct.stream_ctrl* %44, %struct.stream_ctrl** %5, align 8
  %45 = load %struct.stream_ctrl*, %struct.stream_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %45, i32 0, i32 2
  %47 = load %struct.stream_ctrl*, %struct.stream_ctrl** %46, align 8
  %48 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %48, i32 0, i32 3
  store %struct.stream_ctrl* %47, %struct.stream_ctrl** %49, align 8
  %50 = load %struct.stream_ctrl*, %struct.stream_ctrl** %5, align 8
  %51 = call i32 @free(%struct.stream_ctrl* %50)
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %54 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %53, i32 0, i32 1
  %55 = load %struct.stream_ctrl*, %struct.stream_ctrl** %54, align 8
  %56 = call i32 @free(%struct.stream_ctrl* %55)
  %57 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %58 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %57, i32 0, i32 0
  %59 = load %struct.stream_ctrl*, %struct.stream_ctrl** %58, align 8
  %60 = call i32 @free(%struct.stream_ctrl* %59)
  %61 = load %struct.stream_ctrl*, %struct.stream_ctrl** %4, align 8
  %62 = call i32 @free(%struct.stream_ctrl* %61)
  ret void
}

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_interrupt_kill(i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_interrupt_destroy(i32) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.stream_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
