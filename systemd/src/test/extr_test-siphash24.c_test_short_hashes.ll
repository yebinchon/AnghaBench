; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_test_short_hashes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_test_short_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type { i32 }

@__const.test_short_hashes.one = private unnamed_addr constant [16 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22], align 16
@__const.test_short_hashes.key = private unnamed_addr constant [16 x i32] [i32 34, i32 36, i32 65, i32 34, i32 85, i32 119, i32 136, i32 7, i32 35, i32 9, i32 35, i32 20, i32 12, i32 51, i32 14, i32 15], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_short_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_short_hashes() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [64 x i32], align 16
  %4 = alloca %struct.siphash, align 4
  %5 = alloca %struct.siphash, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [16 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([16 x i32]* @__const.test_short_hashes.one to i8*), i64 64, i1 false)
  %9 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([16 x i32]* @__const.test_short_hashes.key to i8*), i64 64, i1 false)
  %10 = bitcast [64 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 256, i1 false)
  %11 = bitcast %struct.siphash* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.siphash* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %14 = call i32 @siphash24_init(%struct.siphash* %4, i32* %13)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %16 = call i32 @siphash24_init(%struct.siphash* %5, i32* %15)
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %41, %0
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ule i64 %19, 64
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @siphash24_compress(i32* %22, i32 %23, %struct.siphash* %4)
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @siphash24_compress(i32* %34, i32 %35, %struct.siphash* %5)
  %37 = call i64 @memcmp(%struct.siphash* %4, %struct.siphash* %5, i32 4)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %17

44:                                               ; preds = %17
  store i32 64, i32* %6, align 4
  br label %45

45:                                               ; preds = %85, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %50 = call i32 @zero(i32* %49)
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %81, %48
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ule i64 %53, 64
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @siphash24_compress(i32* %56, i32 %57, %struct.siphash* %4)
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @siphash24_compress(i32* %59, i32 %60, %struct.siphash* %4)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @siphash24_compress(i32* %62, i32 %63, %struct.siphash* %5)
  %65 = load i32, i32* %7, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @siphash24_compress(i32* %74, i32 %75, %struct.siphash* %5)
  %77 = call i64 @memcmp(%struct.siphash* %4, %struct.siphash* %5, i32 4)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert_se(i32 %79)
  br label %81

81:                                               ; preds = %55
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %51

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %6, align 4
  br label %45

88:                                               ; preds = %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @siphash24_init(%struct.siphash*, i32*) #2

declare dso_local i32 @siphash24_compress(i32*, i32, %struct.siphash*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @memcmp(%struct.siphash*, %struct.siphash*, i32) #2

declare dso_local i32 @zero(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
