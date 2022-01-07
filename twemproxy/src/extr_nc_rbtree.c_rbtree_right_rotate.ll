; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_right_rotate.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_right_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbnode = type { %struct.rbnode*, %struct.rbnode*, %struct.rbnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbnode**, %struct.rbnode*, %struct.rbnode*)* @rbtree_right_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbtree_right_rotate(%struct.rbnode** %0, %struct.rbnode* %1, %struct.rbnode* %2) #0 {
  %4 = alloca %struct.rbnode**, align 8
  %5 = alloca %struct.rbnode*, align 8
  %6 = alloca %struct.rbnode*, align 8
  %7 = alloca %struct.rbnode*, align 8
  store %struct.rbnode** %0, %struct.rbnode*** %4, align 8
  store %struct.rbnode* %1, %struct.rbnode** %5, align 8
  store %struct.rbnode* %2, %struct.rbnode** %6, align 8
  %8 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %9 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %8, i32 0, i32 2
  %10 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  store %struct.rbnode* %10, %struct.rbnode** %7, align 8
  %11 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %12 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %11, i32 0, i32 1
  %13 = load %struct.rbnode*, %struct.rbnode** %12, align 8
  %14 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %15 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %14, i32 0, i32 2
  store %struct.rbnode* %13, %struct.rbnode** %15, align 8
  %16 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %17 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %16, i32 0, i32 1
  %18 = load %struct.rbnode*, %struct.rbnode** %17, align 8
  %19 = load %struct.rbnode*, %struct.rbnode** %5, align 8
  %20 = icmp ne %struct.rbnode* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %23 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %24 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %23, i32 0, i32 1
  %25 = load %struct.rbnode*, %struct.rbnode** %24, align 8
  %26 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %25, i32 0, i32 0
  store %struct.rbnode* %22, %struct.rbnode** %26, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %29 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %28, i32 0, i32 0
  %30 = load %struct.rbnode*, %struct.rbnode** %29, align 8
  %31 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %32 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %31, i32 0, i32 0
  store %struct.rbnode* %30, %struct.rbnode** %32, align 8
  %33 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %34 = load %struct.rbnode**, %struct.rbnode*** %4, align 8
  %35 = load %struct.rbnode*, %struct.rbnode** %34, align 8
  %36 = icmp eq %struct.rbnode* %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %39 = load %struct.rbnode**, %struct.rbnode*** %4, align 8
  store %struct.rbnode* %38, %struct.rbnode** %39, align 8
  br label %61

40:                                               ; preds = %27
  %41 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %42 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %43 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %42, i32 0, i32 0
  %44 = load %struct.rbnode*, %struct.rbnode** %43, align 8
  %45 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %44, i32 0, i32 1
  %46 = load %struct.rbnode*, %struct.rbnode** %45, align 8
  %47 = icmp eq %struct.rbnode* %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %50 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %51 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %50, i32 0, i32 0
  %52 = load %struct.rbnode*, %struct.rbnode** %51, align 8
  %53 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %52, i32 0, i32 1
  store %struct.rbnode* %49, %struct.rbnode** %53, align 8
  br label %60

54:                                               ; preds = %40
  %55 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %56 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %57 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %56, i32 0, i32 0
  %58 = load %struct.rbnode*, %struct.rbnode** %57, align 8
  %59 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %58, i32 0, i32 2
  store %struct.rbnode* %55, %struct.rbnode** %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %37
  %62 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %63 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %64 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %63, i32 0, i32 1
  store %struct.rbnode* %62, %struct.rbnode** %64, align 8
  %65 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %66 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %67 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %66, i32 0, i32 0
  store %struct.rbnode* %65, %struct.rbnode** %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
