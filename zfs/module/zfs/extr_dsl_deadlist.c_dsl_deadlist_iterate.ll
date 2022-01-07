; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_iterate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_iterate(%struct.TYPE_5__* %0, i64 (i8*, i32*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64 (i8*, i32*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 (i8*, i32*)* %1, i64 (i8*, i32*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @dsl_deadlist_is_open(%struct.TYPE_5__* %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = call i32 @mutex_enter(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = call i32 @dsl_deadlist_load_tree(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @mutex_exit(i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32* @avl_first(i32* %20)
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %33, %3
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 %26(i8* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %38

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @AVL_NEXT(i32* %35, i32* %36)
  store i32* %37, i32** %7, align 8
  br label %22

38:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_deadlist_is_open(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_deadlist_load_tree(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32* @avl_first(i32*) #1

declare dso_local i32* @AVL_NEXT(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
