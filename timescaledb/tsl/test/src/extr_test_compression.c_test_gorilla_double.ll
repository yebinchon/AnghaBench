; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_gorilla_double.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_gorilla_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@FLOAT8OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gorilla_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gorilla_double() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
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
  store double 0.000000e+00, double* %4, align 8
  br label %14

14:                                               ; preds = %22, %0
  %15 = load double, double* %4, align 8
  %16 = fcmp olt double %15, 1.015000e+03
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** %1, align 8
  %19 = load double, double* %4, align 8
  %20 = call i32 @double_get_bits(double %19)
  %21 = call i32 @gorilla_compressor_append_value(i32* %18, i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load double, double* %4, align 8
  %24 = fadd double %23, 1.000000e+00
  store double %24, double* %4, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load i32*, i32** %1, align 8
  %27 = call i32* @gorilla_compressor_finish(i32* %26)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call double @VARSIZE(i32* %32)
  %34 = call i32 @AssertInt64Eq(double %33, i32 1200)
  store double 0.000000e+00, double* %4, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @PointerGetDatum(i32* %35)
  %37 = load i32, i32* @FLOAT8OID, align 4
  %38 = call i32* @gorilla_decompression_iterator_from_datum_forward(i32 %36, i32 %37)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32* %39)
  store { i64, i32 } %40, { i64, i32 }* %6, align 8
  %41 = bitcast { i64, i32 }* %6 to i8*
  %42 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %41, i64 12, i1 false)
  br label %43

43:                                               ; preds = %62, %25
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DatumGetFloat8(i32 %56)
  %58 = load double, double* %4, align 8
  %59 = call i32 @AssertDoubleEq(i32 %57, double %58)
  %60 = load double, double* %4, align 8
  %61 = fadd double %60, 1.000000e+00
  store double %61, double* %4, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32*, i32** %3, align 8
  %64 = call { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32* %63)
  store { i64, i32 } %64, { i64, i32 }* %8, align 8
  %65 = bitcast { i64, i32 }* %8 to i8*
  %66 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %65, i64 12, i1 false)
  %67 = bitcast %struct.TYPE_4__* %5 to i8*
  %68 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 12, i1 false)
  br label %43

69:                                               ; preds = %43
  %70 = load double, double* %4, align 8
  %71 = call i32 @AssertInt64Eq(double %70, i32 1015)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @PointerGetDatum(i32* %72)
  %74 = load i32, i32* @FLOAT8OID, align 4
  %75 = call i32* @gorilla_decompression_iterator_from_datum_reverse(i32 %73, i32 %74)
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32* %76)
  store { i64, i32 } %77, { i64, i32 }* %10, align 8
  %78 = bitcast { i64, i32 }* %10 to i8*
  %79 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 8 %78, i64 12, i1 false)
  br label %80

80:                                               ; preds = %100, %69
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DatumGetFloat8(i32 %93)
  %95 = load double, double* %4, align 8
  %96 = fsub double %95, 1.000000e+00
  %97 = call i32 @AssertDoubleEq(i32 %94, double %96)
  %98 = load double, double* %4, align 8
  %99 = fsub double %98, 1.000000e+00
  store double %99, double* %4, align 8
  br label %100

100:                                              ; preds = %85
  %101 = load i32*, i32** %3, align 8
  %102 = call { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32* %101)
  store { i64, i32 } %102, { i64, i32 }* %12, align 8
  %103 = bitcast { i64, i32 }* %12 to i8*
  %104 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 8 %103, i64 12, i1 false)
  %105 = bitcast %struct.TYPE_4__* %9 to i8*
  %106 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  br label %80

107:                                              ; preds = %80
  %108 = load double, double* %4, align 8
  %109 = call i32 @AssertInt64Eq(double %108, i32 0)
  ret void
}

declare dso_local i32* @gorilla_compressor_alloc(...) #1

declare dso_local i32 @gorilla_compressor_append_value(i32*, i32) #1

declare dso_local i32 @double_get_bits(double) #1

declare dso_local i32* @gorilla_compressor_finish(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AssertInt64Eq(double, i32) #1

declare dso_local double @VARSIZE(i32*) #1

declare dso_local i32* @gorilla_decompression_iterator_from_datum_forward(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local { i64, i32 } @gorilla_decompression_iterator_try_next_forward(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AssertDoubleEq(i32, double) #1

declare dso_local i32 @DatumGetFloat8(i32) #1

declare dso_local i32* @gorilla_decompression_iterator_from_datum_reverse(i32, i32) #1

declare dso_local { i64, i32 } @gorilla_decompression_iterator_try_next_reverse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
