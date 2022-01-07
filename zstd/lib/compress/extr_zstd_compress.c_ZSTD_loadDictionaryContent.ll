; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_loadDictionaryContent.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_loadDictionaryContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__, i8*, i32, i8* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32 }

@HASH_READ_SIZE = common dso_local global i64 0, align 8
@ZSTD_CHUNKSIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i8*, i64, i32)* @ZSTD_loadDictionaryContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_loadDictionaryContent(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %15, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @ZSTD_window_update(%struct.TYPE_16__* %25, i8* %26, i64 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %45

34:                                               ; preds = %6
  %35 = load i32*, i32** %15, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = ptrtoint i32* %35 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = inttoptr i64 %43 to i8*
  br label %45

45:                                               ; preds = %34, %33
  %46 = phi i8* [ null, %33 ], [ %44, %34 ]
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ZSTD_assertEqualCParams(i32 %55, i32 %53)
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @HASH_READ_SIZE, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %146

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %131, %61
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = load i64, i64* @HASH_READ_SIZE, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %62
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i32, i32* @ZSTD_CHUNKSIZE_MAX, align 4
  %80 = call i64 @MIN(i64 %78, i32 %79)
  store i64 %80, i64* %17, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %18, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_14__* %84, i32* %85, %struct.TYPE_15__* %86, i32* %87, i32* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %129 [
    i32 131, label %94
    i32 132, label %99
    i32 130, label %104
    i32 129, label %104
    i32 128, label %104
    i32 136, label %116
    i32 135, label %116
    i32 134, label %116
    i32 133, label %116
  ]

94:                                               ; preds = %71
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @ZSTD_fillHashTable(%struct.TYPE_14__* %95, i32* %96, i32 %97)
  br label %131

99:                                               ; preds = %71
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_14__* %100, i32* %101, i32 %102)
  br label %131

104:                                              ; preds = %71, %71, %71
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* @HASH_READ_SIZE, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i64, i64* @HASH_READ_SIZE, align 8
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @ZSTD_insertAndFindFirstIndex(%struct.TYPE_14__* %109, i32* %113)
  br label %115

115:                                              ; preds = %108, %104
  br label %131

116:                                              ; preds = %71, %71, %71, %71
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @HASH_READ_SIZE, align 8
  %119 = icmp uge i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = load i64, i64* @HASH_READ_SIZE, align 8
  %124 = sub i64 0, %123
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @ZSTD_updateTree(%struct.TYPE_14__* %121, i32* %125, i32* %126)
  br label %128

128:                                              ; preds = %120, %116
  br label %131

129:                                              ; preds = %71
  %130 = call i32 @assert(i32 0)
  br label %131

131:                                              ; preds = %129, %128, %115, %99, %94
  %132 = load i32*, i32** %18, align 8
  store i32* %132, i32** %14, align 8
  br label %62

133:                                              ; preds = %62
  %134 = load i32*, i32** %15, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = ptrtoint i32* %134 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  store i64 0, i64* %7, align 8
  br label %146

146:                                              ; preds = %133, %60
  %147 = load i64, i64* %7, align 8
  ret i64 %147
}

declare dso_local i32 @ZSTD_window_update(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @ZSTD_assertEqualCParams(i32, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @ZSTD_fillHashTable(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @ZSTD_insertAndFindFirstIndex(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ZSTD_updateTree(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
