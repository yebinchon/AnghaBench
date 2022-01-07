; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingWrites.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingWrites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4
@CLIENT_PROTECTED = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@AOF_ON = common dso_local global i64 0, align 8
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@sendReplyToClient = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleClientsWithPendingWrites() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %7 = call i32 @listLength(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %9 = call i32 @listRewind(i32 %8, i32* %1)
  br label %10

10:                                               ; preds = %64, %37, %31, %0
  %11 = call i32* @listNext(i32* %1)
  store i32* %11, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_7__* @listNodeValue(i32* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @listDelNode(i32 %22, i32* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CLIENT_PROTECTED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %10

32:                                               ; preds = %13
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i64 @writeToClient(%struct.TYPE_7__* %33, i32 0)
  %35 = load i64, i64* @C_ERR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %10

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = call i64 @clientHasPendingReplies(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %44 = load i64, i64* @AOF_ON, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %48 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %46, %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @sendReplyToClient, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @connSetWriteHandlerWithBarrier(i32 %54, i32 %55, i32 %56)
  %58 = load i64, i64* @C_ERR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call i32 @freeClientAsync(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %38
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_7__* @listNodeValue(i32*) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i64 @writeToClient(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_7__*) #1

declare dso_local i64 @connSetWriteHandlerWithBarrier(i32, i32, i32) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
