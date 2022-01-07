; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_deltadelta.c_delta_delta_from_parts.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_deltadelta.c_delta_delta_from_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"compressed size exceeds the maximum allowed (%d)\00", align 1
@MaxAllocSize = common dso_local global i64 0, align 8
@COMPRESSION_ALGORITHM_DELTADELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @delta_delta_from_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @delta_delta_from_parts(i8* %0, i8* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = call i64 @simple8brle_serialized_total_size(%struct.TYPE_9__* %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = call i64 @simple8brle_serialized_slot_size(%struct.TYPE_9__* %19)
  %21 = add i64 32, %20
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @AllocSizeIsValid(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i64, i64* @MaxAllocSize, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %18
  %36 = load i64, i64* %10, align 8
  %37 = call i8* @palloc(i64 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %12, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @SET_VARSIZE(i32* %41, i64 %42)
  %44 = load i32, i32* @COMPRESSION_ALGORITHM_DELTADELTA, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = call i64 @simple8brle_serialized_total_size(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = call i8* @bytes_serialize_simple8b_and_advance(i8* %62, i64 %64, %struct.TYPE_9__* %65)
  store i8* %66, i8** %11, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %35
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = call i8* @bytes_serialize_simple8b_and_advance(i8* %81, i64 %82, %struct.TYPE_9__* %83)
  br label %85

85:                                               ; preds = %71, %35
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  ret %struct.TYPE_10__* %86
}

declare dso_local i64 @simple8brle_serialized_total_size(%struct.TYPE_9__*) #1

declare dso_local i64 @simple8brle_serialized_slot_size(%struct.TYPE_9__*) #1

declare dso_local i32 @AllocSizeIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i8* @bytes_serialize_simple8b_and_advance(i8*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
