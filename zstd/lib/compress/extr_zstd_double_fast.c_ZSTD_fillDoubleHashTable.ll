; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_double_fast.c_ZSTD_fillDoubleHashTable.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_double_fast.c_ZSTD_fillDoubleHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@HASH_READ_SIZE = common dso_local global i32* null, align 8
@ZSTD_dtlm_fast = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTD_fillDoubleHashTable(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %14, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32*, i32** @HASH_READ_SIZE, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %15, align 8
  store i32 3, i32* %16, align 4
  br label %56

56:                                               ; preds = %122, %3
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = getelementptr inbounds i32, i32* %58, i64 -1
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ule i32* %59, %60
  br i1 %61, label %62, label %125

62:                                               ; preds = %56
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %118, %62
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %121

73:                                               ; preds = %70
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @ZSTD_hashPtr(i32* %77, i32 %78, i32 %79)
  store i64 %80, i64* %19, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @ZSTD_hashPtr(i32* %84, i32 %85, i32 8)
  store i64 %86, i64* %20, align 8
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %73
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i64, i64* %19, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %73
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = load i64, i64* %20, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* %20, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %99
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @ZSTD_dtlm_fast, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %121

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %70

121:                                              ; preds = %116, %70
  br label %122

122:                                              ; preds = %121
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32* %124, i32** %14, align 8
  br label %56

125:                                              ; preds = %56
  ret void
}

declare dso_local i64 @ZSTD_hashPtr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
