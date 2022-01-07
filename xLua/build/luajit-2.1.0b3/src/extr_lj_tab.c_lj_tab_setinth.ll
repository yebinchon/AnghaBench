; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_setinth.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_setinth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @lj_tab_setinth(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_12__* @hashnum(i32* %13, %struct.TYPE_11__* %8)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  br label %15

15:                                               ; preds = %32, %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = call i64 @tvisnum(%struct.TYPE_13__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %4, align 8
  br label %40

31:                                               ; preds = %20, %15
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = call %struct.TYPE_12__* @nextnode(%struct.TYPE_12__* %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %9, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %15, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.TYPE_11__* @lj_tab_newkey(i32* %37, i32* %38, %struct.TYPE_11__* %8)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %41
}

declare dso_local %struct.TYPE_12__* @hashnum(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @tvisnum(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @nextnode(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @lj_tab_newkey(i32*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
