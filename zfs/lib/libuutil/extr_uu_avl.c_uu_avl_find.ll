; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_find.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.uu_avl_node_compare_info = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"uu_avl_find: internal error: avl_find succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uu_avl_find(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uu_avl_node_compare_info, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %9, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %9, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %9, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %9, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %8, align 8
  %25 = call i8* @avl_find(i32* %23, %struct.uu_avl_node_compare_info* %9, i32* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @INDEX_ENCODE(%struct.TYPE_6__* %29, i32 %31)
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @uu_panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39, %34
  %45 = getelementptr inbounds %struct.uu_avl_node_compare_info, %struct.uu_avl_node_compare_info* %9, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  ret i8* %46
}

declare dso_local i8* @avl_find(i32*, %struct.uu_avl_node_compare_info*, i32*) #1

declare dso_local i32 @INDEX_ENCODE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @uu_panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
