; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_streamFlush.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_streamFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @streamFlush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streamFlush(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i32], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %72

12:                                               ; preds = %1
  %13 = call %struct.TYPE_11__* @block_Alloc(i32 192)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %72

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = call i32 @vlc_mutex_unlock(i32* %37)
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %41 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %42
    i32 131, label %42
    i32 132, label %43
  ]

40:                                               ; preds = %35, %35
  br label %41

41:                                               ; preds = %35, %40
  store i32 183, i32* %5, align 4
  br label %44

42:                                               ; preds = %35, %35
  store i32 10, i32* %5, align 4
  br label %44

43:                                               ; preds = %35
  store i32 72, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42, %41
  %45 = getelementptr inbounds [14 x i32], [14 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 224, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 7, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 128, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %57, align 4
  %59 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [14 x i32], [14 x i32]* %6, i64 0, i64 0
  %64 = call i32 @writeTsPacketWDiscontinuity(i32 %62, i32 4113, i32* %63, i32 56)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @vlc_demux_chained_Send(i32 %67, %struct.TYPE_11__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %44, %16, %11
  ret void
}

declare dso_local %struct.TYPE_11__* @block_Alloc(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @writeTsPacketWDiscontinuity(i32, i32, i32*, i32) #1

declare dso_local i32 @vlc_demux_chained_Send(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
