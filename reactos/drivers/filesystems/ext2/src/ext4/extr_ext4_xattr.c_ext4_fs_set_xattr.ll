; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_set_xattr.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_set_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32 }
%struct.ext4_xattr_item = type { i64, i32 }

@ENODATA = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fs_set_xattr(%struct.ext4_xattr_ref* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.ext4_xattr_ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_xattr_item*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref* %17, i32 %18, i8* %19, i64 %20)
  store %struct.ext4_xattr_item* %21, %struct.ext4_xattr_item** %16, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %7
  %25 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %26 = icmp ne %struct.ext4_xattr_item* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ENODATA, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %8, align 8
  %38 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @ext4_xattr_resize_item(%struct.ext4_xattr_ref* %37, %struct.ext4_xattr_item* %38, i64 %39)
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %67

45:                                               ; preds = %41
  %46 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %47 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @memcpy(i32 %48, i8* %49, i64 %50)
  br label %66

52:                                               ; preds = %7
  %53 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %54 = icmp ne %struct.ext4_xattr_item* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %67

58:                                               ; preds = %52
  %59 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call %struct.ext4_xattr_item* @ext4_xattr_insert_item(%struct.ext4_xattr_ref* %59, i32 %60, i8* %61, i64 %62, i8* %63, i64 %64, i32* %15)
  store %struct.ext4_xattr_item* %65, %struct.ext4_xattr_item** %16, align 8
  br label %66

66:                                               ; preds = %58, %45
  br label %67

67:                                               ; preds = %66, %55, %44, %27
  %68 = load i32, i32* %15, align 4
  ret i32 %68
}

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref*, i32, i8*, i64) #1

declare dso_local i32 @ext4_xattr_resize_item(%struct.ext4_xattr_ref*, %struct.ext4_xattr_item*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_insert_item(%struct.ext4_xattr_ref*, i32, i8*, i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
