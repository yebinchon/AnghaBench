; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_submit_bh_mdl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_submit_bh_mdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i64, %struct.block_device* }
%struct.block_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@EXT2VCB = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@FO_FILE_MODIFIED = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PIN_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submit_bh_mdl(i32 %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 3
  %12 = load %struct.block_device*, %struct.block_device** %11, align 8
  store %struct.block_device* %12, %struct.block_device** %5, align 8
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXT2VCB, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @WRITE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i64 @IsVcbReadOnly(%struct.TYPE_9__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %98

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FO_FILE_MODIFIED, align 4
  %43 = call i32 @SetFlag(i32 %41, i32 %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @BLOCK_BITS, align 4
  %49 = shl i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* @BLOCK_SIZE, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32, i32* @PIN_WAIT, align 4
  %57 = call i64 @CcPreparePinWrite(%struct.TYPE_11__* %53, %struct.TYPE_10__* %9, i32 %54, i32 %55, i32 %56, i32* %7, i32* %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %36
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CcSetDirtyPinnedData(i32 %60, i32* null)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BLOCK_BITS, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @Ext2AddBlockExtent(%struct.TYPE_9__* %62, i32* null, i32 %66, i32 %70, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CcUnpinData(i32 %77)
  br label %95

79:                                               ; preds = %36
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BLOCK_BITS, align 4
  %93 = ashr i32 %91, %92
  %94 = call i32 @Ext2AddBlockExtent(%struct.TYPE_9__* %80, i32* null, i32 %84, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %79, %59
  br label %97

96:                                               ; preds = %2
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %35
  %99 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %100 = call i32 @unlock_buffer(%struct.buffer_head* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %102 = call i32 @put_bh(%struct.buffer_head* %101)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IsVcbReadOnly(%struct.TYPE_9__*) #1

declare dso_local i32 @SetFlag(i32, i32) #1

declare dso_local i64 @CcPreparePinWrite(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CcSetDirtyPinnedData(i32, i32*) #1

declare dso_local i32 @Ext2AddBlockExtent(%struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @CcUnpinData(i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
