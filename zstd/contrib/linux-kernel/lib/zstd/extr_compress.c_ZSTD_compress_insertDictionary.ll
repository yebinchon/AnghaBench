; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_compress_insertDictionary.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_compress_insertDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@ZSTD_DICT_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64)* @ZSTD_compress_insertDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compress_insertDictionary(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ule i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i64 0, i64* %4, align 8
  br label %34

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @ZSTD_readLE32(i8* %15)
  %17 = load i64, i64* @ZSTD_DICT_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @ZSTD_loadDictionaryContent(%struct.TYPE_5__* %25, i8* %26, i64 %27)
  store i64 %28, i64* %4, align 8
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @ZSTD_loadZstdDictionary(%struct.TYPE_5__* %30, i8* %31, i64 %32)
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %24, %13
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @ZSTD_readLE32(i8*) #1

declare dso_local i64 @ZSTD_loadDictionaryContent(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i64 @ZSTD_loadZstdDictionary(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
