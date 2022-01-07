; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_get_block_bh_mdl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_get_block_bh_mdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.buffer_head = type { i64, i32, i32*, %struct.TYPE_11__*, i64, %struct.block_device* }
%struct.TYPE_11__ = type { i32 }
%struct.block_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.list_head = type { i32 }

@TOTAL_BLOCKS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PIN_WAIT = common dso_local global i32 0, align 4
@IoModifyAccess = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@MmNonCached = common dso_local global i32 0, align 4
@HighPagePriority = common dso_local global i32 0, align 4
@DL_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"getblk: Vcb=%p bhcount=%u block=%u bh=%p mdl=%p (Flags:%xh VA:%p)\0A\00", align 1
@g_jbh = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @get_block_bh_mdl(%struct.block_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.block_device*, %struct.block_device** %5, align 8
  %17 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TOTAL_BLOCKS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 (...) @DbgBreak()
  br label %192

24:                                               ; preds = %4
  %25 = load %struct.block_device*, %struct.block_device** %5, align 8
  %26 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i32 0, i32 0
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @ExAcquireSharedStarveExclusive(i32* %26, i32 %27)
  %29 = load %struct.block_device*, %struct.block_device** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.buffer_head* @buffer_head_search(%struct.block_device* %29, i64 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %15, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %35, %struct.buffer_head** %14, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %37 = call i32 @get_bh(%struct.buffer_head* %36)
  %38 = load %struct.block_device*, %struct.block_device** %5, align 8
  %39 = getelementptr inbounds %struct.block_device, %struct.block_device* %38, i32 0, i32 0
  %40 = call i32 @ExReleaseResourceLite(i32* %39)
  br label %192

41:                                               ; preds = %24
  %42 = load %struct.block_device*, %struct.block_device** %5, align 8
  %43 = getelementptr inbounds %struct.block_device, %struct.block_device* %42, i32 0, i32 0
  %44 = call i32 @ExReleaseResourceLite(i32* %43)
  %45 = call %struct.buffer_head* (...) @new_buffer_head()
  store %struct.buffer_head* %45, %struct.buffer_head** %14, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %192

49:                                               ; preds = %41
  %50 = load %struct.block_device*, %struct.block_device** %5, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 5
  store %struct.block_device* %50, %struct.block_device** %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %97, %84, %49
  %62 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @BLOCK_BITS, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* @PIN_WAIT, align 4
  %82 = call i32 @CcPreparePinWrite(i32 %76, %struct.TYPE_9__* %10, i64 %79, i32 %80, i32 %81, i32** %11, i32** %12)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = call i32 @Ext2Sleep(i32 100)
  br label %61

86:                                               ; preds = %73
  br label %102

87:                                               ; preds = %61
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @PIN_WAIT, align 4
  %95 = call i32 @CcPinRead(i32 %90, %struct.TYPE_9__* %10, i64 %93, i32 %94, i32** %11, i32** %12)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = call i32 @Ext2Sleep(i32 100)
  br label %61

99:                                               ; preds = %87
  %100 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %101 = call i32 @set_buffer_uptodate(%struct.buffer_head* %100)
  br label %102

102:                                              ; preds = %99, %86
  %103 = load i32*, i32** %12, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %105 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @IoModifyAccess, align 4
  %108 = call %struct.TYPE_11__* @Ext2CreateMdl(i32* %103, i64 %106, i32 %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 3
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %110, align 8
  %111 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 3
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = icmp ne %struct.TYPE_11__* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  %116 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* @KernelMode, align 4
  %120 = load i32, i32* @MmNonCached, align 4
  %121 = load i32, i32* @FALSE, align 4
  %122 = load i32, i32* @HighPagePriority, align 4
  %123 = call i32* @MmMapLockedPagesSpecifyCache(%struct.TYPE_11__* %118, i32 %119, i32 %120, i32* null, i32 %121, i32 %122)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %115, %102
  %127 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = icmp ne %struct.TYPE_11__* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %138 = call i32 @free_buffer_head(%struct.buffer_head* %137)
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  br label %192

139:                                              ; preds = %131
  %140 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %141 = call i32 @get_bh(%struct.buffer_head* %140)
  %142 = load i32, i32* @DL_BH, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = call i32 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_jbh, i32 0, i32 0))
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %147 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 3
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %156 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = call i32 @DEBUG(i32 %142, i8* %158)
  %160 = load %struct.block_device*, %struct.block_device** %5, align 8
  %161 = getelementptr inbounds %struct.block_device, %struct.block_device* %160, i32 0, i32 0
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @ExAcquireResourceExclusiveLite(i32* %161, i32 %162)
  %164 = load %struct.block_device*, %struct.block_device** %5, align 8
  %165 = load i64, i64* %6, align 8
  %166 = call %struct.buffer_head* @buffer_head_search(%struct.block_device* %164, i64 %165)
  store %struct.buffer_head* %166, %struct.buffer_head** %15, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %168 = icmp ne %struct.buffer_head* %167, null
  br i1 %168, label %169, label %184

169:                                              ; preds = %139
  %170 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %171 = call i32 @free_buffer_head(%struct.buffer_head* %170)
  %172 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %172, %struct.buffer_head** %14, align 8
  %173 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %174 = call i32 @get_bh(%struct.buffer_head* %173)
  %175 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 1
  %177 = call i32 @RemoveEntryList(i32* %176)
  %178 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %179 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %178, i32 0, i32 1
  %180 = call i32 @InitializeListHead(i32* %179)
  %181 = load %struct.block_device*, %struct.block_device** %5, align 8
  %182 = getelementptr inbounds %struct.block_device, %struct.block_device* %181, i32 0, i32 0
  %183 = call i32 @ExReleaseResourceLite(i32* %182)
  br label %192

184:                                              ; preds = %139
  %185 = load %struct.block_device*, %struct.block_device** %5, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %187 = call i32 @buffer_head_insert(%struct.block_device* %185, %struct.buffer_head* %186)
  br label %188

188:                                              ; preds = %184
  %189 = load %struct.block_device*, %struct.block_device** %5, align 8
  %190 = getelementptr inbounds %struct.block_device, %struct.block_device* %189, i32 0, i32 0
  %191 = call i32 @ExReleaseResourceLite(i32* %190)
  br label %192

192:                                              ; preds = %188, %169, %136, %48, %34, %22
  %193 = load i32*, i32** %11, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @CcUnpinData(i32* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  ret %struct.buffer_head* %199
}

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i32 @ExAcquireSharedStarveExclusive(i32*, i32) #1

declare dso_local %struct.buffer_head* @buffer_head_search(%struct.block_device*, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local %struct.buffer_head* @new_buffer_head(...) #1

declare dso_local i32 @CcPreparePinWrite(i32, %struct.TYPE_9__*, i64, i32, i32, i32**, i32**) #1

declare dso_local i32 @Ext2Sleep(i32) #1

declare dso_local i32 @CcPinRead(i32, %struct.TYPE_9__*, i64, i32, i32**, i32**) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_11__* @Ext2CreateMdl(i32*, i64, i32) #1

declare dso_local i32* @MmMapLockedPagesSpecifyCache(%struct.TYPE_11__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @buffer_head_insert(%struct.block_device*, %struct.buffer_head*) #1

declare dso_local i32 @CcUnpinData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
