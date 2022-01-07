; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c___rb_rotate_right.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c___rb_rotate_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_root*)* @__rb_rotate_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rb_rotate_right(%struct.rb_node* %0, %struct.rb_root* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %7 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %8 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i32 0, i32 0
  %9 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  store %struct.rb_node* %9, %struct.rb_node** %5, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = call %struct.rb_node* @rb_parent(%struct.rb_node* %10)
  store %struct.rb_node* %11, %struct.rb_node** %6, align 8
  %12 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 1
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  store %struct.rb_node* %14, %struct.rb_node** %16, align 8
  %17 = icmp ne %struct.rb_node* %14, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %23 = call i32 @rb_set_parent(%struct.rb_node* %21, %struct.rb_node* %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %26 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %27 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i32 0, i32 1
  store %struct.rb_node* %25, %struct.rb_node** %27, align 8
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %30 = call i32 @rb_set_parent(%struct.rb_node* %28, %struct.rb_node* %29)
  %31 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %32 = icmp ne %struct.rb_node* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %35 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 1
  %37 = load %struct.rb_node*, %struct.rb_node** %36, align 8
  %38 = icmp eq %struct.rb_node* %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %41 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %42 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 1
  store %struct.rb_node* %40, %struct.rb_node** %42, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %45 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %46 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %45, i32 0, i32 0
  store %struct.rb_node* %44, %struct.rb_node** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %52

48:                                               ; preds = %24
  %49 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %50 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %51 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %50, i32 0, i32 0
  store %struct.rb_node* %49, %struct.rb_node** %51, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %54 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %55 = call i32 @rb_set_parent(%struct.rb_node* %53, %struct.rb_node* %54)
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @rb_set_parent(%struct.rb_node*, %struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
