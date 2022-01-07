; ModuleID = '/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createBufferCollection_fromFiles.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createBufferCollection_fromFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8**, i64*, i32 }
%struct.TYPE_6__ = type { i8*, i64, i64 }

@UTIL_FILESIZE_UNKNOWN = common dso_local global i64 0, align 8
@BENCH_SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8**, i32)* @createBufferCollection_fromFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createBufferCollection_fromFiles(%struct.TYPE_7__* noalias sret %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i8** %1, i8*** %4, align 8
  store i32 %2, i32* %5, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @UTIL_getTotalFileSize(i8** %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @UTIL_FILESIZE_UNKNOWN, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BENCH_SIZE_MAX, align 8
  %27 = icmp sle i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @calloc(i32 %45, i32 8)
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %9, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = icmp ne i64* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @loadFiles(i8* %52, i64 %53, i64* %54, i8** %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = call i8* @malloc(i64 %64)
  %66 = bitcast i8* %65 to i8**
  store i8** %66, i8*** %11, align 8
  %67 = load i8**, i8*** %11, align 8
  %68 = icmp ne i8** %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %97, %3
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ult i32 %77, %78
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %82, label %100

82:                                               ; preds = %80
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8**, i8*** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %89, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %14, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %72

100:                                              ; preds = %80
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i64 %115, i64* %116, align 8
  %117 = load i8**, i8*** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8** %117, i8*** %118, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i64* %119, i64** %120, align 8
  %121 = load i32, i32* %5, align 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %124 = bitcast %struct.TYPE_6__* %123 to i8*
  %125 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %127 = bitcast %struct.TYPE_5__* %126 to i8*
  %128 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 24, i1 false)
  ret void
}

declare dso_local i64 @UTIL_getTotalFileSize(i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @loadFiles(i8*, i64, i64*, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
