; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sink* }
%struct.sink = type { %struct.sink*, %struct.sink*, %struct.sink*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.sink*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sink*, align 8
  %7 = alloca %struct.sink*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sink*, %struct.sink** %11, align 8
  store %struct.sink* %12, %struct.sink** %4, align 8
  %13 = load %struct.sink*, %struct.sink** %4, align 8
  %14 = getelementptr inbounds %struct.sink, %struct.sink* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.sink*, %struct.sink** %4, align 8
  %17 = getelementptr inbounds %struct.sink, %struct.sink* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pa_threaded_mainloop_lock(i32 %18)
  %20 = load %struct.sink*, %struct.sink** %4, align 8
  %21 = getelementptr inbounds %struct.sink, %struct.sink* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @pa_context_set_subscribe_callback(i32* %22, i32* null, i32* null)
  %24 = load %struct.sink*, %struct.sink** %4, align 8
  %25 = getelementptr inbounds %struct.sink, %struct.sink* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pa_threaded_mainloop_unlock(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.sink*, %struct.sink** %4, align 8
  %31 = getelementptr inbounds %struct.sink, %struct.sink* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vlc_pa_disconnect(i32* %28, i32* %29, i32 %32)
  %34 = load %struct.sink*, %struct.sink** %4, align 8
  %35 = getelementptr inbounds %struct.sink, %struct.sink* %34, i32 0, i32 2
  %36 = load %struct.sink*, %struct.sink** %35, align 8
  store %struct.sink* %36, %struct.sink** %6, align 8
  br label %37

37:                                               ; preds = %46, %1
  %38 = load %struct.sink*, %struct.sink** %6, align 8
  %39 = icmp ne %struct.sink* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.sink*, %struct.sink** %6, align 8
  %42 = getelementptr inbounds %struct.sink, %struct.sink* %41, i32 0, i32 1
  %43 = load %struct.sink*, %struct.sink** %42, align 8
  store %struct.sink* %43, %struct.sink** %7, align 8
  %44 = load %struct.sink*, %struct.sink** %6, align 8
  %45 = call i32 @free(%struct.sink* %44)
  br label %46

46:                                               ; preds = %40
  %47 = load %struct.sink*, %struct.sink** %7, align 8
  store %struct.sink* %47, %struct.sink** %6, align 8
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.sink*, %struct.sink** %4, align 8
  %50 = getelementptr inbounds %struct.sink, %struct.sink* %49, i32 0, i32 0
  %51 = load %struct.sink*, %struct.sink** %50, align 8
  %52 = call i32 @free(%struct.sink* %51)
  %53 = load %struct.sink*, %struct.sink** %4, align 8
  %54 = call i32 @free(%struct.sink* %53)
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @pa_context_set_subscribe_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i32 @vlc_pa_disconnect(i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.sink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
