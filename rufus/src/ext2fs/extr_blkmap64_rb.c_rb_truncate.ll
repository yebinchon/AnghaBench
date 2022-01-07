; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_truncate.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.bmap_rb_extent = type { i32, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rb_root*)* @rb_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_truncate(i32 %0, %struct.rb_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.bmap_rb_extent*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %7 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %8 = call %struct.rb_node* @ext2fs_rb_last(%struct.rb_root* %7)
  store %struct.rb_node* %8, %struct.rb_node** %6, align 8
  br label %9

9:                                                ; preds = %49, %32, %2
  %10 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %11 = icmp ne %struct.rb_node* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %14 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %13)
  store %struct.bmap_rb_extent* %14, %struct.bmap_rb_extent** %5, align 8
  %15 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %5, align 8
  %16 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %5, align 8
  %19 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %50

26:                                               ; preds = %12
  %27 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %5, align 8
  %28 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %34 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %35 = call i32 @ext2fs_rb_erase(%struct.rb_node* %33, %struct.rb_root* %34)
  %36 = call i32 @ext2fs_free_mem(%struct.bmap_rb_extent** %5)
  %37 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %38 = call %struct.rb_node* @ext2fs_rb_last(%struct.rb_root* %37)
  store %struct.rb_node* %38, %struct.rb_node** %6, align 8
  br label %9

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %5, align 8
  %42 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = add nsw i32 %44, 1
  %46 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %5, align 8
  %47 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  br label %9

50:                                               ; preds = %25, %9
  ret void
}

declare dso_local %struct.rb_node* @ext2fs_rb_last(%struct.rb_root*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_erase(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.bmap_rb_extent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
