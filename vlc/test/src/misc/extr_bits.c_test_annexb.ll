; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_bits.c_test_annexb.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_bits.c_test_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.hxxx_bsfw_ep3b_ctx_s*, i8* }
%struct.hxxx_bsfw_ep3b_ctx_s = type { i32 }

@__const.test_annexb.annexb = private unnamed_addr constant [14 x i32] [i32 255, i32 0, i32 0, i32 3, i32 1, i32 255, i32 3, i32 0, i32 0, i32 3, i32 2, i32 0, i32 0, i32 3], align 16
@hxxx_bsfw_ep3b_callbacks = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_annexb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_annexb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [14 x i32], align 16
  %4 = alloca [12 x i32], align 16
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.hxxx_bsfw_ep3b_ctx_s, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = bitcast [14 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([14 x i32]* @__const.test_annexb.annexb to i8*), i64 56, i1 false)
  %10 = bitcast [12 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 48, i1 false)
  %11 = bitcast i8* %10 to [12 x i32]*
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 0
  store i32 255, i32* %12, align 16
  %13 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 3
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 4
  store i32 255, i32* %14, align 16
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 5
  store i32 3, i32* %15, align 4
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 8
  store i32 2, i32* %16, align 16
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i32 0, i32 11
  store i32 3, i32* %17, align 4
  %18 = bitcast [14 x i32]* %3 to i32**
  %19 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @bs_init(%struct.TYPE_9__* %5, i32** %18, i32 %20)
  %22 = call i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s* %6)
  %23 = load i8*, i8** @hxxx_bsfw_ep3b_callbacks, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store %struct.hxxx_bsfw_ep3b_ctx_s* %6, %struct.hxxx_bsfw_ep3b_ctx_s** %25, align 8
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %56, %1
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = mul nsw i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = call i32 @bs_aligned(%struct.TYPE_9__* %5)
  %35 = load i64, i64* %7, align 8
  %36 = urem i64 %35, 8
  %37 = icmp eq i64 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @test_assert(i32 %34, i32 %40)
  %42 = call i32 @bs_remain(%struct.TYPE_9__* %5)
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = mul nsw i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @test_assert(i32 %42, i32 %49)
  %51 = call i32 @bs_pos(%struct.TYPE_9__* %5)
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @test_assert(i32 %51, i32 %53)
  %55 = call i32 @bs_read(%struct.TYPE_9__* %5, i32 1)
  br label %56

56:                                               ; preds = %33
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %26

59:                                               ; preds = %26
  %60 = call i32 @bs_eof(%struct.TYPE_9__* %5)
  %61 = call i32 @test_assert(i32 %60, i32 1)
  %62 = bitcast [14 x i32]* %3 to i32**
  %63 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = call i32 @bs_init(%struct.TYPE_9__* %5, i32** %62, i32 %64)
  %66 = call i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s* %6)
  %67 = load i8*, i8** @hxxx_bsfw_ep3b_callbacks, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store %struct.hxxx_bsfw_ep3b_ctx_s* %6, %struct.hxxx_bsfw_ep3b_ctx_s** %69, align 8
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %94, %59
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  %74 = mul nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = call i32 @bs_remain(%struct.TYPE_9__* %5)
  %79 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = mul nsw i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = mul i64 %83, 2
  %85 = sub i64 %82, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @test_assert(i32 %78, i32 %86)
  %88 = call i32 @bs_pos(%struct.TYPE_9__* %5)
  %89 = load i64, i64* %8, align 8
  %90 = mul i64 %89, 2
  %91 = trunc i64 %90 to i32
  %92 = call i32 @test_assert(i32 %88, i32 %91)
  %93 = call i32 @bs_read(%struct.TYPE_9__* %5, i32 2)
  br label %94

94:                                               ; preds = %77
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %70

97:                                               ; preds = %70
  %98 = call i32 @bs_eof(%struct.TYPE_9__* %5)
  %99 = call i32 @test_assert(i32 %98, i32 1)
  %100 = bitcast [14 x i32]* %3 to i32**
  %101 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = call i32 @bs_init(%struct.TYPE_9__* %5, i32** %100, i32 %102)
  %104 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %105 = call i32 @ARRAY_SIZE(i32* %104)
  %106 = add nsw i32 %105, 1
  %107 = mul nsw i32 %106, 8
  %108 = call i32 @bs_skip(%struct.TYPE_9__* %5, i32 %107)
  %109 = call i32 @bs_remain(%struct.TYPE_9__* %5)
  %110 = call i32 @test_assert(i32 %109, i32 0)
  %111 = call i32 @bs_pos(%struct.TYPE_9__* %5)
  %112 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %113 = call i32 @ARRAY_SIZE(i32* %112)
  %114 = mul nsw i32 %113, 8
  %115 = call i32 @test_assert(i32 %111, i32 %114)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bs_init(%struct.TYPE_9__*, i32**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s*) #2

declare dso_local i32 @test_assert(i32, i32) #2

declare dso_local i32 @bs_aligned(%struct.TYPE_9__*) #2

declare dso_local i32 @bs_remain(%struct.TYPE_9__*) #2

declare dso_local i32 @bs_pos(%struct.TYPE_9__*) #2

declare dso_local i32 @bs_read(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @bs_eof(%struct.TYPE_9__*) #2

declare dso_local i32 @bs_skip(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
