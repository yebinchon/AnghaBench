; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_modes.c_crypto_get_ptrs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_modes.c_crypto_get_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_get_ptrs(%struct.TYPE_7__* %0, i8** %1, i64* %2, i32** %3, i64* %4, i32** %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i64 %6, i64* %14, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %127 [
    i32 129, label %25
    i32 128, label %53
  ]

25:                                               ; preds = %7
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %15, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %16, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32**, i32*** %11, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64*, i64** %12, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32**, i32*** %13, align 8
  store i32* null, i32** %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %48, %49
  %51 = load i64*, i64** %10, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %37, %25
  br label %127

53:                                               ; preds = %7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %17, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %19, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %20, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %20, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = bitcast i32* %66 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %18, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %21, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = load i32**, i32*** %11, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %76, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ule i64 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %53
  %84 = load i64, i64* %14, align 8
  %85 = load i64*, i64** %12, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i32**, i32*** %13, align 8
  store i32* null, i32** %86, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %87, %88
  %90 = load i64*, i64** %10, align 8
  store i64 %89, i64* %90, align 8
  br label %123

91:                                               ; preds = %53
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %19, align 8
  %96 = sub i64 %94, %95
  %97 = load i64*, i64** %12, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %127

104:                                              ; preds = %91
  %105 = load i64, i64* %20, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %20, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %20, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = bitcast i32* %111 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %18, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load i32**, i32*** %13, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %12, align 8
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %118, %120
  %122 = load i64*, i64** %10, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %104, %83
  %124 = load i64, i64* %20, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load i8**, i8*** %9, align 8
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %103, %7, %123, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
