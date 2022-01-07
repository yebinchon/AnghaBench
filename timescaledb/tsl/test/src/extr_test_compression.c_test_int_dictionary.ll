; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_int_dictionary.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_int_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@INT4OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_int_dictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_int_dictionary() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = load i32, i32* @INT4OID, align 4
  %10 = call i32* @dictionary_compressor_alloc(i32 %9)
  store i32* %10, i32** %1, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %20, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 1015
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* %4, align 4
  %17 = srem i32 %16, 15
  %18 = call i32 @Int32GetDatum(i32 %17)
  %19 = call i32 @dictionary_compressor_append(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load i32*, i32** %1, align 8
  %25 = call i32* @dictionary_compressor_finish(i32* %24)
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  store i32 0, i32* %4, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @PointerGetDatum(i32* %30)
  %32 = load i32, i32* @INT4OID, align 4
  %33 = call i32* @tsl_dictionary_decompression_iterator_from_datum_forward(i32 %31, i32 %32)
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call { i64, i32 } @dictionary_decompression_iterator_try_next_forward(i32* %34)
  store { i64, i32 } %35, { i64, i32 }* %6, align 8
  %36 = bitcast { i64, i32 }* %6 to i8*
  %37 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %36, i64 12, i1 false)
  br label %38

38:                                               ; preds = %58, %23
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DatumGetInt32(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = srem i32 %53, 15
  %55 = call i32 @AssertInt64Eq(i32 %52, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32*, i32** %3, align 8
  %60 = call { i64, i32 } @dictionary_decompression_iterator_try_next_forward(i32* %59)
  store { i64, i32 } %60, { i64, i32 }* %8, align 8
  %61 = bitcast { i64, i32 }* %8 to i8*
  %62 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 8 %61, i64 12, i1 false)
  %63 = bitcast %struct.TYPE_3__* %5 to i8*
  %64 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  br label %38

65:                                               ; preds = %38
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @AssertInt64Eq(i32 %66, i32 1015)
  ret void
}

declare dso_local i32* @dictionary_compressor_alloc(i32) #1

declare dso_local i32 @dictionary_compressor_append(i32*, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @dictionary_compressor_finish(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @tsl_dictionary_decompression_iterator_from_datum_forward(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local { i64, i32 } @dictionary_decompression_iterator_try_next_forward(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AssertInt64Eq(i32, i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
