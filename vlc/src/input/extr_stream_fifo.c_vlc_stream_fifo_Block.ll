; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_Block.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_Block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_stream_fifo = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @vlc_stream_fifo_Block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlc_stream_fifo_Block(i32* %0, i32* noalias %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vlc_stream_fifo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.vlc_stream_fifo* @vlc_stream_fifo_Writer(i32* %8)
  store %struct.vlc_stream_fifo* %9, %struct.vlc_stream_fifo** %5, align 8
  %10 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %5, align 8
  %11 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @vlc_fifo_Lock(i32* %13)
  br label %15

15:                                               ; preds = %26, %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @vlc_fifo_IsEmpty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @vlc_fifo_Wait(i32* %27)
  br label %15

29:                                               ; preds = %24, %15
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @vlc_fifo_DequeueUnlocked(i32* %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @vlc_fifo_Unlock(i32* %32)
  %34 = load i32*, i32** %7, align 8
  ret i32* %34
}

declare dso_local %struct.vlc_stream_fifo* @vlc_stream_fifo_Writer(i32*) #1

declare dso_local i32 @vlc_fifo_Lock(i32*) #1

declare dso_local i64 @vlc_fifo_IsEmpty(i32*) #1

declare dso_local i32 @vlc_fifo_Wait(i32*) #1

declare dso_local i32* @vlc_fifo_DequeueUnlocked(i32*) #1

declare dso_local i32 @vlc_fifo_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
