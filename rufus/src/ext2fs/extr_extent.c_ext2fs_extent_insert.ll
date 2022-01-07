; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_insert.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.extent_path*, %struct.TYPE_9__* }
%struct.extent_path = type { i64, i64, i32, i64, %struct.ext3_extent_idx* }
%struct.ext3_extent_idx = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ext2fs_extent = type { i32 }
%struct.ext3_extent_header = type { i32 }

@EXT2_ET_MAGIC_EXTENT_HANDLE = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@EXT2_ET_NO_CURRENT_NODE = common dso_local global i64 0, align 8
@EXT2_EXTENT_INSERT_NOSPLIT = common dso_local global i32 0, align 4
@EXT2_ET_CANT_INSERT_EXTENT = common dso_local global i64 0, align 8
@EXT2_EXTENT_INSERT_AFTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_extent_insert(%struct.TYPE_10__* %0, i32 %1, %struct.ext2fs_extent* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2fs_extent*, align 8
  %8 = alloca %struct.extent_path*, align 8
  %9 = alloca %struct.ext3_extent_idx*, align 8
  %10 = alloca %struct.ext3_extent_header*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2fs_extent* %2, %struct.ext2fs_extent** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = load i32, i32* @EXT2_ET_MAGIC_EXTENT_HANDLE, align 4
  %14 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__* %12, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EXT2_FLAG_RW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %24, i64* %4, align 8
  br label %158

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.extent_path*, %struct.extent_path** %27, align 8
  %29 = icmp ne %struct.extent_path* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  store i64 %31, i64* %4, align 8
  br label %158

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.extent_path*, %struct.extent_path** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %35, i64 %39
  store %struct.extent_path* %40, %struct.extent_path** %8, align 8
  %41 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %42 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %45 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EXT2_EXTENT_INSERT_NOSPLIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @EXT2_ET_CANT_INSERT_EXTENT, align 8
  store i64 %54, i64* %4, align 8
  br label %158

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i64 @extent_node_split(%struct.TYPE_10__* %56, i32 1)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %4, align 8
  br label %158

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load %struct.extent_path*, %struct.extent_path** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %65, i64 %69
  store %struct.extent_path* %70, %struct.extent_path** %8, align 8
  br label %71

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %74 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ext3_extent_header*
  store %struct.ext3_extent_header* %76, %struct.ext3_extent_header** %10, align 8
  %77 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %78 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %77, i32 0, i32 4
  %79 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %78, align 8
  %80 = icmp ne %struct.ext3_extent_idx* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %83 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %82, i32 0, i32 4
  %84 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %83, align 8
  store %struct.ext3_extent_idx* %84, %struct.ext3_extent_idx** %9, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %9, align 8
  %91 = getelementptr inbounds %struct.ext3_extent_idx, %struct.ext3_extent_idx* %90, i32 1
  store %struct.ext3_extent_idx* %91, %struct.ext3_extent_idx** %9, align 8
  %92 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %93 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %81
  br label %102

97:                                               ; preds = %72
  %98 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %10, align 8
  %99 = call %struct.ext3_extent_idx* @EXT_FIRST_INDEX(%struct.ext3_extent_header* %98)
  store %struct.ext3_extent_idx* %99, %struct.ext3_extent_idx** %9, align 8
  %100 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %101 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %100, i32 0, i32 2
  store i32 -1, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %96
  %103 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %9, align 8
  %104 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %105 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %104, i32 0, i32 4
  store %struct.ext3_extent_idx* %103, %struct.ext3_extent_idx** %105, align 8
  %106 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %107 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %9, align 8
  %112 = getelementptr inbounds %struct.ext3_extent_idx, %struct.ext3_extent_idx* %111, i64 1
  %113 = load %struct.ext3_extent_idx*, %struct.ext3_extent_idx** %9, align 8
  %114 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %115 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memmove(%struct.ext3_extent_idx* %112, %struct.ext3_extent_idx* %113, i32 %120)
  br label %122

122:                                              ; preds = %110, %102
  %123 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %124 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %128 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %132 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.ext3_extent_header*
  store %struct.ext3_extent_header* %134, %struct.ext3_extent_header** %10, align 8
  %135 = load %struct.extent_path*, %struct.extent_path** %8, align 8
  %136 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @ext2fs_cpu_to_le16(i64 %137)
  %139 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %10, align 8
  %140 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = load %struct.ext2fs_extent*, %struct.ext2fs_extent** %7, align 8
  %143 = call i64 @ext2fs_extent_replace(%struct.TYPE_10__* %141, i32 0, %struct.ext2fs_extent* %142)
  store i64 %143, i64* %11, align 8
  %144 = load i64, i64* %11, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %122
  br label %154

147:                                              ; preds = %122
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = call i64 @update_path(%struct.TYPE_10__* %148)
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %154

153:                                              ; preds = %147
  store i64 0, i64* %4, align 8
  br label %158

154:                                              ; preds = %152, %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = call i32 @ext2fs_extent_delete(%struct.TYPE_10__* %155, i32 0)
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %154, %153, %60, %53, %30, %23
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @extent_node_split(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.ext3_extent_idx* @EXT_FIRST_INDEX(%struct.ext3_extent_header*) #1

declare dso_local i32 @memmove(%struct.ext3_extent_idx*, %struct.ext3_extent_idx*, i32) #1

declare dso_local i32 @ext2fs_cpu_to_le16(i64) #1

declare dso_local i64 @ext2fs_extent_replace(%struct.TYPE_10__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @update_path(%struct.TYPE_10__*) #1

declare dso_local i32 @ext2fs_extent_delete(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
