; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_ea_remove.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_ea_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"system.data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_inline_data_ea_remove(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_xattr_handle*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ext2fs_xattrs_open(i32 %8, i32 %9, %struct.ext2_xattr_handle** %6)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %17 = call i64 @ext2fs_xattrs_read(%struct.ext2_xattr_handle* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %6, align 8
  %23 = call i64 @ext2fs_xattr_remove(%struct.ext2_xattr_handle* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21, %20
  %25 = call i32 @ext2fs_xattrs_close(%struct.ext2_xattr_handle** %6)
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @ext2fs_xattrs_open(i32, i32, %struct.ext2_xattr_handle**) #1

declare dso_local i64 @ext2fs_xattrs_read(%struct.ext2_xattr_handle*) #1

declare dso_local i64 @ext2fs_xattr_remove(%struct.ext2_xattr_handle*, i8*) #1

declare dso_local i32 @ext2fs_xattrs_close(%struct.ext2_xattr_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
