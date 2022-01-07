; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__Remove2Op.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__Remove2Op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i64, i64)* @_Remove2Op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Remove2Op(i32 %0, %struct.TYPE_6__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_5__** %15, %struct.TYPE_5__*** %10, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %61, %21
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store %struct.TYPE_5__** %29, %struct.TYPE_5__*** %11, align 8
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %52 = call i32 @_RemoveElement(i32 %50, %struct.TYPE_5__** %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %55 = call i32 @_RemoveElement(i32 %53, %struct.TYPE_5__** %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %42, %35
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store %struct.TYPE_5__** %60, %struct.TYPE_5__*** %10, align 8
  br label %61

61:                                               ; preds = %57, %49
  br label %22

62:                                               ; preds = %22
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %33, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @_RemoveElement(i32, %struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
