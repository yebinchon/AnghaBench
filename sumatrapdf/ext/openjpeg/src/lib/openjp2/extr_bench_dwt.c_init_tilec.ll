; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_bench_dwt.c_init_tilec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_bench_dwt.c_init_tilec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i64, i8*, i8*, i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tilec(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = call i32 @memset(%struct.TYPE_5__* %18, i32 0, i32 56)
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %34 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = mul i64 %40, %49
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @opj_malloc(i32 %53)
  %55 = inttoptr i64 %54 to i8**
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8** %55, i8*** %57, align 8
  store i64 0, i64* %16, align 8
  br label %58

58:                                               ; preds = %70, %6
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i64, i64* %16, align 8
  %64 = call i8* @getValue(i64 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %16, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %16, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @opj_calloc(i64 %79, i32 32)
  %81 = inttoptr i64 %80 to %struct.TYPE_6__*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %15, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %133, %73
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load i64, i64* %15, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %15, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i8* @opj_int_ceildivpow2(i8* %101, i8* %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i8* @opj_int_ceildivpow2(i8* %109, i8* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %15, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i8* @opj_int_ceildivpow2(i8* %117, i8* %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = call i8* @opj_int_ceildivpow2(i8* %125, i8* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 1
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %13, align 8
  br label %133

133:                                              ; preds = %96
  %134 = load i64, i64* %14, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %14, align 8
  br label %90

136:                                              ; preds = %90
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i8* @getValue(i64) #1

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i8* @opj_int_ceildivpow2(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
