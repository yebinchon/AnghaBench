; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_sync_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_28__*, %struct.TYPE_28__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 (%struct.TYPE_24__*, i32)*, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_28__* }

@DR_IN_DMU_SYNC = common dso_local global i64 0, align 8
@ZIO_FLAG_NOPWRITE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i64 0, align 8
@zio_checksum_table = common dso_local global %struct.TYPE_19__* null, align 8
@ZCHECKSUM_FLAG_NOPWRITE = common dso_local global i32 0, align 4
@DR_OVERRIDDEN = common dso_local global i64 0, align 8
@DR_NOT_OVERRIDDEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32*, i8*)* @dmu_sync_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_sync_done(%struct.TYPE_23__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %7, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %8, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %9, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %10, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @zil_lwb_add_block(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %3
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = call i32 @mutex_enter(i32* %39)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DR_IN_DMU_SYNC, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %152

54:                                               ; preds = %37
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ZIO_FLAG_NOPWRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %54
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %76, align 8
  store %struct.TYPE_28__* %77, %struct.TYPE_28__** %11, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 4
  store %struct.TYPE_28__* %79, %struct.TYPE_28__** %12, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %81 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_28__* %80)
  store i64 %81, i64* %13, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %84 = call i32 @BP_EQUAL(%struct.TYPE_28__* %82, %struct.TYPE_28__* %83)
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = call i32 @BP_EQUAL(%struct.TYPE_28__* %86, %struct.TYPE_28__* %89)
  %91 = call i32 @VERIFY(i32 %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ZIO_COMPRESS_OFF, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** @zio_checksum_table, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ZCHECKSUM_FLAG_NOPWRITE, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @VERIFY(i32 %106)
  br label %108

108:                                              ; preds = %74, %54
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = bitcast %struct.TYPE_28__* %112 to i8*
  %117 = bitcast %struct.TYPE_28__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  %118 = load i64, i64* @DR_OVERRIDDEN, align 8
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  store i32 %126, i32* %130, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = call i64 @BP_IS_HOLE(%struct.TYPE_28__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %108
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = call i32 @BP_ZERO(%struct.TYPE_28__* %149)
  br label %151

151:                                              ; preds = %145, %137, %108
  br label %158

152:                                              ; preds = %37
  %153 = load i64, i64* @DR_NOT_OVERRIDDEN, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  store i64 %153, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %151
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 1
  %161 = call i32 @cv_broadcast(i32* %160)
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = call i32 @mutex_exit(i32* %163)
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %166, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 %167(%struct.TYPE_24__* %170, i32 %173)
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %176 = call i32 @kmem_free(%struct.TYPE_25__* %175, i32 24)
  ret void
}

declare dso_local i32 @zil_lwb_add_block(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_GET_CHECKSUM(%struct.TYPE_28__*) #1

declare dso_local i32 @BP_EQUAL(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_28__*) #1

declare dso_local i32 @BP_ZERO(%struct.TYPE_28__*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
