; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_flushSlavesOutputBuffers.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_flushSlavesOutputBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4
@SLAVE_STATE_ONLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushSlavesOutputBuffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %6 = call i32 @listRewind(i32 %5, i32* %1)
  br label %7

7:                                                ; preds = %48, %0
  %8 = call i32* @listNext(i32* %1)
  store i32* %8, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_6__* @listNodeValue(i32* %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @connHasWriteHandler(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %18, %10
  %26 = phi i1 [ true, %10 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SLAVE_STATE_ONLINE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i64 @clientHasPendingReplies(%struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @writeToClient(%struct.TYPE_6__* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %41, %36, %33, %25
  br label %7

49:                                               ; preds = %7
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_6__* @listNodeValue(i32*) #1

declare dso_local i64 @connHasWriteHandler(i32) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_6__*) #1

declare dso_local i32 @writeToClient(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
