; ModuleID = '/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createBufferCollection_fromSliceCollectionSizes.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createBufferCollection_fromSliceCollectionSizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i64, i64*, i8** }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64, i64*)* @createBufferCollection_fromSliceCollectionSizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createBufferCollection_fromSliceCollectionSizes(%struct.TYPE_12__* noalias sret %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_10__* %4 to { i64, i64* }*
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 1
  store i64* %2, i64** %15, align 8
  %16 = bitcast %struct.TYPE_10__* %4 to { i64, i64* }*
  %17 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = call i64 @sliceCollection_totalCapacity(i64 %18, i64* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @createBuffer(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @CONTROL(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = mul i64 %32, 8
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i8**
  store i8** %35, i8*** %8, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = icmp ne i8** %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @CONTROL(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %40, 8
  %42 = call i64 @malloc(i64 %41)
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %9, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = icmp ne i64* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @CONTROL(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %76, %3
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %60, i64* %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8**, i8*** %8, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %66, i8** %69, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %55
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %51

79:                                               ; preds = %51
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 1
  %81 = bitcast %struct.TYPE_11__* %80 to i8*
  %82 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i64* %86, i64** %88, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i8** %89, i8*** %91, align 8
  ret void
}

declare dso_local i64 @sliceCollection_totalCapacity(i64, i64*) #1

declare dso_local i32* @createBuffer(i64) #1

declare dso_local i32 @CONTROL(i32) #1

declare dso_local i64 @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
