; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcPmglChunkNode = type { %struct.chmcPmglChunk, i64, i64 }
%struct.chmcPmglChunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"PMGL\00", align 1
@CHMC_PMGL_DATA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_pmgl_init(%struct.chmcPmglChunkNode* %0) #0 {
  %2 = alloca %struct.chmcPmglChunkNode*, align 8
  %3 = alloca %struct.chmcPmglChunk*, align 8
  store %struct.chmcPmglChunkNode* %0, %struct.chmcPmglChunkNode** %2, align 8
  %4 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %2, align 8
  %5 = call i32 @assert(%struct.chmcPmglChunkNode* %4)
  %6 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %2, align 8
  %7 = getelementptr inbounds %struct.chmcPmglChunkNode, %struct.chmcPmglChunkNode* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %2, align 8
  %9 = getelementptr inbounds %struct.chmcPmglChunkNode, %struct.chmcPmglChunkNode* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %2, align 8
  %11 = getelementptr inbounds %struct.chmcPmglChunkNode, %struct.chmcPmglChunkNode* %10, i32 0, i32 0
  store %struct.chmcPmglChunk* %11, %struct.chmcPmglChunk** %3, align 8
  %12 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %13 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @memcpy(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load i64, i64* @CHMC_PMGL_DATA_LEN, align 8
  %18 = add nsw i64 %17, 2
  %19 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %20 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 %18, i64* %21, align 8
  %22 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %23 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %26 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %29 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.chmcPmglChunk*, %struct.chmcPmglChunk** %3, align 8
  %32 = getelementptr inbounds %struct.chmcPmglChunk, %struct.chmcPmglChunk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @CHMC_PMGL_DATA_LEN, align 8
  %35 = call i32 @memset(i32 %33, i32 0, i64 %34)
  ret void
}

declare dso_local i32 @assert(%struct.chmcPmglChunkNode*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
