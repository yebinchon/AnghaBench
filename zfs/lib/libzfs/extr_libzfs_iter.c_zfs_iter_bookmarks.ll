; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_iter_bookmarks.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_iter_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@ZFS_NUM_PROPS = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"redact_complete\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_8__* %0, i32 (%struct.TYPE_8__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32 (%struct.TYPE_8__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 (%struct.TYPE_8__*, i8*)* %1, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i32 @zfs_get_type(%struct.TYPE_8__* %19)
  %21 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %22 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

27:                                               ; preds = %3
  %28 = call i32* (...) @fnvlist_alloc()
  store i32* %28, i32** %9, align 8
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @ZFS_NUM_PROPS, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = call i64 @zfs_prop_valid_for_type(i64 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i8* @zfs_prop_to_name(i64 %41)
  %43 = call i32 @fnvlist_add_boolean(i32* %40, i8* %42)
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %13, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %13, align 8
  br label %29

48:                                               ; preds = %29
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @fnvlist_add_boolean(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @lzc_get_bookmarks(i8* %53, i32* %54, i32** %10)
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %107

58:                                               ; preds = %48
  %59 = load i32*, i32** %10, align 8
  %60 = call i32* @nvlist_next_nvpair(i32* %59, i32* null)
  store i32* %60, i32** %12, align 8
  br label %61

61:                                               ; preds = %102, %58
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %106

64:                                               ; preds = %61
  %65 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %14, align 8
  %68 = alloca i8, i64 %66, align 16
  store i64 %66, i64* %15, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i8* @nvpair_name(i32* %69)
  store i8* %70, i8** %16, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @fnvpair_value_nvlist(i32* %71)
  store i32* %72, i32** %17, align 8
  %73 = trunc i64 %66 to i32
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @snprintf(i8* %68, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %77)
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %79, %66
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %11, align 4
  store i32 5, i32* %18, align 4
  br label %98

83:                                               ; preds = %64
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call %struct.TYPE_8__* @make_bookmark_handle(%struct.TYPE_8__* %84, i8* %68, i32* %85)
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %8, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = icmp eq %struct.TYPE_8__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 8, i32* %18, align 4
  br label %98

90:                                               ; preds = %83
  %91 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 %91(%struct.TYPE_8__* %92, i8* %93)
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 5, i32* %18, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %96, %81, %97, %89
  %99 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %18, align 4
  switch i32 %100, label %115 [
    i32 0, label %101
    i32 8, label %102
    i32 5, label %107
  ]

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32* @nvlist_next_nvpair(i32* %103, i32* %104)
  store i32* %105, i32** %12, align 8
  br label %61

106:                                              ; preds = %61
  br label %107

107:                                              ; preds = %106, %98, %57
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @fnvlist_free(i32* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @fnvlist_free(i32* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %107, %26
  %114 = load i32, i32* %4, align 4
  ret i32 %114

115:                                              ; preds = %98
  unreachable
}

declare dso_local i32 @zfs_get_type(%struct.TYPE_8__*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i64 @zfs_prop_valid_for_type(i64, i32, i32) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i8* @zfs_prop_to_name(i64) #1

declare dso_local i32 @lzc_get_bookmarks(i8*, i32*, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @make_bookmark_handle(%struct.TYPE_8__*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
