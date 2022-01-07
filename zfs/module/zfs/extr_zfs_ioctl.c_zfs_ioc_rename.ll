; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@recursive_unmount = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_rename(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 7
  store i8 0, i8* %17, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  store i8 0, i8* %21, align 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @dataset_namecheck(i8* %24, i32* null, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @dataset_namecheck(i8* %30, i32* null, i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 37)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 37)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33, %27, %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %140

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @dmu_objset_hold(i8* %51, i32 %52, i32** %4)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %140

58:                                               ; preds = %48
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @dmu_objset_type(i32* %59)
  store i64 %60, i64* %5, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @dmu_objset_rele(i32* %61, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 64)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %132

70:                                               ; preds = %58
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %77 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = call i64 @strncmp(i8* %73, i8* %76, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load i32, i32* @EXDEV, align 4
  %90 = call i32 @SET_ERROR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %140

91:                                               ; preds = %70
  %92 = load i8*, i8** %7, align 8
  store i8 0, i8* %92, align 1
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @DMU_OST_ZFS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @recursive_unmount, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @DS_FIND_CHILDREN, align 4
  br label %108

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = call i32 @dmu_objset_find(i8* %99, i32 %100, i8* %102, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  store i8 64, i8* %114, align 1
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %140

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %91
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @strchr(i8* %125, i8 signext 64)
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @dsl_dataset_rename_snapshot(i8* %120, i8* %122, i8* %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i8*, i8** %7, align 8
  store i8 64, i8* %130, align 1
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %140

132:                                              ; preds = %58
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @dsl_dir_rename(i8* %135, i8* %138)
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %132, %117, %113, %88, %56, %45
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i64 @dmu_objset_type(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dmu_objset_find(i8*, i32, i8*, i32) #1

declare dso_local i32 @dsl_dataset_rename_snapshot(i8*, i8*, i8*, i32) #1

declare dso_local i32 @dsl_dir_rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
