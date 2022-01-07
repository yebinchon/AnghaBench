; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_iterate.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i32, %struct.ext2_xattr* }
%struct.ext2_xattr = type { i8*, i8*, i64 }

@EXT2_ET_MAGIC_EA_HANDLE = common dso_local global i32 0, align 4
@XATTR_CHANGED = common dso_local global i32 0, align 4
@XATTR_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_xattrs_iterate(%struct.ext2_xattr_handle* %0, i32 (i8*, i8*, i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_xattr_handle*, align 8
  %6 = alloca i32 (i8*, i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ext2_xattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ext2_xattr_handle* %0, %struct.ext2_xattr_handle** %5, align 8
  store i32 (i8*, i8*, i64, i8*)* %1, i32 (i8*, i8*, i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %5, align 8
  %12 = load i32, i32* @EXT2_ET_MAGIC_EA_HANDLE, align 4
  %13 = call i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle* %11, i32 %12)
  %14 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %5, align 8
  %15 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %14, i32 0, i32 1
  %16 = load %struct.ext2_xattr*, %struct.ext2_xattr** %15, align 8
  store %struct.ext2_xattr* %16, %struct.ext2_xattr** %8, align 8
  br label %17

17:                                               ; preds = %53, %3
  %18 = load %struct.ext2_xattr*, %struct.ext2_xattr** %8, align 8
  %19 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %5, align 8
  %20 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %19, i32 0, i32 1
  %21 = load %struct.ext2_xattr*, %struct.ext2_xattr** %20, align 8
  %22 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %5, align 8
  %23 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %21, i64 %25
  %27 = icmp ult %struct.ext2_xattr* %18, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %17
  %29 = load i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)** %6, align 8
  %30 = load %struct.ext2_xattr*, %struct.ext2_xattr** %8, align 8
  %31 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.ext2_xattr*, %struct.ext2_xattr** %8, align 8
  %34 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ext2_xattr*, %struct.ext2_xattr** %8, align 8
  %37 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 %29(i8* %32, i8* %35, i64 %38, i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @XATTR_CHANGED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @XATTR_ABORT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.ext2_xattr*, %struct.ext2_xattr** %8, align 8
  %55 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %54, i32 1
  store %struct.ext2_xattr* %55, %struct.ext2_xattr** %8, align 8
  br label %17

56:                                               ; preds = %51, %17
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %5, align 8
  %61 = call i32 @ext2fs_xattrs_write(%struct.ext2_xattr_handle* %60)
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle*, i32) #1

declare dso_local i32 @ext2fs_xattrs_write(%struct.ext2_xattr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
