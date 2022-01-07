; ModuleID = '/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_shuffleDictionaries.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_shuffleDictionaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shuffleDictionaries(i64 %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = bitcast %struct.TYPE_3__* %3 to { i64, i32** }*
  %13 = getelementptr inbounds { i64, i32** }, { i64, i32** }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32** }, { i64, i32** }* %12, i32 0, i32 1
  store i32** %1, i32*** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = call i64 (...) @rand()
  %23 = load i64, i64* %4, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  store i32* %34, i32** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  store i32* %39, i32** %43, align 8
  br label %44

44:                                               ; preds = %21
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %17

47:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = call i64 (...) @rand()
  %54 = load i64, i64* %4, align 8
  %55 = urem i64 %53, %54
  store i64 %55, i64* %9, align 8
  %56 = call i64 (...) @rand()
  %57 = load i64, i64* %4, align 8
  %58 = urem i64 %56, %57
  store i64 %58, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  store i32* %68, i32** %72, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  store i32* %73, i32** %77, align 8
  br label %78

78:                                               ; preds = %52
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %48

81:                                               ; preds = %48
  ret void
}

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
