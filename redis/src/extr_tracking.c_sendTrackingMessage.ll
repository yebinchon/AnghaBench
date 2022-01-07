; ModuleID = '/home/carl/AnghaBench/redis/src/extr_tracking.c_sendTrackingMessage.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_tracking.c_sendTrackingMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"tracking-redir-broken\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"invalidate\00", align 1
@CLIENT_PUBSUB = common dso_local global i32 0, align 4
@TrackingChannelName = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendTrackingMessage(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_8__* @lookupClientByID(i64 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @addReplyPushLen(%struct.TYPE_8__* %25, i32 3)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = call i32 @addReplyBulkCBuffer(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 21)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @addReplyLongLong(%struct.TYPE_8__* %29, i64 %32)
  br label %34

34:                                               ; preds = %24, %19
  br label %70

35:                                               ; preds = %12
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %3, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 @addReplyPushLen(%struct.TYPE_8__* %43, i32 2)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @addReplyBulkCBuffer(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @addReplyLongLong(%struct.TYPE_8__* %47, i64 %48)
  br label %70

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CLIENT_PUBSUB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = call i32* @createStringObjectFromLongLong(i64 %61)
  store i32* %62, i32** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = load i32, i32* @TrackingChannelName, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @addReplyPubsubMessage(%struct.TYPE_8__* %63, i32 %64, i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @decrRefCount(i32* %67)
  br label %69

69:                                               ; preds = %60, %53, %50
  br label %70

70:                                               ; preds = %34, %69, %42
  ret void
}

declare dso_local %struct.TYPE_8__* @lookupClientByID(i64) #1

declare dso_local i32 @addReplyPushLen(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_8__*, i64) #1

declare dso_local i32* @createStringObjectFromLongLong(i64) #1

declare dso_local i32 @addReplyPubsubMessage(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
