; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/cache/extr_pinsup.c_CcpAllocateCacheSections.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/cache/extr_pinsup.c_CcpAllocateCacheSections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@INVALID_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AllocateCacheSections: FileObject %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Allocating Cache Section\0A\00", align 1
@CcCacheBitmap = common dso_local global i32 0, align 4
@CcCacheClockHand = common dso_local global i32 0, align 4
@CACHE_NUM_SECTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Setting up Bcb #%x\0A\00", align 1
@CcCacheSections = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Bcb #%x RefCount %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Somebody stoeled BCB #%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Allocated #%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to allocate cache segment\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CcpAllocateCacheSections(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @INVALID_CACHE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @INVALID_CACHE, align 4
  store i32 %17, i32* %3, align 4
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @INVALID_CACHE, align 4
  store i32 %27, i32* %3, align 4
  br label %106

28:                                               ; preds = %18
  %29 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @CcCacheBitmap, align 4
  %31 = load i32, i32* @CcCacheClockHand, align 4
  %32 = call i32 @RtlFindClearBitsAndSet(i32 %30, i32 1, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @CACHE_NUM_SECTIONS, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* @CcCacheClockHand, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @INVALID_CACHE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CcCacheSections, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %8, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 2
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @CcpDereferenceCache(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %40
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CcCacheSections, align 8
  %73 = ptrtoint %struct.TYPE_7__* %71 to i64
  %74 = ptrtoint %struct.TYPE_7__* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %76, i32 %79)
  %81 = load i32, i32* @CcCacheBitmap, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @RtlTestBit(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %61
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %61
  %89 = load i32, i32* @CcCacheBitmap, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @RtlTestBit(i32 %89, i32 %90)
  %92 = call i32 @ASSERT(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CcCacheSections, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ASSERT(i32 %100)
  br label %104

102:                                              ; preds = %28
  %103 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %88
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %26, %16
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @RtlFindClearBitsAndSet(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @CcpDereferenceCache(i32, i32) #1

declare dso_local i32 @RtlTestBit(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
