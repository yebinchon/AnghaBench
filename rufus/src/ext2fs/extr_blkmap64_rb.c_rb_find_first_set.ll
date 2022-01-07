; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_find_first_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_find_first_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.ext2fs_rb_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.bmap_rb_extent = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64, i64*)* @rb_find_first_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_find_first_set(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node**, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct.ext2fs_rb_private*, align 8
  %14 = alloca %struct.bmap_rb_extent*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %18, %struct.ext2fs_rb_private** %13, align 8
  %19 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %13, align 8
  %20 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.rb_node** %21, %struct.rb_node*** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %122

37:                                               ; preds = %4
  %38 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %13, align 8
  %39 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %38, i32 0, i32 0
  %40 = call i64 @ext2fs_rb_empty_root(%struct.TYPE_5__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %5, align 4
  br label %122

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %85, %44
  %46 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %47 = load %struct.rb_node*, %struct.rb_node** %46, align 8
  %48 = icmp ne %struct.rb_node* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %50, align 8
  store %struct.rb_node* %51, %struct.rb_node** %10, align 8
  %52 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %53 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %52)
  store %struct.bmap_rb_extent* %53, %struct.bmap_rb_extent** %14, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %56 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %61 = load %struct.rb_node*, %struct.rb_node** %60, align 8
  %62 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %61, i32 0, i32 1
  store %struct.rb_node** %62, %struct.rb_node*** %11, align 8
  br label %85

63:                                               ; preds = %49
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %66 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %69 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = icmp sge i64 %64, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %75 = load %struct.rb_node*, %struct.rb_node** %74, align 8
  %76 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %75, i32 0, i32 0
  store %struct.rb_node** %76, %struct.rb_node*** %11, align 8
  br label %84

77:                                               ; preds = %63
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %5, align 4
  br label %122

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %59
  br label %45

86:                                               ; preds = %45
  %87 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  store %struct.rb_node* %87, %struct.rb_node** %12, align 8
  %88 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %89 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %88)
  store %struct.bmap_rb_extent* %89, %struct.bmap_rb_extent** %14, align 8
  %90 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %91 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %97 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %96)
  store %struct.rb_node* %97, %struct.rb_node** %12, align 8
  %98 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %99 = icmp eq %struct.rb_node* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOENT, align 4
  store i32 %101, i32* %5, align 4
  br label %122

102:                                              ; preds = %95
  %103 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %104 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %103)
  store %struct.bmap_rb_extent* %104, %struct.bmap_rb_extent** %14, align 8
  br label %105

105:                                              ; preds = %102, %86
  %106 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %107 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %113 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %5, align 4
  br label %122

120:                                              ; preds = %105
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %111, %100, %77, %42, %35
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @ext2fs_rb_empty_root(%struct.TYPE_5__*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
