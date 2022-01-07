; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_free_buffer_head.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_free_buffer_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@DL_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bh=%p mdl=%p (Flags:%xh VA:%p) released.\0A\00", align 1
@MDL_MAPPED_TO_SYSTEM_VA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bh=%p freed.\0A\00", align 1
@PS_BUFF_HEAD = common dso_local global i32 0, align 4
@g_jbh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_buffer_head(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %3 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %4 = icmp ne %struct.buffer_head* %3, null
  br i1 %4, label %5, label %77

5:                                                ; preds = %1
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %52

10:                                               ; preds = %5
  %11 = load i32, i32* @DL_BH, align 4
  %12 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DEBUG(i32 %11, i8* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MDL_MAPPED_TO_SYSTEM_VA, align 4
  %35 = call i64 @IsFlagOn(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %10
  %38 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @MmUnmapLockedPages(i32 %42, %struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %37, %10
  %48 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @Ext2DestroyMdl(%struct.TYPE_5__* %50)
  br label %52

52:                                               ; preds = %47, %5
  %53 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %62 = ptrtoint %struct.buffer_head* %61 to i32
  %63 = or i32 %62, 3
  %64 = call i32 @CcUnpinDataForThread(i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* @DL_BH, align 4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %68 = bitcast %struct.buffer_head* %67 to i8*
  %69 = call i32 @DEBUG(i32 %66, i8* %68)
  %70 = load i32, i32* @PS_BUFF_HEAD, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %72 = call i32 @DEC_MEM_COUNT(i32 %70, %struct.buffer_head* %71, i32 16)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_jbh, i32 0, i32 1), align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %75 = call i32 @kmem_cache_free(i32 %73, %struct.buffer_head* %74)
  %76 = call i32 @atomic_dec(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_jbh, i32 0, i32 0))
  br label %77

77:                                               ; preds = %65, %1
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i64 @IsFlagOn(i32, i32) #1

declare dso_local i32 @MmUnmapLockedPages(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @Ext2DestroyMdl(%struct.TYPE_5__*) #1

declare dso_local i32 @CcUnpinDataForThread(i64, i32) #1

declare dso_local i32 @DEC_MEM_COUNT(i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.buffer_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
