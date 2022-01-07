; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_test_clear_bmap_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_test_clear_bmap_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.ext2fs_rb_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.bmap_rb_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32)* @rb_test_clear_bmap_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_test_clear_bmap_extent(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node**, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.ext2fs_rb_private*, align 8
  %13 = alloca %struct.bmap_rb_extent*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %18, %struct.ext2fs_rb_private** %12, align 8
  %19 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %12, align 8
  %20 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.rb_node** %21, %struct.rb_node*** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %12, align 8
  %31 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %30, i32 0, i32 0
  %32 = call i64 @ext2fs_rb_empty_root(%struct.TYPE_5__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %3
  store i32 1, i32* %4, align 4
  br label %105

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %70, %35
  %37 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8
  %39 = icmp ne %struct.rb_node* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %42 = load %struct.rb_node*, %struct.rb_node** %41, align 8
  store %struct.rb_node* %42, %struct.rb_node** %8, align 8
  %43 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %44 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %43)
  store %struct.bmap_rb_extent* %44, %struct.bmap_rb_extent** %13, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %47 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %52 = load %struct.rb_node*, %struct.rb_node** %51, align 8
  %53 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %52, i32 0, i32 1
  store %struct.rb_node** %53, %struct.rb_node*** %9, align 8
  br label %70

54:                                               ; preds = %40
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %57 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %60 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = icmp sge i64 %55, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %66 = load %struct.rb_node*, %struct.rb_node** %65, align 8
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 0
  store %struct.rb_node** %67, %struct.rb_node*** %9, align 8
  br label %69

68:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %105

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %50
  br label %36

71:                                               ; preds = %36
  %72 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  store %struct.rb_node* %72, %struct.rb_node** %10, align 8
  br label %73

73:                                               ; preds = %91, %71
  %74 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %75 = icmp ne %struct.rb_node* %74, null
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %78 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %77)
  store %struct.rb_node* %78, %struct.rb_node** %11, align 8
  %79 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %80 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %79)
  store %struct.bmap_rb_extent* %80, %struct.bmap_rb_extent** %13, align 8
  %81 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  store %struct.rb_node* %81, %struct.rb_node** %10, align 8
  %82 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %83 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %86 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* %6, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %73

92:                                               ; preds = %76
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %98 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %103

102:                                              ; preds = %92
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %102, %101, %73
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %68, %34
  %106 = load i32, i32* %4, align 4
  ret i32 %106
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
