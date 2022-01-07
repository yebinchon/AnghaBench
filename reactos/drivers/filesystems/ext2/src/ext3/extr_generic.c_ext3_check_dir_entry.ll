; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i32, i32 }
%struct.buffer_head = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"inode out of bounds\00", align 1
@DL_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [82 x i8] c"%s: bad entry in directory %u: %s - offset=%u, inode=%u, rec_len=%d, name_len=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_check_dir_entry(i8* %0, %struct.inode* %1, %struct.ext3_dir_entry_2* %2, %struct.buffer_head* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext3_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext3_dir_entry_2* %2, %struct.ext3_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i64 %4, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %14 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ext3_rec_len_from_disk(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @EXT3_DIR_REC_LEN(i32 1)
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %72

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = srem i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %71

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %29 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @EXT3_DIR_REC_LEN(i32 %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %70

34:                                               ; preds = %26
  %35 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %36 = bitcast %struct.ext3_dir_entry_2* %35 to i8*
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = icmp ugt i8* %39, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %69

52:                                               ; preds = %34
  %53 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %54 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call %struct.TYPE_5__* @EXT3_SB(%struct.TYPE_6__* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = icmp sgt i64 %56, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %25
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, i32* @DL_ERR, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %84 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le32_to_cpu(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %89 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @DEBUG(i32 %76, i8* %92)
  br label %94

94:                                               ; preds = %75, %72
  %95 = load i8*, i8** %11, align 8
  %96 = icmp eq i8* %95, null
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  ret i32 %98
}

declare dso_local i32 @ext3_rec_len_from_disk(i32) #1

declare dso_local i32 @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @EXT3_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
