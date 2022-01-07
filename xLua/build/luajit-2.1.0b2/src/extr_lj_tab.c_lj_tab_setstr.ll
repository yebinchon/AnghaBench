; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_lj_tab_setstr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_lj_tab_setstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_tab_setstr(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.TYPE_5__* @hashstr(i32* %10, i32* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  br label %13

13:                                               ; preds = %28, %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i64 @tvisstr(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32* @strV(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* %26, i32** %4, align 8
  br label %39

27:                                               ; preds = %18, %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = call %struct.TYPE_5__* @nextnode(%struct.TYPE_5__* %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %9, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %13, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @setstrV(i32* %33, i32* %8, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @lj_tab_newkey(i32* %36, i32* %37, i32* %8)
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %32, %24
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local %struct.TYPE_5__* @hashstr(i32*, i32*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32* @strV(i32*) #1

declare dso_local %struct.TYPE_5__* @nextnode(%struct.TYPE_5__*) #1

declare dso_local i32 @setstrV(i32*, i32*, i32*) #1

declare dso_local i32* @lj_tab_newkey(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
