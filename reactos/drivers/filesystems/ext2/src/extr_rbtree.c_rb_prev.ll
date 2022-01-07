; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_prev.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @rb_prev(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %8 = icmp ne %struct.rb_node* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 0
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  store %struct.rb_node* %12, %struct.rb_node** %3, align 8
  br label %13

13:                                               ; preds = %18, %9
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 1
  %16 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %17 = icmp ne %struct.rb_node* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  store %struct.rb_node* %21, %struct.rb_node** %3, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %23, %struct.rb_node** %2, align 8
  br label %41

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %37, %24
  %26 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %27 = call %struct.rb_node* @rb_parent(%struct.rb_node* %26)
  store %struct.rb_node* %27, %struct.rb_node** %4, align 8
  %28 = icmp ne %struct.rb_node* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %31 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %32 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i32 0, i32 0
  %33 = load %struct.rb_node*, %struct.rb_node** %32, align 8
  %34 = icmp eq %struct.rb_node* %30, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %38, %struct.rb_node** %3, align 8
  br label %25

39:                                               ; preds = %35
  %40 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %40, %struct.rb_node** %2, align 8
  br label %41

41:                                               ; preds = %39, %22
  %42 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %42
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
