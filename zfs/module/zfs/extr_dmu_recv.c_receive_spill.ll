; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_spill.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (i32, i32)* }
%struct.receive_writer_arg = type { i64, i64, i32, i64, i64 }
%struct.drr_spill = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_DECRYPT = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i64 0, align 8
@dmu_ot_byteswap = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_spill*, %struct.TYPE_16__*)* @receive_spill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_spill(%struct.receive_writer_arg* %0, %struct.drr_spill* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.receive_writer_arg*, align 8
  %6 = alloca %struct.drr_spill*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %5, align 8
  store %struct.drr_spill* %1, %struct.drr_spill** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %14 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %20 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %23 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dmu_objset_spa(i32 %24)
  %26 = call i32 @spa_maxblocksize(i32 %25)
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %207

31:                                               ; preds = %18
  %32 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %33 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %38 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @DRR_SPILL_IS_UNMODIFIED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = call i32 @dmu_return_arcbuf(%struct.TYPE_16__* %43)
  store i32 0, i32* %4, align 4
  br label %207

45:                                               ; preds = %36, %31
  %46 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %47 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %52 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DMU_OT_IS_VALID(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %58 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %64 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %56, %50
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %4, align 4
  br label %207

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %73 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %76 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dmu_object_info(i32 %74, i64 %77, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @SET_ERROR(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %207

83:                                               ; preds = %71
  %84 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %85 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %88 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %93 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %96 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %83
  %98 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %99 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %102 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @FTAG, align 4
  %105 = call i32 @dmu_bonus_hold(i32 %100, i64 %103, i32 %104, %struct.TYPE_15__** %9)
  %106 = call i32 @VERIFY0(i32 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = load i32, i32* @DMU_READ_NO_DECRYPT, align 4
  %109 = load i32, i32* @FTAG, align 4
  %110 = call i32 @dmu_spill_hold_by_bonus(%struct.TYPE_15__* %107, i32 %108, i32 %109, %struct.TYPE_15__** %10)
  store i32 %110, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %97
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = load i32, i32* @FTAG, align 4
  %115 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %207

117:                                              ; preds = %97
  %118 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %119 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32* @dmu_tx_create(i32 %120)
  store i32* %121, i32** %8, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dmu_tx_hold_spill(i32* %122, i32 %125)
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* @TXG_WAIT, align 4
  %129 = call i32 @dmu_tx_assign(i32* %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %117
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = load i32, i32* @FTAG, align 4
  %135 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %133, i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %137 = load i32, i32* @FTAG, align 4
  %138 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %136, i32 %137)
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @dmu_tx_abort(i32* %139)
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %4, align 4
  br label %207

142:                                              ; preds = %117
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %147 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %142
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @dmu_buf_will_fill(%struct.TYPE_15__* %151, i32* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %155 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %156 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = call i64 @dbuf_spill_set_blksz(%struct.TYPE_15__* %154, i32 %157, i32* %158)
  %160 = icmp eq i64 0, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @VERIFY(i32 %161)
  br label %163

163:                                              ; preds = %150, %142
  %164 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %165 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %163
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = call i32 @arc_is_encrypted(%struct.TYPE_16__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %193, label %172

172:                                              ; preds = %168
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %174 = call i64 @arc_get_compression(%struct.TYPE_16__* %173)
  %175 = load i64, i64* @ZIO_COMPRESS_OFF, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %179 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @DMU_OT_BYTESWAP(i32 %180)
  store i64 %181, i64* %12, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dmu_ot_byteswap, align 8
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32 (i32, i32)*, i32 (i32, i32)** %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %191 = call i32 @DRR_SPILL_PAYLOAD_SIZE(%struct.drr_spill* %190)
  %192 = call i32 %186(i32 %189, i32 %191)
  br label %193

193:                                              ; preds = %177, %172, %168, %163
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %195 = bitcast %struct.TYPE_15__* %194 to i32*
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @dbuf_assign_arcbuf(i32* %195, %struct.TYPE_16__* %196, i32* %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %200 = load i32, i32* @FTAG, align 4
  %201 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %199, i32 %200)
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %203 = load i32, i32* @FTAG, align 4
  %204 = call i32 @dmu_buf_rele(%struct.TYPE_15__* %202, i32 %203)
  %205 = load i32*, i32** %8, align 8
  %206 = call i32 @dmu_tx_commit(i32* %205)
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %193, %132, %112, %80, %67, %42, %28
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @spa_maxblocksize(i32) #1

declare dso_local i32 @dmu_objset_spa(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @DRR_SPILL_IS_UNMODIFIED(i32) #1

declare dso_local i32 @dmu_return_arcbuf(%struct.TYPE_16__*) #1

declare dso_local i32 @DMU_OT_IS_VALID(i32) #1

declare dso_local i64 @dmu_object_info(i32, i64, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(i32, i64, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dmu_spill_hold_by_bonus(%struct.TYPE_15__*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_spill(i32*, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_buf_will_fill(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dbuf_spill_set_blksz(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @arc_is_encrypted(%struct.TYPE_16__*) #1

declare dso_local i64 @arc_get_compression(%struct.TYPE_16__*) #1

declare dso_local i64 @DMU_OT_BYTESWAP(i32) #1

declare dso_local i32 @DRR_SPILL_PAYLOAD_SIZE(%struct.drr_spill*) #1

declare dso_local i32 @dbuf_assign_arcbuf(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
