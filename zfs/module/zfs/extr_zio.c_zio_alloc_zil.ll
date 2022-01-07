; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_alloc_zil.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_alloc_zil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@DMU_OT_INTENT_LOG = common dso_local global i32 0, align 4
@METASLAB_FASTWRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@SPA_VERSION_SLIM_ZIL = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_ZILOG2 = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_ZILOG = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@ZIO_DATA_IV_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: zil block allocation failure: size %llu, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_alloc_zil(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = call i64 @spa_syncing_txg(%struct.TYPE_15__* %19)
  %21 = icmp sgt i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = call i32 @metaslab_trace_init(i32* %14)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @DMU_OT_INTENT_LOG, align 4
  %27 = call i32 @BP_SET_TYPE(i32* %25, i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @BP_SET_PSIZE(i32* %28, i64 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @BP_SET_LEVEL(i32* %31, i32 0)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = call i32 @spa_log_class(%struct.TYPE_15__* %34)
  %36 = load i64, i64* %11, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @METASLAB_FASTWRITE, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cityhash4(i32 0, i32 0, i32 0, i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = call i32 @metaslab_alloc(%struct.TYPE_15__* %33, i32 %35, i64 %36, i32* %37, i32 1, i64 %38, i32* null, i32 %39, i32* %14, i32* null, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %6
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  br label %81

56:                                               ; preds = %6
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = call i32 @spa_normal_class(%struct.TYPE_15__* %58)
  %60 = load i64, i64* %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @METASLAB_FASTWRITE, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cityhash4(i32 0, i32 0, i32 0, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %69, %72
  %74 = call i32 @metaslab_alloc(%struct.TYPE_15__* %57, i32 %59, i64 %60, i32* %61, i32 1, i64 %62, i32* null, i32 %63, i32* %14, i32* null, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %56
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %56
  br label %81

81:                                               ; preds = %80, %53
  %82 = call i32 @metaslab_trace_fini(i32* %14)
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %143

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @BP_SET_LSIZE(i32* %86, i64 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @BP_SET_PSIZE(i32* %89, i64 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %94 = call i32 @BP_SET_COMPRESS(i32* %92, i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = call i64 @spa_version(%struct.TYPE_15__* %96)
  %98 = load i64, i64* @SPA_VERSION_SLIM_ZIL, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* @ZIO_CHECKSUM_ZILOG2, align 4
  br label %104

102:                                              ; preds = %85
  %103 = load i32, i32* @ZIO_CHECKSUM_ZILOG, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = call i32 @BP_SET_CHECKSUM(i32* %95, i32 %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* @DMU_OT_INTENT_LOG, align 4
  %109 = call i32 @BP_SET_TYPE(i32* %107, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @BP_SET_LEVEL(i32* %110, i32 0)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @BP_SET_DEDUP(i32* %112, i32 0)
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %116 = call i32 @BP_SET_BYTEORDER(i32* %114, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %104
  %122 = load i32, i32* @ZIO_DATA_IV_LEN, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %15, align 8
  %125 = alloca i32, i64 %123, align 16
  store i64 %123, i64* %16, align 8
  %126 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %17, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* @B_TRUE, align 4
  %131 = call i32 @BP_SET_CRYPT(i32* %129, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = call i32 @dmu_objset_id(%struct.TYPE_16__* %133)
  %135 = call i32 @spa_crypt_get_salt(%struct.TYPE_15__* %132, i32 %134, i32* %128)
  %136 = call i32 @VERIFY0(i32 %135)
  %137 = call i32 @zio_crypt_generate_iv(i32* %125)
  %138 = call i32 @VERIFY0(i32 %137)
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @zio_crypt_encode_params_bp(i32* %139, i32* %128, i32* %125)
  %141 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %121, %104
  br label %149

143:                                              ; preds = %81
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = call i32 @spa_name(%struct.TYPE_15__* %144)
  %146 = load i64, i64* %11, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %142
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_syncing_txg(%struct.TYPE_15__*) #1

declare dso_local i32 @metaslab_trace_init(i32*) #1

declare dso_local i32 @BP_SET_TYPE(i32*, i32) #1

declare dso_local i32 @BP_SET_PSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_LEVEL(i32*, i32) #1

declare dso_local i32 @metaslab_alloc(%struct.TYPE_15__*, i32, i64, i32*, i32, i64, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @spa_log_class(%struct.TYPE_15__*) #1

declare dso_local i32 @cityhash4(i32, i32, i32, i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_15__*) #1

declare dso_local i32 @metaslab_trace_fini(i32*) #1

declare dso_local i32 @BP_SET_LSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_COMPRESS(i32*, i32) #1

declare dso_local i32 @BP_SET_CHECKSUM(i32*, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_15__*) #1

declare dso_local i32 @BP_SET_DEDUP(i32*, i32) #1

declare dso_local i32 @BP_SET_BYTEORDER(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BP_SET_CRYPT(i32*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @spa_crypt_get_salt(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @dmu_objset_id(%struct.TYPE_16__*) #1

declare dso_local i32 @zio_crypt_generate_iv(i32*) #1

declare dso_local i32 @zio_crypt_encode_params_bp(i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i64, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
