; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_freefs.c_ext2fs_free.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_freefs.c_ext2fs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i64, i64, %struct.TYPE_4__*, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %1
  br label %171

12:                                               ; preds = %5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @io_channel_close(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @io_channel_close(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 15
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 15
  %49 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 14
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 14
  %58 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 13
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 13
  %67 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 12
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 12
  %76 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ext2fs_free_block_bitmap(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ext2fs_free_inode_bitmap(i64 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 9
  %105 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @ext2fs_badblocks_list_free(i64 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 8
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ext2fs_free_dblist(i64 %126)
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ext2fs_free_inode_cache(i64 %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = icmp ne %struct.TYPE_4__* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  %146 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = icmp ne %struct.TYPE_4__* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %154)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ext2fs_hashmap_free(i64 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = call i32 @ext2fs_zero_blocks2(i32* null, i32 0, i32 0, i32* null, i32* null)
  %170 = call i32 @ext2fs_free_mem(%struct.TYPE_4__** %2)
  br label %171

171:                                              ; preds = %166, %11
  ret void
}

declare dso_local i32 @io_channel_close(i64) #1

declare dso_local i32 @ext2fs_free_mem(%struct.TYPE_4__**) #1

declare dso_local i32 @ext2fs_free_block_bitmap(i64) #1

declare dso_local i32 @ext2fs_free_inode_bitmap(i64) #1

declare dso_local i32 @ext2fs_badblocks_list_free(i64) #1

declare dso_local i32 @ext2fs_free_dblist(i64) #1

declare dso_local i32 @ext2fs_free_inode_cache(i64) #1

declare dso_local i32 @ext2fs_hashmap_free(i64) #1

declare dso_local i32 @ext2fs_zero_blocks2(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
