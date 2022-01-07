; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_delta2.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_delta2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@tsl_deltadelta_compressor_finish = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delta2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delta2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = call i32* (...) @delta_delta_compressor_alloc()
  store i32* %9, i32** %1, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %0
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1015
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 2, %19
  %21 = call i32 @delta_delta_compressor_append_value(i32* %18, i32 %20)
  br label %26

22:                                               ; preds = %13
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @delta_delta_compressor_append_value(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* @tsl_deltadelta_compressor_finish, align 4
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @PointerGetDatum(i32* %32)
  %34 = call i32 @DirectFunctionCall1(i32 %31, i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32* @DatumGetPointer(i32 %35)
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32* @DatumGetPointer(i32 %40)
  %42 = call i32 @VARSIZE(i32* %41)
  %43 = call i32 @AssertInt64Eq(i32 %42, i32 1664)
  store i32 0, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @INT8OID, align 4
  %46 = call i32* @delta_delta_decompression_iterator_from_datum_forward(i32 %44, i32 %45)
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call { i64, i32 } @delta_delta_decompression_iterator_try_next_forward(i32* %47)
  store { i64, i32 } %48, { i64, i32 }* %6, align 8
  %49 = bitcast { i64, i32 }* %6 to i8*
  %50 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %49, i64 12, i1 false)
  br label %51

51:                                               ; preds = %82, %30
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = srem i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DatumGetInt64(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 2, %70
  %72 = call i32 @AssertInt64Eq(i32 %69, i32 %71)
  br label %79

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DatumGetInt64(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @AssertInt64Eq(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %3, align 8
  %84 = call { i64, i32 } @delta_delta_decompression_iterator_try_next_forward(i32* %83)
  store { i64, i32 } %84, { i64, i32 }* %8, align 8
  %85 = bitcast { i64, i32 }* %8 to i8*
  %86 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 8 %85, i64 12, i1 false)
  %87 = bitcast %struct.TYPE_3__* %5 to i8*
  %88 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 12, i1 false)
  br label %51

89:                                               ; preds = %51
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @AssertInt64Eq(i32 %90, i32 1015)
  ret void
}

declare dso_local i32* @delta_delta_compressor_alloc(...) #1

declare dso_local i32 @delta_delta_compressor_append_value(i32*, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DatumGetPointer(i32) #1

declare dso_local i32 @AssertInt64Eq(i32, i32) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32* @delta_delta_decompression_iterator_from_datum_forward(i32, i32) #1

declare dso_local { i64, i32 } @delta_delta_decompression_iterator_try_next_forward(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DatumGetInt64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
