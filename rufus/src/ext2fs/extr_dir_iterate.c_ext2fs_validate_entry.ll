; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_validate_entry.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_validate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext2_dir_entry = type { i32 }

@DIRENT_MIN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32)* @ext2fs_validate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_validate_entry(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_dir_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %53, %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %20, 12
  %22 = icmp ule i32 %17, %21
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %54

25:                                               ; preds = %23
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %30, %struct.ext2_dir_entry** %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %33 = call i64 @ext2fs_get_rec_len(%struct.TYPE_4__* %31, %struct.ext2_dir_entry* %32, i32* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %59

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = urem i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %48 = call i32 @ext2fs_dirent_name_len(%struct.ext2_dir_entry* %47)
  %49 = add nsw i32 %48, 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %42, %36
  store i32 0, i32* %5, align 4
  br label %59

53:                                               ; preds = %46
  br label %12

54:                                               ; preds = %23
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %52, %35
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @ext2fs_get_rec_len(%struct.TYPE_4__*, %struct.ext2_dir_entry*, i32*) #1

declare dso_local i32 @ext2fs_dirent_name_len(%struct.ext2_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
