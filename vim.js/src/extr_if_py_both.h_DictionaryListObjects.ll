; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryListObjects.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryListObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32* (i32*)*)* @DictionaryListObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DictionaryListObjects(%struct.TYPE_7__* %0, i32* (i32*)* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32* (i32*)*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* (i32*)* %1, i32* (i32*)** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32* @PyList_New(i64 %19)
  store i32* %20, i32** %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  br label %25

25:                                               ; preds = %50, %2
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @HASHITEM_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load i32* (i32*)*, i32* (i32*)** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* %33(i32* %34)
  store i32* %35, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @Py_DECREF(i32* %38)
  store i32* null, i32** %3, align 8
  br label %55

40:                                               ; preds = %32
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @PyList_SET_ITEM(i32* %41, i64 %42, i32* %43)
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %40, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  br label %25

53:                                               ; preds = %25
  %54 = load i32*, i32** %9, align 8
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %53, %37
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local i32* @PyList_New(i64) #1

declare dso_local i32 @HASHITEM_EMPTY(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
