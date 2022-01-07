; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_loadDictionaryContent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_loadDictionaryContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__, i8*, i32, i8* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }

@HASH_READ_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i64, i32)* @ZSTD_loadDictionaryContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_loadDictionaryContent(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @ZSTD_window_update(%struct.TYPE_14__* %20, i8* %21, i64 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %40

29:                                               ; preds = %5
  %30 = load i32*, i32** %13, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = ptrtoint i32* %30 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = inttoptr i64 %38 to i8*
  br label %40

40:                                               ; preds = %29, %28
  %41 = phi i8* [ null, %28 ], [ %39, %29 ]
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ZSTD_assertEqualCParams(i32 %50, i32 %48)
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @HASH_READ_SIZE, align 8
  %54 = icmp ule i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %111

56:                                               ; preds = %40
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %96 [
    i32 131, label %61
    i32 132, label %66
    i32 130, label %71
    i32 129, label %71
    i32 128, label %71
    i32 135, label %83
    i32 134, label %83
    i32 133, label %83
  ]

61:                                               ; preds = %56
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ZSTD_fillHashTable(%struct.TYPE_12__* %62, i32* %63, i32 %64)
  br label %98

66:                                               ; preds = %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_12__* %67, i32* %68, i32 %69)
  br label %98

71:                                               ; preds = %56, %56, %56
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @HASH_READ_SIZE, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i64, i64* @HASH_READ_SIZE, align 8
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @ZSTD_insertAndFindFirstIndex(%struct.TYPE_12__* %76, i32* %80)
  br label %82

82:                                               ; preds = %75, %71
  br label %98

83:                                               ; preds = %56, %56, %56
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @HASH_READ_SIZE, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* @HASH_READ_SIZE, align 8
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @ZSTD_updateTree(%struct.TYPE_12__* %88, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %87, %83
  br label %98

96:                                               ; preds = %56
  %97 = call i32 @assert(i32 0)
  br label %98

98:                                               ; preds = %96, %95, %82, %66, %61
  %99 = load i32*, i32** %13, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = ptrtoint i32* %99 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %98, %55
  %112 = load i64, i64* %6, align 8
  ret i64 %112
}

declare dso_local i32 @ZSTD_window_update(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @ZSTD_assertEqualCParams(i32, i32) #1

declare dso_local i32 @ZSTD_fillHashTable(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ZSTD_insertAndFindFirstIndex(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ZSTD_updateTree(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
