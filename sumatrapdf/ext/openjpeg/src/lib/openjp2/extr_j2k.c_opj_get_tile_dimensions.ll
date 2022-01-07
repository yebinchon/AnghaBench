; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_get_tile_dimensions.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_get_tile_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @opj_get_tile_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_get_tile_dimensions(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, %struct.TYPE_9__* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 3
  %28 = load i32*, i32** %15, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 7
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %23, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %11
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %35, %11
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** %15, align 8
  store i32 4, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %16, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %17, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @opj_int_ceildiv(i64 %66, i64 %69)
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %18, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @opj_int_ceildiv(i64 %75, i64 %78)
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %19, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @opj_int_ceildiv(i64 %88, i64 %91)
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %20, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %20, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %96, %98
  %100 = load i32*, i32** %21, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %104, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %111, %113
  %115 = load i32*, i32** %20, align 8
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %114, %116
  %118 = add nsw i32 %107, %117
  %119 = load i32*, i32** %22, align 8
  store i32 %118, i32* %119, align 4
  ret void
}

declare dso_local i64 @opj_int_ceildiv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
