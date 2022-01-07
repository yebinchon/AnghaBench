; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcPmgiChunkNode = type { %struct.chmcPmgiChunk, i64, i64 }
%struct.chmcPmgiChunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"PMGI\00", align 1
@CHMC_PMGI_DATA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_pmgi_init(%struct.chmcPmgiChunkNode* %0) #0 {
  %2 = alloca %struct.chmcPmgiChunkNode*, align 8
  %3 = alloca %struct.chmcPmgiChunk*, align 8
  store %struct.chmcPmgiChunkNode* %0, %struct.chmcPmgiChunkNode** %2, align 8
  %4 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %2, align 8
  %5 = call i32 @assert(%struct.chmcPmgiChunkNode* %4)
  %6 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %2, align 8
  %7 = getelementptr inbounds %struct.chmcPmgiChunkNode, %struct.chmcPmgiChunkNode* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %2, align 8
  %9 = getelementptr inbounds %struct.chmcPmgiChunkNode, %struct.chmcPmgiChunkNode* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %2, align 8
  %11 = getelementptr inbounds %struct.chmcPmgiChunkNode, %struct.chmcPmgiChunkNode* %10, i32 0, i32 0
  store %struct.chmcPmgiChunk* %11, %struct.chmcPmgiChunk** %3, align 8
  %12 = load %struct.chmcPmgiChunk*, %struct.chmcPmgiChunk** %3, align 8
  %13 = getelementptr inbounds %struct.chmcPmgiChunk, %struct.chmcPmgiChunk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @memcpy(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load i64, i64* @CHMC_PMGI_DATA_LEN, align 8
  %18 = add nsw i64 %17, 2
  %19 = load %struct.chmcPmgiChunk*, %struct.chmcPmgiChunk** %3, align 8
  %20 = getelementptr inbounds %struct.chmcPmgiChunk, %struct.chmcPmgiChunk* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.chmcPmgiChunk*, %struct.chmcPmgiChunk** %3, align 8
  %23 = getelementptr inbounds %struct.chmcPmgiChunk, %struct.chmcPmgiChunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @CHMC_PMGI_DATA_LEN, align 8
  %26 = call i32 @memset(i32 %24, i32 0, i64 %25)
  ret void
}

declare dso_local i32 @assert(%struct.chmcPmgiChunkNode*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
