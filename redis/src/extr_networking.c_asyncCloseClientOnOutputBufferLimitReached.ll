; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_asyncCloseClientOnOutputBufferLimitReached.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_asyncCloseClientOnOutputBufferLimitReached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Client %s scheduled to be closed ASAP for overcoming of output buffer limits.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asyncCloseClientOnOutputBufferLimitReached(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SIZE_MAX, align 4
  %14 = sub nsw i32 %13, 65536
  %15 = icmp slt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @serverAssert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %9
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %9
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i64 @checkClientOutputBufferLimits(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = call i32 (...) @sdsempty()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = call i32 @catClientInfoString(i32 %35, %struct.TYPE_6__* %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32 @freeClientAsync(%struct.TYPE_6__* %38)
  %40 = load i32, i32* @LL_WARNING, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @serverLog(i32 %40, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @sdsfree(i32 %43)
  br label %45

45:                                               ; preds = %8, %29, %34, %30
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @checkClientOutputBufferLimits(%struct.TYPE_6__*) #1

declare dso_local i32 @catClientInfoString(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_6__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
