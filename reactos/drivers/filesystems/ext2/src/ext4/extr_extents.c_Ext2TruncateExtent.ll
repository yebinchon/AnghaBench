; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_extents.c_Ext2TruncateExtent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_extents.c_Ext2TruncateExtent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@MCB_ZONE_INITED = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2TruncateExtent(i32 %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BLOCK_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @BLOCK_BITS, align 4
  %26 = ashr i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @ext4_ext_truncate(i32 %31, %struct.TYPE_15__* %33, i64 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @Ext2RemoveBlockExtent(%struct.TYPE_13__* %39, %struct.TYPE_14__* %40, i64 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MCB_ZONE_INITED, align 4
  %50 = call i32 @ClearFlag(i32 %48, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = call i32 @Ext2ClearAllExtents(i32* %52)
  br label %54

54:                                               ; preds = %45, %38
  store i64 0, i64* %10, align 8
  br label %57

55:                                               ; preds = %4
  %56 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @NT_SUCCESS(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @BLOCK_BITS, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %57
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %70
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = call i32 @Ext2SaveInode(i32 %89, %struct.TYPE_13__* %90, %struct.TYPE_15__* %92)
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @ext4_ext_truncate(i32, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @Ext2RemoveBlockExtent(%struct.TYPE_13__*, %struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

declare dso_local i32 @Ext2ClearAllExtents(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @Ext2SaveInode(i32, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
