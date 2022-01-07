; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelGenerateInitialMonitorEvents.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelGenerateInitialMonitorEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@sentinel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"+monitor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%@ quorum %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelGenerateInitialMonitorEvents() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sentinel, i32 0, i32 0), align 4
  %5 = call i32* @dictGetIterator(i32 %4)
  store i32* %5, i32** %1, align 8
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32*, i32** %1, align 8
  %8 = call i32* @dictNext(i32* %7)
  store i32* %8, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_5__* @dictGetVal(i32* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sentinelEvent(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %6

19:                                               ; preds = %6
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @dictReleaseIterator(i32* %20)
  ret void
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_5__* @dictGetVal(i32*) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
