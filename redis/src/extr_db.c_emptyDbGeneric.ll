; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_emptyDbGeneric.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_emptyDbGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EMPTYDB_ASYNC = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@REDISMODULE_FLUSHINFO_VERSION = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_FLUSHDB = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_FLUSHDB_START = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_FLUSHDB_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @emptyDbGeneric(%struct.TYPE_7__* %0, i32 %1, i32 %2, void (i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (i8*)* %3, void (i8*)** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EMPTYDB_ASYNC, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, -1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %115

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %29 = load i32, i32* @REDISMODULE_FLUSHINFO_VERSION, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %35, align 4
  %37 = load i32, i32* @REDISMODULE_EVENT_FLUSHDB, align 4
  %38 = load i32, i32* @REDISMODULE_SUBEVENT_FLUSHDB_START, align 4
  %39 = call i32 @moduleFireServerEvent(i32 %37, i32 %38, %struct.TYPE_8__* %12)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @signalFlushedDb(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %49

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %14, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %91, %49
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @dictSize(i32 %61)
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = call i32 @emptyDbAsync(%struct.TYPE_7__* %71)
  br label %90

73:                                               ; preds = %55
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load void (i8*)*, void (i8*)** %9, align 8
  %81 = call i32 @dictEmpty(i32 %79, void (i8*)* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load void (i8*)*, void (i8*)** %9, align 8
  %89 = call i32 @dictEmpty(i32 %87, void (i8*)* %88)
  br label %90

90:                                               ; preds = %73, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %51

94:                                               ; preds = %51
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (...) @slotToKeyFlushAsync()
  br label %104

102:                                              ; preds = %97
  %103 = call i32 (...) @slotToKeyFlush()
  br label %104

104:                                              ; preds = %102, %100
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @flushSlaveKeysWithExpireList()
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* @REDISMODULE_EVENT_FLUSHDB, align 4
  %112 = load i32, i32* @REDISMODULE_SUBEVENT_FLUSHDB_END, align 4
  %113 = call i32 @moduleFireServerEvent(i32 %111, i32 %112, %struct.TYPE_8__* %12)
  %114 = load i64, i64* %11, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %110, %25
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32 @moduleFireServerEvent(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @signalFlushedDb(i32) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @emptyDbAsync(%struct.TYPE_7__*) #1

declare dso_local i32 @dictEmpty(i32, void (i8*)*) #1

declare dso_local i32 @slotToKeyFlushAsync(...) #1

declare dso_local i32 @slotToKeyFlush(...) #1

declare dso_local i32 @flushSlaveKeysWithExpireList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
