; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_find_first_zero.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_find_first_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.ext2fs_rb_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.bmap_rb_extent = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64, i64*)* @rb_find_first_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_find_first_zero(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node**, align 8
  %12 = alloca %struct.ext2fs_rb_private*, align 8
  %13 = alloca %struct.bmap_rb_extent*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %17, %struct.ext2fs_rb_private** %12, align 8
  %18 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %12, align 8
  %19 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.rb_node** %20, %struct.rb_node*** %11, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %110

36:                                               ; preds = %4
  %37 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %12, align 8
  %38 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %37, i32 0, i32 0
  %39 = call i64 @ext2fs_rb_empty_root(%struct.TYPE_5__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOENT, align 4
  store i32 %42, i32* %5, align 4
  br label %110

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %102, %43
  %45 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %46 = load %struct.rb_node*, %struct.rb_node** %45, align 8
  %47 = icmp ne %struct.rb_node* %46, null
  br i1 %47, label %48, label %103

48:                                               ; preds = %44
  %49 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %50 = load %struct.rb_node*, %struct.rb_node** %49, align 8
  store %struct.rb_node* %50, %struct.rb_node** %10, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %52 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %51)
  store %struct.bmap_rb_extent* %52, %struct.bmap_rb_extent** %13, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %55 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %60 = load %struct.rb_node*, %struct.rb_node** %59, align 8
  %61 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %60, i32 0, i32 1
  store %struct.rb_node** %61, %struct.rb_node*** %11, align 8
  br label %102

62:                                               ; preds = %48
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %65 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %68 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = icmp sge i64 %63, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %74 = load %struct.rb_node*, %struct.rb_node** %73, align 8
  %75 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %74, i32 0, i32 0
  store %struct.rb_node** %75, %struct.rb_node*** %11, align 8
  br label %101

76:                                               ; preds = %62
  %77 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %78 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %81 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %8, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %76
  %87 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %88 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %13, align 8
  %91 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  store i32 0, i32* %5, align 4
  br label %110

99:                                               ; preds = %76
  %100 = load i32, i32* @ENOENT, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %58
  br label %44

103:                                              ; preds = %44
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %99, %86, %41, %34
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @ext2fs_rb_empty_root(%struct.TYPE_5__*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
