; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_guid_to_name_redact_snaps.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_guid_to_name_redact_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, i32*, i8*, i64, i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i8**, i8*, i8*)* @guid_to_name_redact_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guid_to_name_redact_snaps(i32* %0, i8* %1, i8* %2, i64 %3, i8** %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %23 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store i8* %27, i8** %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load i8**, i8*** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i8** %34, i8*** %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = trunc i64 %24 to i32
  %40 = call i32 @strlcpy(i8* %26, i8* %38, i32 %39)
  %41 = call i8* @strrchr(i8* %26, i8 signext 64)
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = call i8* @strchr(i8* %26, i8 signext 0)
  store i8* %45, i8** %19, align 8
  br label %46

46:                                               ; preds = %44, %7
  br label %47

47:                                               ; preds = %89, %46
  %48 = load i8*, i8** %19, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %47
  %51 = load i8*, i8** %19, align 8
  store i8 0, i8* %51, align 1
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @make_dataset_handle(i32* %52, i8* %26)
  store i32* %53, i32** %20, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %89

57:                                               ; preds = %50
  %58 = load i32*, i32** %20, align 8
  %59 = call i32 @zfs_handle_dup(i32* %58)
  %60 = call i32 @guid_to_name_cb(i32 %59, %struct.TYPE_7__* %18)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @EEXIST, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %20, align 8
  %66 = call i32 @zfs_iter_children(i32* %65, i32 (i32, %struct.TYPE_7__*)* @guid_to_name_cb, %struct.TYPE_7__* %18)
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* @EEXIST, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %20, align 8
  %76 = call i32 @zfs_iter_bookmarks(i32* %75, i32 (i32, %struct.TYPE_7__*)* @guid_to_name_cb, %struct.TYPE_7__* %18)
  store i32 %76, i32* %21, align 4
  br label %77

77:                                               ; preds = %74, %71, %67
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 @zfs_close(i32* %78)
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @EEXIST, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %93

84:                                               ; preds = %77
  %85 = call i8* @strrchr(i8* %26, i8 signext 47)
  %86 = getelementptr i8, i8* %85, i64 1
  %87 = bitcast i8* %86 to i32*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32* %87, i32** %88, align 8
  br label %89

89:                                               ; preds = %84, %56
  %90 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %90, i8** %19, align 8
  br label %47

91:                                               ; preds = %47
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %93

93:                                               ; preds = %91, %83
  %94 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @make_dataset_handle(i32*, i8*) #2

declare dso_local i32 @guid_to_name_cb(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_handle_dup(i32*) #2

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32, %struct.TYPE_7__*)*, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_iter_bookmarks(i32*, i32 (i32, %struct.TYPE_7__*)*, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
