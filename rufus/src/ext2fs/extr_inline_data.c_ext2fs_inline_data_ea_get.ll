; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_ea_get.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_ea_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inline_data = type { i32*, i32, i32, i32 }
%struct.ext2_xattr_handle = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"system.data\00", align 1
@EXT2_ET_EA_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext2_inline_data*)* @ext2fs_inline_data_ea_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_inline_data_ea_get(%struct.ext2_inline_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ext2_inline_data*, align 8
  %4 = alloca %struct.ext2_xattr_handle*, align 8
  %5 = alloca i64, align 8
  store %struct.ext2_inline_data* %0, %struct.ext2_inline_data** %3, align 8
  %6 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %7 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %6, i32 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %9 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %11 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %14 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ext2fs_xattrs_open(i32 %12, i32 %15, %struct.ext2_xattr_handle** %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %2, align 8
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %23 = call i64 @ext2fs_xattrs_read(%struct.ext2_xattr_handle* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %49

27:                                               ; preds = %21
  %28 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %29 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %30 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %29, i32 0, i32 0
  %31 = bitcast i32** %30 to i8**
  %32 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %33 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %32, i32 0, i32 1
  %34 = call i64 @ext2fs_xattr_get(%struct.ext2_xattr_handle* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %31, i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @EXT2_ET_EA_KEY_NOT_FOUND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %40 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = load %struct.ext2_inline_data*, %struct.ext2_inline_data** %3, align 8
  %42 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  store i64 0, i64* %5, align 8
  br label %48

43:                                               ; preds = %27
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %49

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %46, %26
  %50 = call i32 @ext2fs_xattrs_close(%struct.ext2_xattr_handle** %4)
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %49, %19
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @ext2fs_xattrs_open(i32, i32, %struct.ext2_xattr_handle**) #1

declare dso_local i64 @ext2fs_xattrs_read(%struct.ext2_xattr_handle*) #1

declare dso_local i64 @ext2fs_xattr_get(%struct.ext2_xattr_handle*, i8*, i8**, i32*) #1

declare dso_local i32 @ext2fs_xattrs_close(%struct.ext2_xattr_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
