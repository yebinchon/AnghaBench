; ModuleID = '/home/carl/AnghaBench/redis/src/extr_intset.c_intsetSearch.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_intset.c_intsetSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32*)* @intsetSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsetSearch(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @intrev32ifbe(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i64 -1, i64* %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @intrev32ifbe(i32 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  store i32 0, i32* %4, align 4
  br label %104

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @_intsetGet(%struct.TYPE_4__* %30, i32 %31)
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @intrev32ifbe(i32 %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %104

44:                                               ; preds = %28
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = call i64 @_intsetGet(%struct.TYPE_4__* %46, i32 0)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  store i32 0, i32* %4, align 4
  br label %104

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %63, %64
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @_intsetGet(%struct.TYPE_4__* %67, i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %85

76:                                               ; preds = %62
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %84

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %73
  br label %58

86:                                               ; preds = %83, %58
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  store i32 1, i32* %4, align 4
  br label %104

97:                                               ; preds = %86
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %96, %54, %43, %27
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @intrev32ifbe(i32) #1

declare dso_local i64 @_intsetGet(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
