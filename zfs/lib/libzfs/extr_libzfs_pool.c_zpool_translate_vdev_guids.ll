; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_translate_vdev_guids.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_translate_vdev_guids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EZFS_NODEVICE = common dso_local global i64 0, align 8
@EZFS_ISSPARE = common dso_local global i64 0, align 8
@EZFS_ISL2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32**)* @zpool_translate_vdev_guids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_translate_vdev_guids(i32* %0, i32* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %22, i32* null)
  store i32* %23, i32** %13, align 8
  br label %24

24:                                               ; preds = %87, %5
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i32*, i32** %13, align 8
  %29 = call i8* @nvpair_name(i32* %28)
  store i8* %29, i8** %16, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = call i32* @zpool_find_vdev(i32* %30, i8* %31, i64* %14, i64* %15, i32* null)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38, %35, %27
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32* (...) @fnvlist_alloc()
  store i32* %45, i32** %11, align 8
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %17, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* @EZFS_NODEVICE, align 8
  br label %61

52:                                               ; preds = %47
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* @EZFS_ISSPARE, align 8
  br label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @EZFS_ISL2CACHE, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i64 [ %51, %50 ], [ %60, %59 ]
  store i64 %62, i64* %18, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @fnvlist_add_int64(i32* %63, i8* %64, i64 %65)
  br label %87

67:                                               ; preds = %38
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %70 = call i64 @fnvlist_lookup_uint64(i32* %68, i32 %69)
  store i64 %70, i64* %19, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %19, align 8
  %74 = call i32 @fnvlist_add_uint64(i32* %71, i8* %72, i64 %73)
  %75 = load i32, i32* @MAXNAMELEN, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %20, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %21, align 8
  %79 = trunc i64 %76 to i32
  %80 = load i64, i64* %19, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %9, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @fnvlist_add_string(i32* %83, i8* %78, i8* %84)
  %86 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %67, %61
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* @nvlist_next_nvpair(i32* %88, i32* %89)
  store i32* %90, i32** %13, align 8
  br label %24

91:                                               ; preds = %24
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @verify(i32 %97)
  %99 = load i32**, i32*** %10, align 8
  %100 = icmp ne i32** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32*, i32** %11, align 8
  %103 = load i32**, i32*** %10, align 8
  store i32* %102, i32** %103, align 8
  br label %107

104:                                              ; preds = %94
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @fnvlist_free(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @zpool_find_vdev(i32*, i8*, i64*, i64*, i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_int64(i32*, i8*, i64) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
