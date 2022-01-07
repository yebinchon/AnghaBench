; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_create_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_create_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@ZFS_ERR_WRONG_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dmu_objset_create_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_create_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @dmu_tx_pool(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @strchr(i32 %19, i8 signext 64)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %143

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENAMETOOLONG, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %143

35:                                               ; preds = %25
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @dataset_nestcheck(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENAMETOOLONG, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %143

44:                                               ; preds = %35
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_dir_hold(i32* %45, i32 %48, i32 %49, %struct.TYPE_9__** %8, i8** %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %3, align 4
  br label %143

55:                                               ; preds = %44
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %59, i32 %60)
  %62 = load i32, i32* @EEXIST, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %143

64:                                               ; preds = %55
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dmu_objset_create_crypt_check(%struct.TYPE_9__* %65, i32 %68, i32* null)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %143

77:                                               ; preds = %64
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = load i32, i32* @ZFS_PROP_FILESYSTEM_LIMIT, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dsl_fs_ss_limit_check(%struct.TYPE_9__* %78, i32 1, i32 %79, i32* null, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %3, align 4
  br label %143

91:                                               ; preds = %77
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = call %struct.TYPE_11__* @dsl_dir_phys(%struct.TYPE_9__* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @dsl_dataset_hold_obj(i32 %94, i32 %98, i32 %99, i32** %9)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %143

108:                                              ; preds = %91
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @dmu_objset_from_ds(i32* %109, i32** %10)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @FTAG, align 4
  %116 = call i32 @dsl_dataset_rele(i32* %114, i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = load i32, i32* @FTAG, align 4
  %119 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %3, align 4
  br label %143

121:                                              ; preds = %108
  %122 = load i32*, i32** %10, align 8
  %123 = call i64 @dmu_objset_type(i32* %122)
  %124 = load i64, i64* @DMU_OST_ZFS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* @FTAG, align 4
  %129 = call i32 @dsl_dataset_rele(i32* %127, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %130, i32 %131)
  %133 = load i32, i32* @ZFS_ERR_WRONG_PARENT, align 4
  %134 = call i32 @SET_ERROR(i32 %133)
  store i32 %134, i32* %3, align 4
  br label %143

135:                                              ; preds = %121
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* @FTAG, align 4
  %138 = call i32 @dsl_dataset_rele(i32* %136, i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = load i32, i32* @FTAG, align 4
  %141 = call i32 @dsl_dir_rele(%struct.TYPE_9__* %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %135, %126, %113, %103, %86, %72, %58, %53, %41, %32, %22
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @dataset_nestcheck(i32) #1

declare dso_local i32 @dsl_dir_hold(i32*, i32, i32, %struct.TYPE_9__**, i8**) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dmu_objset_create_crypt_check(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @dsl_fs_ss_limit_check(%struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32, i32, i32, i32**) #1

declare dso_local %struct.TYPE_11__* @dsl_dir_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, i32**) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i64 @dmu_objset_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
