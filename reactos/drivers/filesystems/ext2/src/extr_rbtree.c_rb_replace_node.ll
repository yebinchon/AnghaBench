; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_replace_node.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_replace_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_replace_node(%struct.rb_node* %0, %struct.rb_node* %1, %struct.rb_root* %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  %8 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %9 = call %struct.rb_node* @rb_parent(%struct.rb_node* %8)
  store %struct.rb_node* %9, %struct.rb_node** %7, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %11 = icmp ne %struct.rb_node* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 1
  %16 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %17 = icmp eq %struct.rb_node* %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %21 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i32 0, i32 1
  store %struct.rb_node* %19, %struct.rb_node** %21, align 8
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %24 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 0
  store %struct.rb_node* %23, %struct.rb_node** %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %29 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %30 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %29, i32 0, i32 0
  store %struct.rb_node* %28, %struct.rb_node** %30, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  %35 = icmp ne %struct.rb_node* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %38 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %37, i32 0, i32 1
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %41 = call i32 @rb_set_parent(%struct.rb_node* %39, %struct.rb_node* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %44 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %43, i32 0, i32 0
  %45 = load %struct.rb_node*, %struct.rb_node** %44, align 8
  %46 = icmp ne %struct.rb_node* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 0
  %50 = load %struct.rb_node*, %struct.rb_node** %49, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %52 = call i32 @rb_set_parent(%struct.rb_node* %50, %struct.rb_node* %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %55 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %56 = bitcast %struct.rb_node* %54 to i8*
  %57 = bitcast %struct.rb_node* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @rb_set_parent(%struct.rb_node*, %struct.rb_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
