; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_copy_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_copy_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.ext2fs_rb_private = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node* }
%struct.bmap_rb_extent = type { %struct.rb_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_8__*)* @rb_copy_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rb_copy_bmap(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ext2fs_rb_private*, align 8
  %7 = alloca %struct.ext2fs_rb_private*, align 8
  %8 = alloca %struct.bmap_rb_extent*, align 8
  %9 = alloca %struct.bmap_rb_extent*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct.rb_node**, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call i64 @rb_alloc_private_data(%struct.TYPE_8__* %15)
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %14, align 8
  store i64 %20, i64* %3, align 8
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %25, %struct.ext2fs_rb_private** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %29, %struct.ext2fs_rb_private** %7, align 8
  %30 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %6, align 8
  %31 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %33 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %6, align 8
  %35 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %34, i32 0, i32 0
  %36 = call %struct.rb_node* @ext2fs_rb_first(%struct.TYPE_9__* %35)
  store %struct.rb_node* %36, %struct.rb_node** %11, align 8
  br label %37

37:                                               ; preds = %65, %21
  %38 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %39 = icmp ne %struct.rb_node* %38, null
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %42 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %41)
  store %struct.bmap_rb_extent* %42, %struct.bmap_rb_extent** %8, align 8
  %43 = call i64 @ext2fs_get_mem(i32 8, %struct.bmap_rb_extent** %9)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %76

47:                                               ; preds = %40
  %48 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %9, align 8
  %49 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %8, align 8
  %50 = call i32 @memcpy(%struct.bmap_rb_extent* %48, %struct.bmap_rb_extent* %49, i32 8)
  %51 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %9, align 8
  %52 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %51, i32 0, i32 0
  store %struct.rb_node* %52, %struct.rb_node** %10, align 8
  %53 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %54 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store %struct.rb_node** %55, %struct.rb_node*** %13, align 8
  store %struct.rb_node* null, %struct.rb_node** %12, align 8
  %56 = load %struct.rb_node**, %struct.rb_node*** %13, align 8
  %57 = load %struct.rb_node*, %struct.rb_node** %56, align 8
  %58 = icmp ne %struct.rb_node* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %61 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %60, i32 0, i32 0
  %62 = call %struct.rb_node* @ext2fs_rb_last(%struct.TYPE_9__* %61)
  store %struct.rb_node* %62, %struct.rb_node** %12, align 8
  %63 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %64 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %63, i32 0, i32 0
  store %struct.rb_node** %64, %struct.rb_node*** %13, align 8
  br label %65

65:                                               ; preds = %59, %47
  %66 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %67 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %68 = load %struct.rb_node**, %struct.rb_node*** %13, align 8
  %69 = call i32 @ext2fs_rb_link_node(%struct.rb_node* %66, %struct.rb_node* %67, %struct.rb_node** %68)
  %70 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %71 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %72 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %71, i32 0, i32 0
  %73 = call i32 @ext2fs_rb_insert_color(%struct.rb_node* %70, %struct.TYPE_9__* %72)
  %74 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %75 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %74)
  store %struct.rb_node* %75, %struct.rb_node** %11, align 8
  br label %37

76:                                               ; preds = %46, %37
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %76, %19
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @rb_alloc_private_data(%struct.TYPE_8__*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_first(%struct.TYPE_9__*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local i64 @ext2fs_get_mem(i32, %struct.bmap_rb_extent**) #1

declare dso_local i32 @memcpy(%struct.bmap_rb_extent*, %struct.bmap_rb_extent*, i32) #1

declare dso_local %struct.rb_node* @ext2fs_rb_last(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @ext2fs_rb_insert_color(%struct.rb_node*, %struct.TYPE_9__*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
