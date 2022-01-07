; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction001.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SystemFunction001.key = private unnamed_addr constant [8 x i8] c"\FF7P\BC\C2\B2$\00", align 1
@__const.test_SystemFunction001.data = private unnamed_addr constant [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@__const.test_SystemFunction001.expected = private unnamed_addr constant [8 x i8] c"\C37\CD\\\BDD\FC\97", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"response wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction001 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction001() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  %6 = bitcast [8 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction001.key, i32 0, i32 0), i64 8, i1 false)
  %7 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction001.data, i32 0, i32 0), i64 8, i1 false)
  %8 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction001.expected, i32 0, i32 0), i64 8, i1 false)
  %9 = call i64 @pSystemFunction001(i8* null, i8* null, i8* null)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 16)
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %20 = call i64 @pSystemFunction001(i8* %17, i8* %18, i8* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @STATUS_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %28 = call i32 @memcmp(i8* %26, i8* %27, i32 8)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pSystemFunction001(i8*, i8*, i8*) #2

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
