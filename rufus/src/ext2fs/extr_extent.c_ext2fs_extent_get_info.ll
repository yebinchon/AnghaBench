; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_get_info.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.extent_path* }
%struct.extent_path = type { i8*, i32, i32, i64 }
%struct.ext2_extent_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXT2_ET_MAGIC_EXTENT_HANDLE = common dso_local global i32 0, align 4
@EXT_MAX_EXTENT_LBLK = common dso_local global i32 0, align 4
@EXT_MAX_EXTENT_PBLK = common dso_local global i32 0, align 4
@EXT_INIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT_UNINIT_MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_extent_get_info(%struct.TYPE_4__* %0, %struct.ext2_extent_info* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ext2_extent_info*, align 8
  %5 = alloca %struct.extent_path*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.ext2_extent_info* %1, %struct.ext2_extent_info** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @EXT2_ET_MAGIC_EXTENT_HANDLE, align 4
  %8 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_4__* %6, i32 %7)
  %9 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %10 = call i32 @memset(%struct.ext2_extent_info* %9, i32 0, i32 40)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.extent_path*, %struct.extent_path** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %13, i64 %17
  store %struct.extent_path* %18, %struct.extent_path** %5, align 8
  %19 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %20 = icmp ne %struct.extent_path* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %2
  %22 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %23 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %28 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %32 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %40 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %21
  %42 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %43 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %46 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %49 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %51 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %54 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %56 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.extent_path*, %struct.extent_path** %5, align 8
  %59 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %66 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %44, %2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %72 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %77 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EXT_MAX_EXTENT_LBLK, align 4
  %79 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %80 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @EXT_MAX_EXTENT_PBLK, align 4
  %82 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %83 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %85 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %86 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @EXT_UNINIT_MAX_LEN, align 4
  %88 = load %struct.ext2_extent_info*, %struct.ext2_extent_info** %4, align 8
  %89 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  ret i32 0
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.ext2_extent_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
