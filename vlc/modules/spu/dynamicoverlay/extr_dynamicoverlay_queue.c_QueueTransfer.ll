; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_queue.c_QueueTransfer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_queue.c_QueueTransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QueueTransfer(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %11, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  br label %41

28:                                               ; preds = %12
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* %31, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  br label %41

41:                                               ; preds = %28, %17
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
