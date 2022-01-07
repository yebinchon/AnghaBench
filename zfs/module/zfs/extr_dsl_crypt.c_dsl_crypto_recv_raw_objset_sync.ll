; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_objset_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_objset_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i8**, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"mdn_compress\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mdn_checksum\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mdn_nlevels\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mdn_blksz\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mdn_indblkshift\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"mdn_maxblkid\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"portable_mac\00", align 1
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ZIO_OBJSET_MAC_LEN = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_MUSTSUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32, i32*, %struct.TYPE_30__*)* @dsl_crypto_recv_raw_objset_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_crypto_recv_raw_objset_sync(%struct.TYPE_28__* %0, i32 %1, i32* %2, %struct.TYPE_30__* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %8, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %9, align 8
  %25 = load i8*, i8** @B_FALSE, align 8
  store i8* %25, i8** %21, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = call i32 @dmu_objset_from_ds(%struct.TYPE_28__* %26, %struct.TYPE_26__** %10)
  %28 = call i32 @VERIFY0(i32 %27)
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %30 = call %struct.TYPE_29__* @DMU_META_DNODE(%struct.TYPE_26__* %29)
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @fnvlist_lookup_uint64(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %15, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @fnvlist_lookup_uint64(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %16, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i8* @fnvlist_lookup_uint64(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %17, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i8* @fnvlist_lookup_uint64(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %18, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @fnvlist_lookup_uint64(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %40, i8** %19, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @fnvlist_lookup_uint64(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i8* %42, i8** %20, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @nvlist_lookup_uint8_array(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32** %13, i32* %14)
  %45 = call i32 @VERIFY0(i32 %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = load i32, i32* @RW_READER, align 4
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @rrw_enter(i32* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_28__* %51)
  %53 = call i64 @BP_IS_HOLE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_28__* %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %67 = call i32 @dmu_objset_create_impl_dnstats(i32 %58, %struct.TYPE_28__* %59, i32 %61, i32 %62, i8* %63, i8* %64, i8* %65, %struct.TYPE_30__* %66)
  %68 = load i8*, i8** @B_TRUE, align 8
  store i8* %68, i8** %21, align 8
  br label %69

69:                                               ; preds = %55, %4
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 1
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @rrw_exit(i32* %71, i32 %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = call i32 @arc_release(i32 %76, i32* %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %87 = call i32 @bcopy(i32* %80, i32 %85, i32 %86)
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %94 = call i32 @bzero(i32 %92, i32 %93)
  %95 = load i8*, i8** @B_TRUE, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TXG_MASK, align 8
  %103 = and i64 %101, %102
  %104 = getelementptr inbounds i8*, i8** %98, i64 %103
  store i8* %95, i8** %104, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  %113 = load i32, i32* @RW_WRITER, align 4
  %114 = call i32 @rw_enter(i32* %112, i32 %113)
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %118 = load i8*, i8** @B_FALSE, align 8
  %119 = load i8*, i8** @B_TRUE, align 8
  %120 = call i32 @dnode_new_blkid(%struct.TYPE_29__* %115, i8* %116, %struct.TYPE_30__* %117, i8* %118, i8* %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = call i32 @rw_exit(i32* %122)
  %124 = load i8*, i8** %21, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %69
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %129 = call i32 @dsl_dataset_dirty(%struct.TYPE_28__* %127, %struct.TYPE_30__* %128)
  br label %151

130:                                              ; preds = %69
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ZIO_FLAG_MUSTSUCCEED, align 4
  %135 = call i32* @zio_root(i32 %133, i32* null, i32* null, i32 %134)
  store i32* %135, i32** %12, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %139 = call i32 @dsl_dataset_sync(%struct.TYPE_28__* %136, i32* %137, %struct.TYPE_30__* %138)
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @zio_wait(i32* %140)
  %142 = call i32 @VERIFY0(i32 %141)
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %147 = call i32 @dmu_buf_add_ref(i32 %145, %struct.TYPE_28__* %146)
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %150 = call i32 @dsl_dataset_sync_done(%struct.TYPE_28__* %148, %struct.TYPE_30__* %149)
  br label %151

151:                                              ; preds = %130, %126
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_28__*, %struct.TYPE_26__**) #1

declare dso_local %struct.TYPE_29__* @DMU_META_DNODE(%struct.TYPE_26__*) #1

declare dso_local i8* @fnvlist_lookup_uint64(i32*, i8*) #1

declare dso_local i32 @nvlist_lookup_uint8_array(i32*, i8*, i32**, i32*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i64 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_28__*) #1

declare dso_local i32 @dmu_objset_create_impl_dnstats(i32, %struct.TYPE_28__*, i32, i32, i8*, i8*, i8*, %struct.TYPE_30__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @arc_release(i32, i32*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dnode_new_blkid(%struct.TYPE_29__*, i8*, %struct.TYPE_30__*, i8*, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dsl_dataset_dirty(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32* @zio_root(i32, i32*, i32*, i32) #1

declare dso_local i32 @dsl_dataset_sync(%struct.TYPE_28__*, i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @dmu_buf_add_ref(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @dsl_dataset_sync_done(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
