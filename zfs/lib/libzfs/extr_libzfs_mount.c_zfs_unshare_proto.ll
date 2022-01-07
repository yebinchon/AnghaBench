; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unshare_proto.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unshare_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.mnttab = type { i8* }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@PROTO_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_unshare_proto(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mnttab, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @zfs_strdup(i32* %18, i8* %19)
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i64 @zfs_get_type(%struct.TYPE_5__* %25)
  %27 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = call i32 @zfs_get_name(%struct.TYPE_5__* %31)
  %33 = call i64 @libzfs_mnttab_find(i32* %30, i32 %32, %struct.mnttab* %9)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %29, %21
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @zfs_strdup(i32* %41, i8* %43)
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i64*, i64** %7, align 8
  store i64* %46, i64** %11, align 8
  br label %47

47:                                               ; preds = %77, %45
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PROTO_END, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @is_shared_impl(i32* %53, i8* %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @unshare_one(i32* %60, i32 %63, i8* %64, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 -1, i32* %4, align 4
  br label %88

76:                                               ; preds = %59, %52
  br label %77

77:                                               ; preds = %76
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %11, align 8
  br label %47

80:                                               ; preds = %47
  br label %81

81:                                               ; preds = %80, %29, %24
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i64 @zfs_get_type(%struct.TYPE_5__*) #1

declare dso_local i64 @libzfs_mnttab_find(i32*, i32, %struct.mnttab*) #1

declare dso_local i32 @zfs_get_name(%struct.TYPE_5__*) #1

declare dso_local i64 @is_shared_impl(i32*, i8*, i64) #1

declare dso_local i64 @unshare_one(i32*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
