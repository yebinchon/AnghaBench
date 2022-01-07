; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction006.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SystemFunction006.passwd = private unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 115, i8 101, i8 99, i8 114, i8 101, i8 116, [8 x i8] zeroinitializer }>, align 1
@__const.test_SystemFunction006.expect = private unnamed_addr constant [16 x i8] c"\85\F5(\9F\09\DC\A7\EB\AA\D3\B45\B5\14\04\EE", align 16
@.str = private unnamed_addr constant [74 x i8] c"lmhash: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction006 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction006() #0 {
  %1 = alloca [17 x i8], align 16
  %2 = alloca [14 x i8], align 1
  %3 = alloca [16 x i8], align 16
  %4 = bitcast [14 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds (<{ i8, i8, i8, i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [8 x i8] }>* @__const.test_SystemFunction006.passwd, i32 0, i32 0), i64 14, i1 false)
  %5 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_SystemFunction006.expect, i32 0, i32 0), i64 16, i1 false)
  %6 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %8 = call i32 @pSystemFunction006(i8* %6, i8* %7)
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %11 = call i32 @memcmp(i8* %9, i8* %10, i32 16)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %16 = load i8, i8* %15, align 16
  %17 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 2
  %20 = load i8, i8* %19, align 2
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 4
  %24 = load i8, i8* %23, align 4
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 5
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 6
  %28 = load i8, i8* %27, align 2
  %29 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 7
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 8
  %32 = load i8, i8* %31, align 8
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 9
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 10
  %36 = load i8, i8* %35, align 2
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 11
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 12
  %40 = load i8, i8* %39, align 4
  %41 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 13
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 14
  %44 = load i8, i8* %43, align 2
  %45 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 15
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8 signext %16, i8 signext %18, i8 signext %20, i8 signext %22, i8 signext %24, i8 signext %26, i8 signext %28, i8 signext %30, i8 signext %32, i8 signext %34, i8 signext %36, i8 signext %38, i8 signext %40, i8 signext %42, i8 signext %44, i8 signext %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pSystemFunction006(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
