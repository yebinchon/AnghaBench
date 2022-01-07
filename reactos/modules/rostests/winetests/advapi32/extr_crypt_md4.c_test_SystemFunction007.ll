; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_SystemFunction007.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_SystemFunction007.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32 }

@__const.test_SystemFunction007.expected = private unnamed_addr constant [16 x i32] [i32 36, i32 10, i32 240, i32 157, i32 132, i32 28, i32 218, i32 207, i32 86, i32 235, i32 107, i32 150, i32 85, i32 236, i32 207, i32 10], align 16
@__const.test_SystemFunction007.szFoo = private unnamed_addr constant [4 x float] [float 1.020000e+02, float 1.110000e+02, float 1.110000e+02, float 0.000000e+00], align 16
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"response wrong\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction007 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction007() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca [4 x float], align 16
  %6 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([16 x i32]* @__const.test_SystemFunction007.expected to i8*), i64 64, i1 false)
  %7 = bitcast [4 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x float]* @__const.test_SystemFunction007.szFoo to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store float* %8, float** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 16, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 64)
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %17 = call i32 @pSystemFunction007(%struct.TYPE_3__* %2, i32* %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %25 = call i32 @memcmp(i32* %23, i32* %24, i32 64)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @pSystemFunction007(%struct.TYPE_3__*, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
