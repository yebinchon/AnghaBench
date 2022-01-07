; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_delta.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/test/src/extr_test_compression.c_test_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@tsl_deltadelta_compressor_finish = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delta() #0 {
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

10:                                               ; preds = %17, %0
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1015
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @delta_delta_compressor_append_value(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* @tsl_deltadelta_compressor_finish, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @PointerGetDatum(i32* %22)
  %24 = call i32 @DirectFunctionCall1(i32 %21, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32* @DatumGetPointer(i32 %25)
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32* @DatumGetPointer(i32 %30)
  %32 = call i32 @VARSIZE(i32* %31)
  %33 = call i32 @AssertInt64Eq(i32 %32, i32 56)
  store i32 0, i32* %4, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @INT8OID, align 4
  %36 = call i32* @delta_delta_decompression_iterator_from_datum_forward(i32 %34, i32 %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call { i64, i32 } @delta_delta_decompression_iterator_try_next_forward(i32* %37)
  store { i64, i32 } %38, { i64, i32 }* %6, align 8
  %39 = bitcast { i64, i32 }* %6 to i8*
  %40 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %39, i64 12, i1 false)
  br label %41

41:                                               ; preds = %60, %20
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DatumGetInt64(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @AssertInt64Eq(i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32*, i32** %3, align 8
  %62 = call { i64, i32 } @delta_delta_decompression_iterator_try_next_forward(i32* %61)
  store { i64, i32 } %62, { i64, i32 }* %8, align 8
  %63 = bitcast { i64, i32 }* %8 to i8*
  %64 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 8 %63, i64 12, i1 false)
  %65 = bitcast %struct.TYPE_3__* %5 to i8*
  %66 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 12, i1 false)
  br label %41

67:                                               ; preds = %41
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @AssertInt64Eq(i32 %68, i32 1015)
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
