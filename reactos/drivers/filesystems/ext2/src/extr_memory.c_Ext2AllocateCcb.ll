; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateCcb.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateCcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@Ext2Global = common dso_local global %struct.TYPE_15__* null, align 8
@DL_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ExtAllocateCcb: Ccb created: %ph.\0A\00", align 1
@EXT2CCB = common dso_local global i32 0, align 4
@DL_INF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ExtAllocateCcb: Ccb SymLink: %wZ.\0A\00", align 1
@PS_CCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @Ext2AllocateCcb(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Ext2Global, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = call i64 @ExAllocateFromNPagedLookasideList(i32* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %66

14:                                               ; preds = %2
  %15 = load i32, i32* @DL_RES, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = bitcast %struct.TYPE_14__* %16 to i8*
  %18 = call i32 @DEBUG(i32 %15, i8* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %19, i32 4)
  %21 = load i32, i32* @EXT2CCB, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %14
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = call i32 @Ext2ReferMcb(%struct.TYPE_13__* %43)
  %45 = load i32, i32* @DL_INF, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @DEBUG(i32 %45, i8* %50)
  br label %52

52:                                               ; preds = %36, %14
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @PS_CCB, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = call i32 @INC_MEM_COUNT(i32 %62, %struct.TYPE_14__* %63, i32 4)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %3, align 8
  br label %66

66:                                               ; preds = %52, %13
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %67
}

declare dso_local i64 @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @Ext2ReferMcb(%struct.TYPE_13__*) #1

declare dso_local i32 @INC_MEM_COUNT(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
