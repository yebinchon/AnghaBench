; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_insert.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_insert(%struct.rb_root* %0, %struct.rb_node* %1, i32 (%struct.rb_node*, %struct.rb_node*)* %2) #0 {
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca i32 (%struct.rb_node*, %struct.rb_node*)*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  store %struct.rb_root* %0, %struct.rb_root** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store i32 (%struct.rb_node*, %struct.rb_node*)* %2, i32 (%struct.rb_node*, %struct.rb_node*)** %6, align 8
  %10 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %11 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %10, i32 0, i32 0
  store %struct.rb_node** %11, %struct.rb_node*** %7, align 8
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  br label %12

12:                                               ; preds = %39, %3
  %13 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i32 (%struct.rb_node*, %struct.rb_node*)*, i32 (%struct.rb_node*, %struct.rb_node*)** %6, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %19 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %21 = call i32 %17(%struct.rb_node* %18, %struct.rb_node* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %22, align 8
  store %struct.rb_node* %23, %struct.rb_node** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 1
  store %struct.rb_node** %29, %struct.rb_node*** %7, align 8
  br label %39

30:                                               ; preds = %16
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %35 = load %struct.rb_node*, %struct.rb_node** %34, align 8
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 0
  store %struct.rb_node** %36, %struct.rb_node*** %7, align 8
  br label %38

37:                                               ; preds = %30
  br label %48

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %26
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %42 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %43 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %44 = call i32 @rb_link_node(%struct.rb_node* %41, %struct.rb_node* %42, %struct.rb_node** %43)
  %45 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %46 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %47 = call i32 @rb_insert_color(%struct.rb_node* %45, %struct.rb_root* %46)
  br label %48

48:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(%struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
