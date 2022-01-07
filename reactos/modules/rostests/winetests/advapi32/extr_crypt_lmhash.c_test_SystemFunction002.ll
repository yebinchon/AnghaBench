; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction002.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SystemFunction002.key = private unnamed_addr constant [8 x i8] c"\FF7P\BC\C2\B2$\00", align 1
@__const.test_SystemFunction002.expected = private unnamed_addr constant [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@__const.test_SystemFunction002.data = private unnamed_addr constant [8 x i8] c"\C37\CD\\\BDD\FC\97", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"function failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"response wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction002 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction002() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = bitcast [8 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction002.key, i32 0, i32 0), i64 8, i1 false)
  %7 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction002.expected, i32 0, i32 0), i64 8, i1 false)
  %8 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction002.data, i32 0, i32 0), i64 8, i1 false)
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 8)
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %14 = call i32 @pSystemFunction002(i8* %11, i8* %12, i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @STATUS_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %22 = call i32 @memcmp(i8* %20, i8* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pSystemFunction002(i8*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
