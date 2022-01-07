; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_get.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i32, i32, %struct.ext2_xattr* }
%struct.ext2_xattr = type { i8*, i64, i32 }

@EXT2_ET_MAGIC_EA_HANDLE = common dso_local global i32 0, align 4
@XATTR_HANDLE_FLAG_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@EXT2_ET_EA_KEY_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_xattr_get(%struct.ext2_xattr_handle* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_xattr_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ext2_xattr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ext2_xattr_handle* %0, %struct.ext2_xattr_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %14 = load i32, i32* @EXT2_ET_MAGIC_EA_HANDLE, align 4
  %15 = call i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle* %13, i32 %14)
  %16 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %17 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %16, i32 0, i32 2
  %18 = load %struct.ext2_xattr*, %struct.ext2_xattr** %17, align 8
  store %struct.ext2_xattr* %18, %struct.ext2_xattr** %10, align 8
  br label %19

19:                                               ; preds = %88, %4
  %20 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %21 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %22 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %21, i32 0, i32 2
  %23 = load %struct.ext2_xattr*, %struct.ext2_xattr** %22, align 8
  %24 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %25 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %23, i64 %27
  %29 = icmp ult %struct.ext2_xattr* %20, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %19
  %31 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %32 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %88

38:                                               ; preds = %30
  %39 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %40 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XATTR_HANDLE_FLAG_RAW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %45
  %54 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %55 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %58 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i8**, i8*** %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = call i64 @convert_disk_buffer_to_posix_acl(i32 %56, i64 %59, i8** %60, i64* %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %5, align 8
  br label %93

64:                                               ; preds = %49, %38
  %65 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %66 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ext2fs_get_mem(i64 %67, i8** %11)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %5, align 8
  br label %93

73:                                               ; preds = %64
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %76 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %79 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memcpy(i8* %74, i32 %77, i64 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = load i8**, i8*** %8, align 8
  store i8* %82, i8** %83, align 8
  %84 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %85 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  store i64 0, i64* %5, align 8
  br label %93

88:                                               ; preds = %37
  %89 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %90 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %89, i32 1
  store %struct.ext2_xattr* %90, %struct.ext2_xattr** %10, align 8
  br label %19

91:                                               ; preds = %19
  %92 = load i64, i64* @EXT2_ET_EA_KEY_NOT_FOUND, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %91, %73, %71, %53
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @convert_disk_buffer_to_posix_acl(i32, i64, i8**, i64*) #1

declare dso_local i64 @ext2fs_get_mem(i64, i8**) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
