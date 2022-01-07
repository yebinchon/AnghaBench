; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_clone_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_clone_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dmu_objset_clone_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_clone_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @dmu_tx_pool(i32* %14)
  store i32* %15, i32** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @strchr(i32 %18, i8 signext 64)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %104

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strlen(i32 %27)
  %29 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ENAMETOOLONG, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %24
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @dsl_dir_hold(i32* %35, i32 %38, i32 %39, i32** %7, i8** %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %34
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @dsl_dir_rele(i32* %49, i32 %50)
  %52 = load i32, i32* @EEXIST, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %104

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @ZFS_PROP_FILESYSTEM_LIMIT, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dsl_fs_ss_limit_check(i32* %55, i32 1, i32 %56, i32* null, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dir_rele(i32* %64, i32 %65)
  %67 = load i32, i32* @EDQUOT, align 4
  %68 = call i32 @SET_ERROR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %104

69:                                               ; preds = %54
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dsl_dataset_hold(i32* %70, i32 %73, i32 %74, %struct.TYPE_5__** %10)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @FTAG, align 4
  %81 = call i32 @dsl_dir_rele(i32* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %104

83:                                               ; preds = %69
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_dataset_rele(%struct.TYPE_5__* %89, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @FTAG, align 4
  %94 = call i32 @dsl_dir_rele(i32* %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %104

97:                                               ; preds = %83
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @dsl_dataset_rele(%struct.TYPE_5__* %98, i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @FTAG, align 4
  %103 = call i32 @dsl_dir_rele(i32* %101, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %97, %88, %78, %63, %48, %43, %31, %21
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @dsl_dir_hold(i32*, i32, i32, i32**, i8**) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32 @dsl_fs_ss_limit_check(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
