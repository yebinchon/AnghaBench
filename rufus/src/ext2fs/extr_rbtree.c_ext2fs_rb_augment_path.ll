; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_augment_path.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c_ext2fs_rb_augment_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, i32 (%struct.rb_node*, i8*)*, i8*)* @ext2fs_rb_augment_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2fs_rb_augment_path(%struct.rb_node* %0, i32 (%struct.rb_node*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca i32 (%struct.rb_node*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store i32 (%struct.rb_node*, i8*)* %1, i32 (%struct.rb_node*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %49, %3
  %9 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %5, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 %9(%struct.rb_node* %10, i8* %11)
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %14 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %13)
  store %struct.rb_node* %14, %struct.rb_node** %7, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %16 = icmp ne %struct.rb_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  ret void

18:                                               ; preds = %8
  %19 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %21 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i32 0, i32 0
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  %23 = icmp eq %struct.rb_node* %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 1
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  %28 = icmp ne %struct.rb_node* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %5, align 8
  %31 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %32 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i32 0, i32 1
  %33 = load %struct.rb_node*, %struct.rb_node** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 %30(%struct.rb_node* %33, i8* %34)
  br label %49

36:                                               ; preds = %24, %18
  %37 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %38 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %37, i32 0, i32 0
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = icmp ne %struct.rb_node* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %5, align 8
  %43 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %44 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %43, i32 0, i32 0
  %45 = load %struct.rb_node*, %struct.rb_node** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 %42(%struct.rb_node* %45, i8* %46)
  br label %48

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  store %struct.rb_node* %50, %struct.rb_node** %4, align 8
  br label %8
}

declare dso_local %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
