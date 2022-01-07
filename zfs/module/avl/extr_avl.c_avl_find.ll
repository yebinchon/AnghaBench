; ModuleID = '/home/carl/AnghaBench/zfs/module/avl/extr_avl.c_avl_find.c'
source_filename = "/home/carl/AnghaBench/zfs/module/avl/extr_avl.c_avl_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 (i8*, i8*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__** }

@avl_balance2child = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @avl_find(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  br label %19

19:                                               ; preds = %54, %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @AVL_NODE2DATA(%struct.TYPE_7__* %28, i64 %29)
  %31 = call i32 %26(i8* %27, i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 -1, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %35, 1
  br label %37

37:                                               ; preds = %34, %22
  %38 = phi i1 [ false, %22 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @AVL_NODE2DATA(%struct.TYPE_7__* %44, i64 %45)
  store i8* %46, i8** %4, align 8
  br label %71

47:                                               ; preds = %37
  %48 = load i32*, i32** @avl_balance2child, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %8, align 8
  br label %19

62:                                               ; preds = %19
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @AVL_MKINDEX(%struct.TYPE_7__* %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %62
  store i8* null, i8** %4, align 8
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i8* @AVL_NODE2DATA(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @AVL_MKINDEX(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
