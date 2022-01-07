; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeWriteHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeWriteHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i64 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Write error sending DB to replica: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdbPipeWriteHandler(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %6 = icmp sgt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @serverAssert(i32 %7)
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = call %struct.TYPE_5__* @connGetPrivateData(%struct.connection* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = call i32 @connWrite(%struct.connection* %11, i64 %16, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = call i64 @connGetState(%struct.connection* %25)
  %27 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load i32, i32* @LL_WARNING, align 4
  %32 = load %struct.connection*, %struct.connection** %2, align 8
  %33 = call i32 @connGetLastError(%struct.connection* %32)
  %34 = call i32 @serverLog(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @freeClient(%struct.TYPE_5__* %35)
  br label %57

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %57

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.connection*, %struct.connection** %2, align 8
  %56 = call i32 @rdbPipeWriteHandlerConnRemoved(%struct.connection* %55)
  br label %57

57:                                               ; preds = %54, %52, %30, %29
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local %struct.TYPE_5__* @connGetPrivateData(%struct.connection*) #1

declare dso_local i32 @connWrite(%struct.connection*, i64, i64) #1

declare dso_local i64 @connGetState(%struct.connection*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @connGetLastError(%struct.connection*) #1

declare dso_local i32 @freeClient(%struct.TYPE_5__*) #1

declare dso_local i32 @rdbPipeWriteHandlerConnRemoved(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
