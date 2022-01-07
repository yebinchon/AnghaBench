; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_inflate.c_setup_static_trees.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_inflate.c_setup_static_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @setup_static_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_static_trees(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = call i32 @memset(i32* %5, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 144
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 48
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @tree_add_value(i32* %12, i32 %14, i32 8, i32 %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  store i32 144, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 256
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @tree_add_value(i32* %26, i32 %28, i32 9, i32 %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %21

34:                                               ; preds = %21
  store i32 256, i32* %3, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 280
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 256
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @tree_add_value(i32* %40, i32 %42, i32 7, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %35

48:                                               ; preds = %35
  store i32 280, i32* %3, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 288
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 88
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @tree_add_value(i32* %54, i32 %56, i32 8, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @memset(i32* %64, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %75, %62
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @tree_add_value(i32* %71, i32 %72, i32 5, i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %66

78:                                               ; preds = %66
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tree_add_value(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
