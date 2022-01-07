; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_fix_parents.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_fix_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.extent_path*, %struct.TYPE_10__* }
%struct.extent_path = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ext2fs_extent = type { i64, i32 }
%struct.ext2_extent_info = type { i32, i32 }

@EXT2_ET_MAGIC_EXTENT_HANDLE = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_NO_CURRENT_NODE = common dso_local global i32 0, align 4
@EXT2_EXTENT_CURRENT = common dso_local global i32 0, align 4
@EXT2_EXTENT_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_extent_fix_parents(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.extent_path*, align 8
  %8 = alloca %struct.ext2fs_extent, align 8
  %9 = alloca %struct.ext2_extent_info, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load i32, i32* @EXT2_ET_MAGIC_EXTENT_HANDLE, align 4
  %12 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_11__* %10, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EXT2_FLAG_RW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EXT2_ET_RO_FILSYS, align 4
  store i32 %22, i32* %2, align 4
  br label %130

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.extent_path*, %struct.extent_path** %25, align 8
  %27 = icmp ne %struct.extent_path* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EXT2_ET_NO_CURRENT_NODE, align 4
  store i32 %29, i32* %2, align 4
  br label %130

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.extent_path*, %struct.extent_path** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %33, i64 %37
  store %struct.extent_path* %38, %struct.extent_path** %7, align 8
  %39 = load %struct.extent_path*, %struct.extent_path** %7, align 8
  %40 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @EXT2_ET_NO_CURRENT_NODE, align 4
  store i32 %44, i32* %2, align 4
  br label %130

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %48 = call i32 @ext2fs_extent_get(%struct.TYPE_11__* %46, i32 %47, %struct.ext2fs_extent* %8)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %128

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = call i32 @ext2fs_extent_get_info(%struct.TYPE_11__* %55, %struct.ext2_extent_info* %9)
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %130

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %120, %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.extent_path*, %struct.extent_path** %7, align 8
  %73 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.extent_path*, %struct.extent_path** %7, align 8
  %76 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp eq i32 %74, %78
  br label %80

80:                                               ; preds = %71, %66
  %81 = phi i1 [ false, %66 ], [ %79, %71 ]
  br i1 %81, label %82, label %123

82:                                               ; preds = %80
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = load i32, i32* @EXT2_EXTENT_UP, align 4
  %85 = call i32 @ext2fs_extent_get(%struct.TYPE_11__* %83, i32 %84, %struct.ext2fs_extent* %8)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %128

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %123

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.extent_path*, %struct.extent_path** %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %98, i64 %102
  store %struct.extent_path* %103, %struct.extent_path** %7, align 8
  %104 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = sub nsw i64 %105, %106
  %108 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %107
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %8, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = call i32 @ext2fs_extent_replace(%struct.TYPE_11__* %115, i32 0, %struct.ext2fs_extent* %8)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %95
  br label %128

120:                                              ; preds = %95
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = call i32 @update_path(%struct.TYPE_11__* %121)
  br label %66

123:                                              ; preds = %94, %80
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @ext2fs_extent_goto2(%struct.TYPE_11__* %124, i32 %125, i64 %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %119, %88, %51
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %58, %43, %28, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ext2fs_extent_get(%struct.TYPE_11__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i32 @ext2fs_extent_get_info(%struct.TYPE_11__*, %struct.ext2_extent_info*) #1

declare dso_local i32 @ext2fs_extent_replace(%struct.TYPE_11__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i32 @update_path(%struct.TYPE_11__*) #1

declare dso_local i32 @ext2fs_extent_goto2(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
