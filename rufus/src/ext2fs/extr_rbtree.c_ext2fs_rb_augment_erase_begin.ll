; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_augment_erase_begin.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_augment_erase_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @ext2fs_rb_augment_erase_begin(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %8 = icmp ne %struct.rb_node* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 1
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %15)
  store %struct.rb_node* %16, %struct.rb_node** %4, align 8
  br label %62

17:                                               ; preds = %9, %1
  %18 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 0
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %21 = icmp ne %struct.rb_node* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %24 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i32 0, i32 1
  %25 = load %struct.rb_node*, %struct.rb_node** %24, align 8
  store %struct.rb_node* %25, %struct.rb_node** %4, align 8
  br label %61

26:                                               ; preds = %17
  %27 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %28 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %27, i32 0, i32 1
  %29 = load %struct.rb_node*, %struct.rb_node** %28, align 8
  %30 = icmp ne %struct.rb_node* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 0
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  store %struct.rb_node* %34, %struct.rb_node** %4, align 8
  br label %60

35:                                               ; preds = %26
  %36 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %37 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %36)
  store %struct.rb_node* %37, %struct.rb_node** %4, align 8
  %38 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %39 = icmp ne %struct.rb_node* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.rb_node* null, %struct.rb_node** %2, align 8
  br label %64

41:                                               ; preds = %35
  %42 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 0
  %44 = load %struct.rb_node*, %struct.rb_node** %43, align 8
  %45 = icmp ne %struct.rb_node* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %48 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %47, i32 0, i32 0
  %49 = load %struct.rb_node*, %struct.rb_node** %48, align 8
  store %struct.rb_node* %49, %struct.rb_node** %4, align 8
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %52 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %51)
  %53 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %54 = icmp ne %struct.rb_node* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %57 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %56)
  store %struct.rb_node* %57, %struct.rb_node** %4, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %22
  br label %62

62:                                               ; preds = %61, %14
  %63 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %63, %struct.rb_node** %2, align 8
  br label %64

64:                                               ; preds = %62, %40
  %65 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %65
}

declare dso_local %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
