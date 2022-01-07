; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_insert_color.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_insert_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_rb_insert_color(%struct.rb_node* %0, %struct.rb_root* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  br label %11

11:                                               ; preds = %107, %78, %39, %2
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %13 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %12)
  store %struct.rb_node* %13, %struct.rb_node** %5, align 8
  %14 = icmp ne %struct.rb_node* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %17 = call i64 @ext2fs_rb_is_red(%struct.rb_node* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %108

21:                                               ; preds = %19
  %22 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %23 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %22)
  store %struct.rb_node* %23, %struct.rb_node** %6, align 8
  %24 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %25 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 0
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  %28 = icmp eq %struct.rb_node* %24, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %21
  %30 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %31 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 1
  %32 = load %struct.rb_node*, %struct.rb_node** %31, align 8
  store %struct.rb_node* %32, %struct.rb_node** %7, align 8
  %33 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %34 = icmp ne %struct.rb_node* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %37 = call i64 @ext2fs_rb_is_red(%struct.rb_node* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %41 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %40)
  %42 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %43 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %42)
  %44 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %45 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %44)
  %46 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  store %struct.rb_node* %46, %struct.rb_node** %3, align 8
  br label %11

47:                                               ; preds = %35, %29
  %48 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 1
  %50 = load %struct.rb_node*, %struct.rb_node** %49, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %52 = icmp eq %struct.rb_node* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %55 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %56 = call i32 @__rb_rotate_left(%struct.rb_node* %54, %struct.rb_root* %55)
  %57 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %57, %struct.rb_node** %8, align 8
  %58 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %58, %struct.rb_node** %5, align 8
  %59 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  store %struct.rb_node* %59, %struct.rb_node** %3, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %62 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %61)
  %63 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %64 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %63)
  %65 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %66 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %67 = call i32 @__rb_rotate_right(%struct.rb_node* %65, %struct.rb_root* %66)
  br label %107

68:                                               ; preds = %21
  %69 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %70 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %69, i32 0, i32 0
  %71 = load %struct.rb_node*, %struct.rb_node** %70, align 8
  store %struct.rb_node* %71, %struct.rb_node** %9, align 8
  %72 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %73 = icmp ne %struct.rb_node* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %76 = call i64 @ext2fs_rb_is_red(%struct.rb_node* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %80 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %79)
  %81 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %82 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %81)
  %83 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %84 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %83)
  %85 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  store %struct.rb_node* %85, %struct.rb_node** %3, align 8
  br label %11

86:                                               ; preds = %74, %68
  %87 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %88 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %87, i32 0, i32 0
  %89 = load %struct.rb_node*, %struct.rb_node** %88, align 8
  %90 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %91 = icmp eq %struct.rb_node* %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %94 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %95 = call i32 @__rb_rotate_right(%struct.rb_node* %93, %struct.rb_root* %94)
  %96 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %96, %struct.rb_node** %10, align 8
  %97 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %97, %struct.rb_node** %5, align 8
  %98 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  store %struct.rb_node* %98, %struct.rb_node** %3, align 8
  br label %99

99:                                               ; preds = %92, %86
  %100 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %101 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %100)
  %102 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %103 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %102)
  %104 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %105 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %106 = call i32 @__rb_rotate_left(%struct.rb_node* %104, %struct.rb_root* %105)
  br label %107

107:                                              ; preds = %99, %60
  br label %11

108:                                              ; preds = %19
  %109 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %110 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %109, i32 0, i32 0
  %111 = load %struct.rb_node*, %struct.rb_node** %110, align 8
  %112 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %111)
  ret void
}

declare dso_local %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node*) #1

declare dso_local i64 @ext2fs_rb_is_red(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_set_black(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_set_red(%struct.rb_node*) #1

declare dso_local i32 @__rb_rotate_left(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @__rb_rotate_right(%struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
