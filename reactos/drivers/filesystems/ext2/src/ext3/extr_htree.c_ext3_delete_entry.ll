; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_delete_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_icb = type { i32 }
%struct.inode = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i64 }
%struct.buffer_head = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"ext3_delete_entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_delete_entry(%struct.ext2_icb* %0, %struct.inode* %1, %struct.ext3_dir_entry_2* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_icb*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext3_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  %11 = alloca %struct.ext3_dir_entry_2*, align 8
  %12 = alloca i64, align 8
  store %struct.ext2_icb* %0, %struct.ext2_icb** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext3_dir_entry_2* %2, %struct.ext3_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ext3_dir_entry_2* null, %struct.ext3_dir_entry_2** %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %16, %struct.ext3_dir_entry_2** %10, align 8
  br label %17

17:                                               ; preds = %63, %4
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.inode* %24, %struct.ext3_dir_entry_2* %25, %struct.buffer_head* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %76

33:                                               ; preds = %23
  %34 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %35 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %36 = icmp eq %struct.ext3_dir_entry_2* %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %39 = icmp ne %struct.ext3_dir_entry_2* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %42 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ext3_rec_len_from_disk(i32 %43)
  %45 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %46 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @ext3_rec_len_from_disk(i32 %47)
  %49 = add nsw i64 %44, %48
  %50 = call i32 @ext3_rec_len_to_disk(i64 %49)
  %51 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %52 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %56

53:                                               ; preds = %37
  %54 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %55 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %40
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = call i32 @set_buffer_dirty(%struct.buffer_head* %61)
  store i32 0, i32* %5, align 4
  br label %76

63:                                               ; preds = %33
  %64 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %65 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ext3_rec_len_from_disk(i32 %66)
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  store %struct.ext3_dir_entry_2* %70, %struct.ext3_dir_entry_2** %11, align 8
  %71 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %72 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %71)
  store %struct.ext3_dir_entry_2* %72, %struct.ext3_dir_entry_2** %10, align 8
  br label %17

73:                                               ; preds = %17
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %56, %30
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext3_rec_len_to_disk(i64) #1

declare dso_local i64 @ext3_rec_len_from_disk(i32) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
