; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c___brelse.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c___brelse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.buffer_head = type { i32, i32, i32, i32, i32, i32, %struct.block_device* }
%struct.block_device = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@EXT2VCB = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Ext2Global = common dso_local global %struct.TYPE_12__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@DL_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"brelse: cnt=%u size=%u blk=%10.10xh bh=%p ptr=%p\0A\00", align 1
@g_jbh = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__brelse(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %5, i32 0, i32 6
  %7 = load %struct.block_device*, %struct.block_device** %6, align 8
  store %struct.block_device* %7, %struct.block_device** %3, align 8
  %8 = load %struct.block_device*, %struct.block_device** %3, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXT2VCB, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  br label %21

21:                                               ; preds = %25, %1
  %22 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %23 = call i64 @buffer_dirty(%struct.buffer_head* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @WRITE, align 4
  %27 = call i32 @ll_rw_block(i32 %26, i32 1, %struct.buffer_head** %2)
  br label %21

28:                                               ; preds = %21
  %29 = load %struct.block_device*, %struct.block_device** %3, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @ExAcquireResourceExclusiveLite(i32* %30, i32 %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 5
  %35 = call i64 @atomic_dec_and_test(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 5
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp eq i64 0, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.block_device*, %struct.block_device** %3, align 8
  %46 = getelementptr inbounds %struct.block_device, %struct.block_device* %45, i32 0, i32 0
  %47 = call i32 @ExReleaseResourceLite(i32* %46)
  br label %89

48:                                               ; preds = %37
  %49 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 4
  %51 = call i32 @KeQuerySystemTime(i32* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 3
  %54 = call i32 @RemoveEntryList(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 3
  %60 = call i32 @InsertTailList(i32* %57, i32* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @KeClearEvent(i32* %63)
  %65 = load %struct.block_device*, %struct.block_device** %3, align 8
  %66 = getelementptr inbounds %struct.block_device, %struct.block_device* %65, i32 0, i32 0
  %67 = call i32 @ExReleaseResourceLite(i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Ext2Global, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @KeSetEvent(i32* %70, i32 0, i32 %71)
  %73 = load i32, i32* @DL_BH, align 4
  %74 = call i64 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_jbh, i32 0, i32 0))
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @DEBUG(i32 %73, i8* %87)
  br label %89

89:                                               ; preds = %48, %44
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @KeQuerySystemTime(i32*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
