; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_clones_nvl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_clones_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32 }
%struct.get_clones_arg = type { i64, i32, i32* }

@ZFS_PROP_CLONES = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_PROP_NUMCLONES = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfs_get_clones_nvl(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.get_clones_arg, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %16 = call i32 @zfs_prop_to_name(i32 %15)
  %17 = call i64 @nvlist_lookup_nvlist(i32* %14, i32 %16, i32** %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %128

26:                                               ; preds = %19
  %27 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %28 = call i64 @nvlist_alloc(i32** %4, i32 %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %2, align 8
  br label %128

31:                                               ; preds = %26
  %32 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %33 = call i64 @nvlist_alloc(i32** %5, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @nvlist_free(i32* %36)
  store i32* null, i32** %2, align 8
  br label %128

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32, i32* @ZFS_PROP_NUMCLONES, align 4
  %41 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %39, i32 %40)
  %42 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 2
  store i32* %43, i32** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %38
  %53 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %8, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %9, align 8
  store i8* %56, i8** %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = trunc i64 %54 to i32
  %61 = call i32 @strlcpy(i8* %56, i32 %59, i32 %60)
  %62 = call i32 @strsep(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %67 = call %struct.TYPE_6__* @zfs_open(i32 %65, i8* %56, i32 %66)
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %7, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = icmp eq %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %52
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @nvlist_free(i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @nvlist_free(i32* %73)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %78

75:                                               ; preds = %52
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = call i32 @get_clones_cb(%struct.TYPE_6__* %76, %struct.get_clones_arg* %6)
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %11, align 4
  switch i32 %80, label %130 [
    i32 0, label %81
    i32 1, label %128
  ]

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %38
  %83 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @ZPROP_VALUE, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @nvlist_add_nvlist(i32* %87, i32 %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %97 = call i32 @zfs_prop_to_name(i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i64 @nvlist_add_nvlist(i32* %95, i32 %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92, %86, %82
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @nvlist_free(i32* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @nvlist_free(i32* %104)
  store i32* null, i32** %2, align 8
  br label %128

106:                                              ; preds = %92
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @nvlist_free(i32* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @nvlist_free(i32* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %115 = call i32 @zfs_prop_to_name(i32 %114)
  %116 = call i64 @nvlist_lookup_nvlist(i32* %113, i32 %115, i32** %4)
  %117 = icmp eq i64 0, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @verify(i32 %118)
  br label %120

120:                                              ; preds = %106, %1
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @ZPROP_VALUE, align 4
  %123 = call i64 @nvlist_lookup_nvlist(i32* %121, i32 %122, i32** %5)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @verify(i32 %125)
  %127 = load i32*, i32** %5, align 8
  store i32* %127, i32** %2, align 8
  br label %128

128:                                              ; preds = %120, %101, %78, %35, %30, %25
  %129 = load i32*, i32** %2, align 8
  ret i32* %129

130:                                              ; preds = %78
  unreachable
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local %struct.TYPE_6__* @zfs_open(i32, i8*, i32) #1

declare dso_local i32 @get_clones_cb(%struct.TYPE_6__*, %struct.get_clones_arg*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
