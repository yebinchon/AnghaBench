; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_get_block_bh_pin.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_get_block_bh_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64, i32, i32*, i64, i64, %struct.block_device* }
%struct.block_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.list_head = type { i32 }

@TOTAL_BLOCKS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PIN_WAIT = common dso_local global i32 0, align 4
@DL_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"getblk: Vcb=%p bhcount=%u block=%u bh=%p ptr=%p.\0A\00", align 1
@g_jbh = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @get_block_bh_pin(%struct.block_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.block_device*, %struct.block_device** %5, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @TOTAL_BLOCKS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 (...) @DbgBreak()
  br label %176

22:                                               ; preds = %4
  %23 = load %struct.block_device*, %struct.block_device** %5, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @ExAcquireSharedStarveExclusive(i32* %24, i32 %25)
  %27 = load %struct.block_device*, %struct.block_device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.buffer_head* @buffer_head_search(%struct.block_device* %27, i64 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %13, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %12, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i32 @get_bh(%struct.buffer_head* %34)
  %36 = load %struct.block_device*, %struct.block_device** %5, align 8
  %37 = getelementptr inbounds %struct.block_device, %struct.block_device* %36, i32 0, i32 0
  %38 = call i32 @ExReleaseResourceLite(i32* %37)
  br label %176

39:                                               ; preds = %22
  %40 = load %struct.block_device*, %struct.block_device** %5, align 8
  %41 = getelementptr inbounds %struct.block_device, %struct.block_device* %40, i32 0, i32 0
  %42 = call i32 @ExReleaseResourceLite(i32* %41)
  %43 = call %struct.buffer_head* (...) @new_buffer_head()
  store %struct.buffer_head* %43, %struct.buffer_head** %12, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %176

47:                                               ; preds = %39
  %48 = load %struct.block_device*, %struct.block_device** %5, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 5
  store %struct.block_device* %48, %struct.block_device** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %105, %87, %47
  %60 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @BLOCK_BITS, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %59
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* @PIN_WAIT, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 3
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 2
  %84 = bitcast i32** %83 to i32*
  %85 = call i32 @CcPreparePinWrite(i32 %74, %struct.TYPE_7__* %10, i64 %77, i32 %78, i32 %79, i64* %81, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %71
  %88 = call i32 @Ext2Sleep(i32 100)
  br label %59

89:                                               ; preds = %71
  br label %110

90:                                               ; preds = %59
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @PIN_WAIT, align 4
  %98 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 3
  %100 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %101 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %100, i32 0, i32 2
  %102 = bitcast i32** %101 to i32*
  %103 = call i32 @CcPinRead(i32 %93, %struct.TYPE_7__* %10, i64 %96, i32 %97, i64* %99, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %90
  %106 = call i32 @Ext2Sleep(i32 100)
  br label %59

107:                                              ; preds = %90
  %108 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %109 = call i32 @set_buffer_uptodate(%struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %107, %89
  %111 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %120 = ptrtoint %struct.buffer_head* %119 to i32
  %121 = or i32 %120, 3
  %122 = call i32 @CcSetBcbOwnerPointer(i64 %118, i32 %121)
  br label %123

123:                                              ; preds = %115, %110
  %124 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %130 = call i32 @free_buffer_head(%struct.buffer_head* %129)
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %176

131:                                              ; preds = %123
  %132 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %133 = call i32 @get_bh(%struct.buffer_head* %132)
  %134 = load i32, i32* @DL_BH, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = call i32 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_jbh, i32 0, i32 0))
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %140 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = call i32 @DEBUG(i32 %134, i8* %142)
  %144 = load %struct.block_device*, %struct.block_device** %5, align 8
  %145 = getelementptr inbounds %struct.block_device, %struct.block_device* %144, i32 0, i32 0
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @ExAcquireResourceExclusiveLite(i32* %145, i32 %146)
  %148 = load %struct.block_device*, %struct.block_device** %5, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call %struct.buffer_head* @buffer_head_search(%struct.block_device* %148, i64 %149)
  store %struct.buffer_head* %150, %struct.buffer_head** %13, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %152 = icmp ne %struct.buffer_head* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %131
  %154 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %155 = call i32 @get_bh(%struct.buffer_head* %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %157 = call i32 @free_buffer_head(%struct.buffer_head* %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %158, %struct.buffer_head** %12, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 1
  %161 = call i32 @RemoveEntryList(i32* %160)
  %162 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 1
  %164 = call i32 @InitializeListHead(i32* %163)
  %165 = load %struct.block_device*, %struct.block_device** %5, align 8
  %166 = getelementptr inbounds %struct.block_device, %struct.block_device* %165, i32 0, i32 0
  %167 = call i32 @ExReleaseResourceLite(i32* %166)
  br label %176

168:                                              ; preds = %131
  %169 = load %struct.block_device*, %struct.block_device** %5, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %171 = call i32 @buffer_head_insert(%struct.block_device* %169, %struct.buffer_head* %170)
  br label %172

172:                                              ; preds = %168
  %173 = load %struct.block_device*, %struct.block_device** %5, align 8
  %174 = getelementptr inbounds %struct.block_device, %struct.block_device* %173, i32 0, i32 0
  %175 = call i32 @ExReleaseResourceLite(i32* %174)
  br label %176

176:                                              ; preds = %172, %153, %128, %46, %32, %20
  %177 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  ret %struct.buffer_head* %177
}

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i32 @ExAcquireSharedStarveExclusive(i32*, i32) #1

declare dso_local %struct.buffer_head* @buffer_head_search(%struct.block_device*, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local %struct.buffer_head* @new_buffer_head(...) #1

declare dso_local i32 @CcPreparePinWrite(i32, %struct.TYPE_7__*, i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @Ext2Sleep(i32) #1

declare dso_local i32 @CcPinRead(i32, %struct.TYPE_7__*, i64, i32, i64*, i32*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @CcSetBcbOwnerPointer(i64, i32) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @buffer_head_insert(%struct.block_device*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
