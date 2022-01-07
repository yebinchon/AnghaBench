; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction008.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction008.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SystemFunction008.hash = private unnamed_addr constant <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\FF7P\BC\C2\B2$\12\C2&[#sN\0D\AC", [48 x i8] zeroinitializer }>, align 16
@__const.test_SystemFunction008.challenge = private unnamed_addr constant <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\01#Eg\89\AB\CD\EF", [56 x i8] zeroinitializer }>, align 16
@__const.test_SystemFunction008.expected = private unnamed_addr constant [24 x i8] c"\C37\CD\\\BDD\FC\97\82\A6g\AFmB|m\E6| \C2\D3\E7|V", align 16
@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"response wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction008 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction008() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca [24 x i8], align 16
  %4 = alloca [24 x i8], align 16
  %5 = alloca i64, align 8
  %6 = bitcast [64 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds (<{ [16 x i8], [48 x i8] }>, <{ [16 x i8], [48 x i8] }>* @__const.test_SystemFunction008.hash, i32 0, i32 0, i32 0), i64 64, i1 false)
  %7 = bitcast [64 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds (<{ [8 x i8], [56 x i8] }>, <{ [8 x i8], [56 x i8] }>* @__const.test_SystemFunction008.challenge, i32 0, i32 0, i32 0), i64 64, i1 false)
  %8 = bitcast [24 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_SystemFunction008.expected, i32 0, i32 0), i64 24, i1 false)
  %9 = call i64 @pSystemFunction008(i8* null, i8* null, i8* null)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %16 = call i64 @pSystemFunction008(i8* %15, i8* null, i8* null)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %24 = call i64 @pSystemFunction008(i8* %22, i8* %23, i8* null)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %31 = call i64 @pSystemFunction008(i8* null, i8* null, i8* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i32 0, i32 24)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %42 = call i64 @pSystemFunction008(i8* %39, i8* %40, i8* %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @STATUS_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %48 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %49 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0
  %50 = call i32 @memcmp(i8* %48, i8* %49, i32 24)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pSystemFunction008(i8*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
