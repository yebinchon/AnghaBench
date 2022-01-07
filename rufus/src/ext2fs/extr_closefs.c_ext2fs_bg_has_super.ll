; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_bg_has_super.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_bg_has_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_bg_has_super(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i64 @ext2fs_has_feature_sparse_super2(%struct.TYPE_6__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %15
  store i32 1, i32* %3, align 4
  br label %66

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %66

37:                                               ; preds = %9
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @ext2fs_has_feature_sparse_super(%struct.TYPE_6__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %66

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %66

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @test_root(i32 %53, i32 3)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @test_root(i32 %57, i32 5)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @test_root(i32 %61, i32 7)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56, %52
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %51, %46, %36, %35, %8
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @ext2fs_has_feature_sparse_super2(%struct.TYPE_6__*) #1

declare dso_local i32 @ext2fs_has_feature_sparse_super(%struct.TYPE_6__*) #1

declare dso_local i64 @test_root(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
