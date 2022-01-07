; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_submit_bh_pin.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_submit_bh_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i64, i64, i64, %struct.block_device* }
%struct.block_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@EXT2VCB = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@FO_FILE_MODIFIED = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submit_bh_pin(i32 %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 4
  %11 = load %struct.block_device*, %struct.block_device** %10, align 8
  store %struct.block_device* %11, %struct.block_device** %5, align 8
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXT2VCB, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %2
  %33 = phi i1 [ false, %2 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @WRITE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = call i64 @IsVcbReadOnly(%struct.TYPE_9__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %80

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FO_FILE_MODIFIED, align 4
  %51 = call i32 @SetFlag(i32 %49, i32 %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @BLOCK_BITS, align 4
  %57 = shl i32 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @CcSetDirtyPinnedData(i64 %61, i32* null)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BLOCK_BITS, align 4
  %76 = ashr i32 %74, %75
  %77 = call i32 @Ext2AddBlockExtent(%struct.TYPE_9__* %63, i32* null, i32 %67, i32 %71, i32 %76)
  br label %79

78:                                               ; preds = %32
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %82 = call i32 @unlock_buffer(%struct.buffer_head* %81)
  %83 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %84 = call i32 @put_bh(%struct.buffer_head* %83)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IsVcbReadOnly(%struct.TYPE_9__*) #1

declare dso_local i32 @SetFlag(i32, i32) #1

declare dso_local i32 @CcSetDirtyPinnedData(i64, i32*) #1

declare dso_local i32 @Ext2AddBlockExtent(%struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
