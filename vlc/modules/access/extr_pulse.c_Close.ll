; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_pulse.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_pulse.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pa_threaded_mainloop_lock(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @pa_stream_disconnect(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @pa_stream_set_state_callback(i32* %26, i32* null, i32* null)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @pa_stream_set_read_callback(i32* %28, i32* null, i32* null)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @pa_stream_set_buffer_attr_callback(i32* %30, i32* null, i32* null)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @pa_stream_set_moved_callback(i32* %32, i32* null, i32* null)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pa_stream_set_overflow_callback(i32* %34, i32* null, i32* null)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @pa_stream_set_started_callback(i32* %36, i32* null, i32* null)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @pa_stream_set_suspended_callback(i32* %38, i32* null, i32* null)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @pa_stream_set_underflow_callback(i32* %40, i32* null, i32* null)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @pa_stream_unref(i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pa_threaded_mainloop_unlock(i32 %46)
  br label %48

48:                                               ; preds = %19, %1
  %49 = load i32*, i32** %2, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @vlc_pa_disconnect(i32* %49, i32 %52, i32 %55)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @pa_stream_disconnect(i32*) #1

declare dso_local i32 @pa_stream_set_state_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_read_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_buffer_attr_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_moved_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_overflow_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_started_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_suspended_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_set_underflow_callback(i32*, i32*, i32*) #1

declare dso_local i32 @pa_stream_unref(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i32 @vlc_pa_disconnect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
