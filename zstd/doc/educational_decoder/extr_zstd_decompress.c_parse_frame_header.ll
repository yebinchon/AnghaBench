; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_parse_frame_header.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_parse_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i64 }

@__const.parse_frame_header.bytes_array = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 4], align 16
@__const.parse_frame_header.bytes_array.1 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @parse_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_frame_header(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @IO_read_bits(i32* %20, i32 8)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 6
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 5
  %26 = and i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 2
  %32 = and i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @CORRUPTION()
  br label %39

39:                                               ; preds = %37, %2
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %39
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @IO_read_bits(i32* %49, i32 8)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 3
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 7
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 10, %55
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = udiv i64 %59, 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %60, %62
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %48, %39
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 bitcast ([4 x i32]* @__const.parse_frame_header.bytes_array to i8*), i64 16, i1 false)
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %17, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 %79, 8
  %81 = call i32 @IO_read_bits(i32* %78, i32 %80)
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  br label %88

85:                                               ; preds = %69
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %72
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %91, %88
  %95 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %95, i8* align 16 bitcast ([4 x i32]* @__const.parse_frame_header.bytes_array.1 to i8*), i64 16, i1 false)
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %19, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %19, align 4
  %102 = mul nsw i32 %101, 8
  %103 = call i32 @IO_read_bits(i32* %100, i32 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 256
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %94
  br label %117

114:                                              ; preds = %91
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %113
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %117
  ret void
}

declare dso_local i32 @IO_read_bits(i32*, i32) #1

declare dso_local i32 @CORRUPTION(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
