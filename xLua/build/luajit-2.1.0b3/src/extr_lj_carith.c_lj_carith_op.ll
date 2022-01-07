; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_lj_carith_op.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_lj_carith_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_carith_op(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32* @ctype_cts(%struct.TYPE_11__* %8)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @carith_checkarg(%struct.TYPE_11__* %10, i32* %11, i32* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @carith_int64(%struct.TYPE_11__* %15, i32* %16, i32* %7, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @carith_ptr(%struct.TYPE_11__* %21, i32* %22, i32* %7, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call %struct.TYPE_12__* @G(%struct.TYPE_11__* %28)
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @copyTV(%struct.TYPE_11__* %27, i32* %30, i64 %34)
  store i32 1, i32* %3, align 4
  br label %42

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @lj_carith_meta(%struct.TYPE_11__* %38, i32* %39, i32* %7, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @ctype_cts(%struct.TYPE_11__*) #1

declare dso_local i64 @carith_checkarg(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @carith_int64(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i64 @carith_ptr(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_11__*, i32*, i64) #1

declare dso_local %struct.TYPE_12__* @G(%struct.TYPE_11__*) #1

declare dso_local i32 @lj_carith_meta(%struct.TYPE_11__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
