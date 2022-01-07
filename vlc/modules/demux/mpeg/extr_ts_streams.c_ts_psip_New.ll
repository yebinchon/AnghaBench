; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_psip_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_psip_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ts_psip_New(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %40

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = call i32 @handle_Init(i32* %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @free(%struct.TYPE_6__* %16)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %40

18:                                               ; preds = %9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ARRAY_INIT(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = call i32 (...) @ts_psip_context_New()
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %18
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @ts_psip_Del(i32* %35, %struct.TYPE_6__* %36)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %38

38:                                               ; preds = %34, %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %2, align 8
  br label %40

40:                                               ; preds = %38, %15, %8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %41
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @handle_Init(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_INIT(i32) #1

declare dso_local i32 @ts_psip_context_New(...) #1

declare dso_local i32 @ts_psip_Del(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
