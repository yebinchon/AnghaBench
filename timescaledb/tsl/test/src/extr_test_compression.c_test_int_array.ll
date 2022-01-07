; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_int_array.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@INT4OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_int_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_int_array() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = load i32, i32* @INT4OID, align 4
  %14 = call i32* @array_compressor_alloc(i32 %13)
  store i32* %14, i32** %1, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %23, %0
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 1015
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @Int32GetDatum(i32 %20)
  %22 = call i32 @array_compressor_append(i32* %19, i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32*, i32** %1, align 8
  %28 = call i32* @array_compressor_finish(i32* %27)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  store i32 0, i32* %4, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @PointerGetDatum(i32* %33)
  %35 = load i32, i32* @INT4OID, align 4
  %36 = call i32* @tsl_array_decompression_iterator_from_datum_forward(i32 %34, i32 %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call { i64, i32 } @array_decompression_iterator_try_next_forward(i32* %37)
  store { i64, i32 } %38, { i64, i32 }* %6, align 8
  %39 = bitcast { i64, i32 }* %6 to i8*
  %40 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %39, i64 12, i1 false)
  br label %41

41:                                               ; preds = %60, %26
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DatumGetInt32(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @AssertInt64Eq(i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32*, i32** %3, align 8
  %62 = call { i64, i32 } @array_decompression_iterator_try_next_forward(i32* %61)
  store { i64, i32 } %62, { i64, i32 }* %8, align 8
  %63 = bitcast { i64, i32 }* %8 to i8*
  %64 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 8 %63, i64 12, i1 false)
  %65 = bitcast %struct.TYPE_4__* %5 to i8*
  %66 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 12, i1 false)
  br label %41

67:                                               ; preds = %41
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @AssertInt64Eq(i32 %68, i32 1015)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @PointerGetDatum(i32* %70)
  %72 = load i32, i32* @INT4OID, align 4
  %73 = call i32* @tsl_array_decompression_iterator_from_datum_reverse(i32 %71, i32 %72)
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call { i64, i32 } @array_decompression_iterator_try_next_reverse(i32* %74)
  store { i64, i32 } %75, { i64, i32 }* %10, align 8
  %76 = bitcast { i64, i32 }* %10 to i8*
  %77 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 8 %76, i64 12, i1 false)
  br label %78

78:                                               ; preds = %98, %67
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DatumGetInt32(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @AssertInt64Eq(i32 %92, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %83
  %99 = load i32*, i32** %3, align 8
  %100 = call { i64, i32 } @array_decompression_iterator_try_next_reverse(i32* %99)
  store { i64, i32 } %100, { i64, i32 }* %12, align 8
  %101 = bitcast { i64, i32 }* %12 to i8*
  %102 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %101, i64 12, i1 false)
  %103 = bitcast %struct.TYPE_4__* %9 to i8*
  %104 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 12, i1 false)
  br label %78

105:                                              ; preds = %78
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @AssertInt64Eq(i32 %106, i32 0)
  ret void
}

declare dso_local i32* @array_compressor_alloc(i32) #1

declare dso_local i32 @array_compressor_append(i32*, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @array_compressor_finish(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @tsl_array_decompression_iterator_from_datum_forward(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local { i64, i32 } @array_decompression_iterator_try_next_forward(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AssertInt64Eq(i32, i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32* @tsl_array_decompression_iterator_from_datum_reverse(i32, i32) #1

declare dso_local { i64, i32 } @array_decompression_iterator_try_next_reverse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
