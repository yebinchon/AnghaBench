; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_gorilla_float.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_gorilla_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@FLOAT4OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gorilla_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gorilla_float() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = call i32* (...) @gorilla_compressor_alloc()
  store i32* %13, i32** %1, align 8
  store float 0.000000e+00, float* %4, align 4
  br label %14

14:                                               ; preds = %23, %0
  %15 = load float, float* %4, align 4
  %16 = fpext float %15 to double
  %17 = fcmp olt double %16, 1.015000e+03
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** %1, align 8
  %20 = load float, float* %4, align 4
  %21 = call i32 @float_get_bits(float %20)
  %22 = call i32 @gorilla_compressor_append_value(i32* %19, i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load float, float* %4, align 4
  %25 = fadd float %24, 1.000000e+00
  store float %25, float* %4, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32*, i32** %1, align 8
  %28 = call i32* @gorilla_compressor_finish(i32* %27)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call float @VARSIZE(i32* %33)
  %35 = call i32 @AssertInt64Eq(float %34, float 1.200000e+03)
  store float 0.000000e+00, float* %4, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @PointerGetDatum(i32* %36)
  %38 = load i32, i32* @FLOAT4OID, align 4
  %39 = call i32* @gorilla_decompression_iterator_from_datum_forward(i32 %37, i32 %38)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32* %40)
  store { i64, i32 } %41, { i64, i32 }* %6, align 8
  %42 = bitcast { i64, i32 }* %6 to i8*
  %43 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %42, i64 12, i1 false)
  br label %44

44:                                               ; preds = %65, %26
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call float @DatumGetFloat4(i32 %57)
  %59 = load float, float* %4, align 4
  %60 = call i32 @AssertDoubleEq(float %58, float %59)
  %61 = load float, float* %4, align 4
  %62 = fpext float %61 to double
  %63 = fadd double %62, 1.000000e+00
  %64 = fptrunc double %63 to float
  store float %64, float* %4, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32*, i32** %3, align 8
  %67 = call { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32* %66)
  store { i64, i32 } %67, { i64, i32 }* %8, align 8
  %68 = bitcast { i64, i32 }* %8 to i8*
  %69 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 8 %68, i64 12, i1 false)
  %70 = bitcast %struct.TYPE_4__* %5 to i8*
  %71 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  br label %44

72:                                               ; preds = %44
  %73 = load float, float* %4, align 4
  %74 = call i32 @AssertInt64Eq(float %73, float 1.015000e+03)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @PointerGetDatum(i32* %75)
  %77 = load i32, i32* @FLOAT4OID, align 4
  %78 = call i32* @gorilla_decompression_iterator_from_datum_reverse(i32 %76, i32 %77)
  store i32* %78, i32** %3, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32* %79)
  store { i64, i32 } %80, { i64, i32 }* %10, align 8
  %81 = bitcast { i64, i32 }* %10 to i8*
  %82 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 8 %81, i64 12, i1 false)
  br label %83

83:                                               ; preds = %103, %72
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call float @DatumGetFloat4(i32 %96)
  %98 = load float, float* %4, align 4
  %99 = fsub float %98, 1.000000e+00
  %100 = call i32 @AssertInt64Eq(float %97, float %99)
  %101 = load float, float* %4, align 4
  %102 = fsub float %101, 1.000000e+00
  store float %102, float* %4, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32*, i32** %3, align 8
  %105 = call { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32* %104)
  store { i64, i32 } %105, { i64, i32 }* %12, align 8
  %106 = bitcast { i64, i32 }* %12 to i8*
  %107 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 8 %106, i64 12, i1 false)
  %108 = bitcast %struct.TYPE_4__* %9 to i8*
  %109 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 12, i1 false)
  br label %83

110:                                              ; preds = %83
  %111 = load float, float* %4, align 4
  %112 = call i32 @AssertInt64Eq(float %111, float 0.000000e+00)
  ret void
}

declare dso_local i32* @gorilla_compressor_alloc(...) #1

declare dso_local i32 @gorilla_compressor_append_value(i32*, i32) #1

declare dso_local i32 @float_get_bits(float) #1

declare dso_local i32* @gorilla_compressor_finish(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AssertInt64Eq(float, float) #1

declare dso_local float @VARSIZE(i32*) #1

declare dso_local i32* @gorilla_decompression_iterator_from_datum_forward(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AssertDoubleEq(float, float) #1

declare dso_local float @DatumGetFloat4(i32) #1

declare dso_local i32* @gorilla_decompression_iterator_from_datum_reverse(i32, i32) #1

declare dso_local { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
