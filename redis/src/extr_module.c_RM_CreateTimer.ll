; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateTimer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@Timers = common dso_local global i32 0, align 4
@raxNotFound = common dso_local global i64 0, align 8
@aeTimer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@moduleTimerHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RM_CreateTimer(%struct.TYPE_18__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = call %struct.TYPE_17__* @zmalloc(i32 24)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = call i64 (...) @ustime()
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %4, %55
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @htonu64(i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* @Timers, align 4
  %43 = bitcast i64* %11 to i8*
  %44 = call i64 @raxFind(i32 %42, i8* %43, i32 8)
  %45 = load i64, i64* @raxNotFound, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @Timers, align 4
  %49 = bitcast i64* %11 to i8*
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = call i32 @raxInsert(i32 %48, i8* %49, i32 8, %struct.TYPE_17__* %50, i32* null)
  br label %56

52:                                               ; preds = %39
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %52
  br label %39

56:                                               ; preds = %47
  %57 = load i32, i32* @aeTimer, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* @Timers, align 4
  %61 = call i32 @raxStart(%struct.TYPE_16__* %12, i32 %60)
  %62 = call i32 @raxSeek(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %63 = call i32 @raxNext(%struct.TYPE_16__* %12)
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @memcmp(i32 %65, i64* %11, i32 8)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %70 = load i32, i32* @aeTimer, align 4
  %71 = call i32 @aeDeleteTimeEvent(i32 %69, i32 %70)
  store i32 -1, i32* @aeTimer, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = call i32 @raxStop(%struct.TYPE_16__* %12)
  br label %74

74:                                               ; preds = %72, %56
  %75 = load i32, i32* @aeTimer, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @moduleTimerHandler, align 4
  %81 = call i32 @aeCreateTimeEvent(i32 %78, i32 %79, i32 %80, i32* null, i32* null)
  store i32 %81, i32* @aeTimer, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i64, i64* %11, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_17__* @zmalloc(i32) #1

declare dso_local i64 @ustime(...) #1

declare dso_local i64 @htonu64(i64) #1

declare dso_local i64 @raxFind(i32, i8*, i32) #1

declare dso_local i32 @raxInsert(i32, i8*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @raxStart(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_16__*, i8*, i32*, i32) #1

declare dso_local i32 @raxNext(%struct.TYPE_16__*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @aeDeleteTimeEvent(i32, i32) #1

declare dso_local i32 @raxStop(%struct.TYPE_16__*) #1

declare dso_local i32 @aeCreateTimeEvent(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
