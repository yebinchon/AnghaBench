; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge_up.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.inode*, %struct.ext4_ext_path*)* @ext4_ext_try_to_merge_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_try_to_merge_up(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call i32 @ext4_ext_space_root(%struct.inode* %12, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %15 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i64 0
  %16 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %38, label %19

19:                                               ; preds = %4
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %20, i64 0
  %22 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %38, label %28

28:                                               ; preds = %19
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %30 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %29, i64 1
  %31 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %19, %4
  br label %121

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @ext4_journal_extend(i8* %40, i32* %41, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %121

45:                                               ; preds = %39
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i64 0
  %48 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ext4_idx_pblock(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i64 1
  %53 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %9, align 8
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %62, i64 0
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i64 1
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i64 0
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %74 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %73, i64 1
  %75 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @memcpy(%struct.TYPE_4__* %72, %struct.TYPE_4__* %76, i64 %77)
  %79 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i64 0
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i64 0
  %84 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__* %85)
  %87 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %87, i64 1
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %92 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %91, i64 1
  %93 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__* %94)
  %96 = sub nsw i64 %90, %95
  %97 = add nsw i64 %86, %96
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %99 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %98, i64 0
  %100 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %99, i32 0, i32 3
  store i64 %97, i64* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @cpu_to_le16(i32 %101)
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %104 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i64 0
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %109 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i64 1
  %110 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @extents_brelse(i32 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %118 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ext4_free_blocks(i8* %113, i32* %114, %struct.inode* %115, i32* null, i32 %116, i32 1, i32 %119)
  br label %121

121:                                              ; preds = %45, %44, %38
  ret void
}

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ext4_journal_extend(i8*, i32*, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @extents_brelse(i32) #1

declare dso_local i32 @ext4_free_blocks(i8*, i32*, %struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
