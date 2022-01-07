; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_Destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_stream_fifo = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vlc_stream_fifo_Destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_stream_fifo_Destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vlc_stream_fifo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.vlc_stream_fifo* @vlc_stream_fifo_Writer(i32* %7)
  store %struct.vlc_stream_fifo* %8, %struct.vlc_stream_fifo** %3, align 8
  %9 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @vlc_fifo_Lock(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @vlc_fifo_DequeueAllUnlocked(i32* %14)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @vlc_fifo_Unlock(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @block_ChainRelease(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @block_FifoRelease(i32* %28)
  %30 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %3, align 8
  %31 = call i32 @free(%struct.vlc_stream_fifo* %30)
  br label %32

32:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.vlc_stream_fifo* @vlc_stream_fifo_Writer(i32*) #1

declare dso_local i32 @vlc_fifo_Lock(i32*) #1

declare dso_local i32* @vlc_fifo_DequeueAllUnlocked(i32*) #1

declare dso_local i32 @vlc_fifo_Unlock(i32*) #1

declare dso_local i32 @block_ChainRelease(i32*) #1

declare dso_local i32 @block_FifoRelease(i32*) #1

declare dso_local i32 @free(%struct.vlc_stream_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
