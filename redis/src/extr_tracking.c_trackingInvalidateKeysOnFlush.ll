; ModuleID = '/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingInvalidateKeysOnFlush.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingInvalidateKeysOnFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLIENT_TRACKING = common dso_local global i32 0, align 4
@TrackingTable = common dso_local global i32** null, align 8
@TRACKING_TABLE_SIZE = common dso_local global i32 0, align 4
@TrackingTableUsedSlots = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trackingInvalidateKeysOnFlush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %11 = call i32 @listRewind(i32 %10, i32* %4)
  br label %12

12:                                               ; preds = %27, %9
  %13 = call i32* @listNext(i32* %4)
  store i32* %13, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_5__* @listNodeValue(i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLIENT_TRACKING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i32 @sendTrackingMessage(%struct.TYPE_5__* %25, i32 -1)
  br label %27

27:                                               ; preds = %24, %15
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load i32**, i32*** @TrackingTable, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TRACKING_TABLE_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @TrackingTableUsedSlots, align 8
  %42 = icmp sgt i64 %41, 0
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br i1 %44, label %45, label %69

45:                                               ; preds = %43
  %46 = load i32**, i32*** @TrackingTable, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32**, i32*** @TrackingTable, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @raxFree(i32* %57)
  %59 = load i32**, i32*** @TrackingTable, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  %63 = load i64, i64* @TrackingTableUsedSlots, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* @TrackingTableUsedSlots, align 8
  br label %65

65:                                               ; preds = %52, %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %36

69:                                               ; preds = %43
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32**, i32*** @TrackingTable, align 8
  %74 = call i32 @zfree(i32** %73)
  store i32** null, i32*** @TrackingTable, align 8
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %32, %29
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_5__* @listNodeValue(i32*) #1

declare dso_local i32 @sendTrackingMessage(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @raxFree(i32*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
