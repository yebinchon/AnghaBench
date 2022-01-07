; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PostOmxEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PostOmxEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i8*, i8*, i32 }

@OMX_ErrorInsufficientResources = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PostOmxEvent(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @malloc(i32 40)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @OMX_ErrorInsufficientResources, align 4
  store i32 %17, i32* %6, align 4
  br label %51

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store %struct.TYPE_6__** %41, %struct.TYPE_6__*** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @vlc_cond_signal(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @vlc_mutex_unlock(i32* %48)
  %50 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %18, %16
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
