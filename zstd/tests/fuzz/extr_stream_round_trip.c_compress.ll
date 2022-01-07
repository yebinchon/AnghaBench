; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_stream_round_trip.c_compress.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_stream_round_trip.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32* }
%struct.TYPE_7__ = type { i64 }

@cctx = common dso_local global i32 0, align 4
@ZSTD_reset_session_only = common dso_local global i32 0, align 4
@ZSTD_e_flush = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@ZSTD_e_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i64, i32*)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compress(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %22 = load i32, i32* @cctx, align 4
  %23 = load i32, i32* @ZSTD_reset_session_only, align 4
  %24 = call i32 @ZSTD_CCtx_reset(i32 %22, i32 %23)
  %25 = load i32, i32* @cctx, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @FUZZ_setRandomParameters(i32 %25, i64 %26, i32* %27)
  br label %29

29:                                               ; preds = %117, %5
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  call void @makeInBuffer(%struct.TYPE_8__* sret %12, i32** %8, i64* %9, i32* %33)
  store i32 -1, i32* %13, align 4
  br label %34

34:                                               ; preds = %104, %32
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, -1
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ true, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %117

45:                                               ; preds = %43
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @makeOutBuffer(i32* %46, i64 %47, i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @FUZZ_dataProducer_uint32Range(i32* %54, i32 0, i32 9)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, i32* %13, align 4
  switch i32 %57, label %97 [
    i32 0, label %58
    i32 1, label %58
    i32 2, label %58
    i32 3, label %69
  ]

58:                                               ; preds = %56, %56, %56
  %59 = load i32, i32* @cctx, align 4
  %60 = load i32, i32* @ZSTD_e_flush, align 4
  %61 = call i8* @ZSTD_compressStream2(i32 %59, %struct.TYPE_7__* %14, %struct.TYPE_8__* %12, i32 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @FUZZ_ZASSERT(i64 %63)
  %65 = load i64, i64* %15, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 -1, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %58
  br label %104

69:                                               ; preds = %56
  %70 = load i32, i32* @cctx, align 4
  %71 = load i32, i32* @ZSTD_e_end, align 4
  %72 = call i8* @ZSTD_compressStream2(i32 %70, %struct.TYPE_7__* %14, %struct.TYPE_8__* %12, i32 %71)
  %73 = ptrtoint i8* %72 to i64
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @FUZZ_ZASSERT(i64 %74)
  %76 = load i64, i64* %16, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = load i32, i32* @cctx, align 4
  %80 = load i32, i32* @ZSTD_reset_session_only, align 4
  %81 = call i32 @ZSTD_CCtx_reset(i32 %79, i32 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @FUZZ_dataProducer_uint32Range(i32* %82, i32 0, i32 7)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %87, %89
  store i64 %90, i64* %17, align 8
  %91 = load i32, i32* @cctx, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @FUZZ_setRandomParameters(i32 %91, i64 %92, i32* %93)
  br label %95

95:                                               ; preds = %85, %78
  store i32 -1, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %69
  br label %104

97:                                               ; preds = %56
  %98 = load i32, i32* @cctx, align 4
  %99 = load i32, i32* @ZSTD_e_continue, align 4
  %100 = call i8* @ZSTD_compressStream2(i32 %98, %struct.TYPE_7__* %14, %struct.TYPE_8__* %12, i32 %99)
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @FUZZ_ZASSERT(i64 %102)
  store i32 -1, i32* %13, align 4
  br label %104

104:                                              ; preds = %97, %96, %68
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %7, align 8
  br label %34

117:                                              ; preds = %43
  br label %29

118:                                              ; preds = %29
  br label %119

119:                                              ; preds = %147, %118
  %120 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %120, i8 0, i64 32, i1 false)
  %121 = load i32*, i32** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = call i64 @makeOutBuffer(i32* %121, i64 %122, i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* @cctx, align 4
  %127 = load i32, i32* @ZSTD_e_end, align 4
  %128 = call i8* @ZSTD_compressStream2(i32 %126, %struct.TYPE_7__* %20, %struct.TYPE_8__* %19, i32 %127)
  %129 = ptrtoint i8* %128 to i64
  store i64 %129, i64* %21, align 8
  %130 = load i64, i64* %21, align 8
  %131 = call i32 @FUZZ_ZASSERT(i64 %130)
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 %133
  store i32* %135, i32** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %7, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %21, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %119
  br label %148

147:                                              ; preds = %119
  br label %119

148:                                              ; preds = %146
  %149 = load i64, i64* %11, align 8
  ret i64 %149
}

declare dso_local i32 @ZSTD_CCtx_reset(i32, i32) #1

declare dso_local i32 @FUZZ_setRandomParameters(i32, i64, i32*) #1

declare dso_local void @makeInBuffer(%struct.TYPE_8__* sret, i32**, i64*, i32*) #1

declare dso_local i64 @makeOutBuffer(i32*, i64, i32*) #1

declare dso_local i32 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i8* @ZSTD_compressStream2(i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
