; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_block_picker.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_block_picker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@metaslab_min_search_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64*, i64, i64)* @metaslab_block_picker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @metaslab_block_picker(%struct.TYPE_6__* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32* @metaslab_block_find(i32* %27, %struct.TYPE_6__* %28, i64 %30, i64 %31, i32* %11)
  store i32* %32, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = call i64 @rs_get_start(i32* %36, %struct.TYPE_6__* %37)
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %35, %24
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = call i64 @rs_get_start(i32* %44, %struct.TYPE_6__* %45)
  %47 = load i64, i64* %13, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @metaslab_min_search_count, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i1 [ true, %43 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %40
  %58 = phi i1 [ false, %40 ], [ %56, %55 ]
  br i1 %58, label %59, label %81

59:                                               ; preds = %57
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = call i64 @rs_get_start(i32* %60, %struct.TYPE_6__* %61)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = call i64 @rs_get_end(i32* %66, %struct.TYPE_6__* %67)
  %69 = icmp sle i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %15, align 8
  store i64 %75, i64* %5, align 8
  br label %83

76:                                               ; preds = %59
  %77 = load i32*, i32** %10, align 8
  %78 = call i32* @zfs_btree_next(i32* %77, i32* %11, i32* %11)
  store i32* %78, i32** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %40

81:                                               ; preds = %57
  %82 = load i64*, i64** %7, align 8
  store i64 0, i64* %82, align 8
  store i64 -1, i64* %5, align 8
  br label %83

83:                                               ; preds = %81, %70
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local i32* @metaslab_block_find(i32*, %struct.TYPE_6__*, i64, i64, i32*) #1

declare dso_local i64 @rs_get_start(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @rs_get_end(i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @zfs_btree_next(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
