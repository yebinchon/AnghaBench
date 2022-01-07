; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleTimerHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleTimerHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.aeEventLoop = type opaque
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 (%struct.TYPE_14__*, i32)*, i32, i32 }

@Timers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@moduleFreeContextReusedClient = common dso_local global i32 0, align 4
@AE_NOMORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moduleTimerHandler(%struct.aeEventLoop* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.aeEventLoop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__, align 4
  store %struct.aeEventLoop* %0, %struct.aeEventLoop** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.aeEventLoop*, %struct.aeEventLoop** %4, align 8
  %14 = bitcast %struct.aeEventLoop* %13 to i8*
  %15 = call i32 @UNUSED(i8* %14)
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @UNUSED(i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @UNUSED(i8* %19)
  %21 = load i32, i32* @Timers, align 4
  %22 = call i32 @raxStart(%struct.TYPE_12__* %7, i32 %21)
  %23 = call i64 (...) @ustime()
  store i64 %23, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %3, %76
  %25 = call i32 @raxSeek(%struct.TYPE_12__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %26 = call i32 @raxNext(%struct.TYPE_12__* %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %77

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i64* %10, i64 %31, i32 8)
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @ntohu64(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %11, align 8
  %41 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.TYPE_14__* @REDISMODULE_CTX_INIT to i8*), i64 8, i1 false)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @moduleFreeContextReusedClient, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @selectDb(i32 %49, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %56(%struct.TYPE_14__* %12, i32 %59)
  %61 = call i32 @moduleFreeContext(%struct.TYPE_14__* %12)
  %62 = load i32, i32* @Timers, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @raxRemove(i32 %62, i8* %65, i32 %67, i32* null)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = call i32 @zfree(%struct.TYPE_13__* %69)
  br label %76

71:                                               ; preds = %29
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  %75 = sdiv i64 %74, 1000
  store i64 %75, i64* %9, align 8
  br label %77

76:                                               ; preds = %38
  br label %24

77:                                               ; preds = %71, %28
  %78 = call i32 @raxStop(%struct.TYPE_12__* %7)
  %79 = load i64, i64* %9, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i64 1, i64* %9, align 8
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* @Timers, align 4
  %84 = call i64 @raxSize(i32 %83)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* %9, align 8
  br label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @AE_NOMORE, align 4
  %90 = sext i32 %89 to i64
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i64 [ %87, %86 ], [ %90, %88 ]
  %93 = trunc i64 %92 to i32
  ret i32 %93
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @raxStart(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @raxSeek(%struct.TYPE_12__*, i8*, i32*, i32) #1

declare dso_local i32 @raxNext(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @ntohu64(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @selectDb(i32, i32) #1

declare dso_local i32 @moduleFreeContext(%struct.TYPE_14__*) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_13__*) #1

declare dso_local i32 @raxStop(%struct.TYPE_12__*) #1

declare dso_local i64 @raxSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
