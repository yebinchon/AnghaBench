; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmget_key.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmget_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i64 }

@STBDS_INDEX_EMPTY = common dso_local global i32 0, align 4
@STBDS_BUCKET_SHIFT = common dso_local global i64 0, align 8
@STBDS_BUCKET_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbds_hmget_key(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @stbds_arrgrowf(i32 0, i64 %23, i32 0, i32 1)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_6__* @stbds_header(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load i32, i32* @STBDS_INDEX_EMPTY, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @STBDS_ARR_TO_HASH(i32 %34, i64 %35)
  store i8* %36, i8** %6, align 8
  br label %79

37:                                               ; preds = %5
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i8* @STBDS_HASH_TO_ARR(i8* %38, i64 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call %struct.TYPE_6__* @stbds_header(i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = icmp eq %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 -1, i32* %15, align 4
  br label %77

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @stbds_hm_find_slot(i8* %50, i64 %51, i8* %52, i64 %53, i32 %54)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp ult i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @STBDS_INDEX_EMPTY, align 4
  store i32 %59, i32* %17, align 4
  br label %76

60:                                               ; preds = %49
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* @STBDS_BUCKET_SHIFT, align 8
  %66 = lshr i64 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %66
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %18, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %73 = and i64 %71, %72
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %60, %58
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %77, %22
  %80 = load i8*, i8** %6, align 8
  ret i8* %80
}

declare dso_local i8* @stbds_arrgrowf(i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @stbds_header(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @STBDS_ARR_TO_HASH(i32, i64) #1

declare dso_local i8* @STBDS_HASH_TO_ARR(i8*, i64) #1

declare dso_local i64 @stbds_hm_find_slot(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
