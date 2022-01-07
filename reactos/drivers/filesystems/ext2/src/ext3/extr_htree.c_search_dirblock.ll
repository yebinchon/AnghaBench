; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i8* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.ext3_dir_entry_2 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ext3_find_entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, %struct.dentry*, i64, %struct.ext3_dir_entry_2**)* @search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, %struct.dentry* %2, i64 %3, %struct.ext3_dir_entry_2** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext3_dir_entry_2**, align 8
  %12 = alloca %struct.ext3_dir_entry_2*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ext3_dir_entry_2** %4, %struct.ext3_dir_entry_2*** %11, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %15, align 8
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %28, %struct.ext3_dir_entry_2** %12, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  store i8* %38, i8** %13, align 8
  br label %39

39:                                               ; preds = %77, %5
  %40 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %41 = bitcast %struct.ext3_dir_entry_2* %40 to i8*
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %46 = bitcast %struct.ext3_dir_entry_2* %45 to i8*
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ule i8* %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %44
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %56 = call i64 @ext3_match(i32 %53, i8* %54, %struct.ext3_dir_entry_2* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.inode* %59, %struct.ext3_dir_entry_2* %60, %struct.buffer_head* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %89

66:                                               ; preds = %58
  %67 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %68 = load %struct.ext3_dir_entry_2**, %struct.ext3_dir_entry_2*** %11, align 8
  store %struct.ext3_dir_entry_2* %67, %struct.ext3_dir_entry_2** %68, align 8
  store i32 1, i32* %6, align 4
  br label %89

69:                                               ; preds = %52, %44
  %70 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %71 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ext3_rec_len_from_disk(i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 -1, i32* %6, align 4
  br label %89

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %12, align 8
  %83 = bitcast %struct.ext3_dir_entry_2* %82 to i8*
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = bitcast i8* %86 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %87, %struct.ext3_dir_entry_2** %12, align 8
  br label %39

88:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %76, %66, %65
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @ext3_match(i32, i8*, %struct.ext3_dir_entry_2*) #1

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext3_rec_len_from_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
