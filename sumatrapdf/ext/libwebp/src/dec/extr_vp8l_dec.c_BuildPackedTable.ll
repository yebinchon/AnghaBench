; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_BuildPackedTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_BuildPackedTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@HUFFMAN_PACKED_TABLE_SIZE = common dso_local global i64 0, align 8
@GREEN = common dso_local global i64 0, align 8
@NUM_LITERAL_CODES = common dso_local global i64 0, align 8
@BITS_SPECIAL_MARKER = common dso_local global i64 0, align 8
@RED = common dso_local global i64 0, align 8
@BLUE = common dso_local global i64 0, align 8
@ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @BuildPackedTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildPackedTable(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %110, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @HUFFMAN_PACKED_TABLE_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %113

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %16
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = load i64, i64* @GREEN, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = bitcast %struct.TYPE_8__* %6 to i8*
  %27 = bitcast %struct.TYPE_8__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NUM_LITERAL_CODES, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BITS_SPECIAL_MARKER, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %109

43:                                               ; preds = %11
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = bitcast %struct.TYPE_8__* %6 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @AccumulateHCode(i64 %51, i64 %53, i32 8, %struct.TYPE_7__* %48)
  %55 = load i64, i64* %4, align 8
  %56 = ashr i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %58, align 8
  %60 = load i64, i64* @RED, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %59, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = bitcast %struct.TYPE_8__* %64 to { i64, i64 }*
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @AccumulateHCode(i64 %68, i64 %70, i32 16, %struct.TYPE_7__* %65)
  %72 = load i64, i64* %4, align 8
  %73 = ashr i64 %72, %71
  store i64 %73, i64* %4, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %75, align 8
  %77 = load i64, i64* @BLUE, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = bitcast %struct.TYPE_8__* %81 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @AccumulateHCode(i64 %85, i64 %87, i32 0, %struct.TYPE_7__* %82)
  %89 = load i64, i64* %4, align 8
  %90 = ashr i64 %89, %88
  store i64 %90, i64* %4, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %92, align 8
  %94 = load i64, i64* @ALPHA, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %93, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = bitcast %struct.TYPE_8__* %98 to { i64, i64 }*
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @AccumulateHCode(i64 %102, i64 %104, i32 24, %struct.TYPE_7__* %99)
  %106 = load i64, i64* %4, align 8
  %107 = ashr i64 %106, %105
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  br label %109

109:                                              ; preds = %43, %32
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %3, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %3, align 8
  br label %7

113:                                              ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @AccumulateHCode(i64, i64, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
