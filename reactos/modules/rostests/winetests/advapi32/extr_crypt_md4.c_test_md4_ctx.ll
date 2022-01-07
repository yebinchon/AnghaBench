; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_md4_ctx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_md4_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@test_md4_ctx.message = internal global [104 x i8] c"In our Life there's IfIn our beliefs there's LieIn our business there is SinIn our bodies, there is Die\00", align 16
@__const.test_md4_ctx.ctx_initialized = private unnamed_addr constant %struct.TYPE_12__ { i32 1732584193, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer }, align 4
@__const.test_md4_ctx.ctx_update1 = private unnamed_addr constant %struct.TYPE_12__ { i32 1582903031, %struct.TYPE_11__ { i32 824, i32 0 }, %struct.TYPE_10__ zeroinitializer }, align 4
@__const.test_md4_ctx.ctx_update2 = private unnamed_addr constant %struct.TYPE_12__ { i32 98368869, %struct.TYPE_11__ { i32 1648, i32 0 }, %struct.TYPE_10__ zeroinitializer }, align 4
@__const.test_md4_ctx.expect = private unnamed_addr constant [16 x i8] c"_\D3\9B)GSG\AF\A5\BA\0C\05\FF\C0\C7\DA", align 16
@.str = private unnamed_addr constant [24 x i8] c"invalid initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"update doesn't work correctly\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"context has changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"incorrect result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_md4_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md4_ctx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca [16 x i8], align 16
  store i32 103, i32* %1, align 4
  %7 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_12__* @__const.test_md4_ctx.ctx_initialized to i8*), i64 28, i1 false)
  %8 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_12__* @__const.test_md4_ctx.ctx_update1 to i8*), i64 28, i1 false)
  %9 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_12__* @__const.test_md4_ctx.ctx_update2 to i8*), i64 28, i1 false)
  %10 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_md4_ctx.expect, i32 0, i32 0), i64 16, i1 false)
  %11 = call i32 @memset(%struct.TYPE_12__* %2, i32 0, i32 28)
  %12 = call i32 @pMD4Init(%struct.TYPE_12__* %2)
  %13 = call i32 @ctxcmp(%struct.TYPE_12__* %2, %struct.TYPE_12__* %3)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @pMD4Update(%struct.TYPE_12__* %2, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @test_md4_ctx.message, i64 0, i64 0), i32 %18)
  %20 = call i32 @ctxcmp(%struct.TYPE_12__* %2, %struct.TYPE_12__* %4)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @pMD4Update(%struct.TYPE_12__* %2, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @test_md4_ctx.message, i64 0, i64 0), i32 %25)
  %27 = call i32 @ctxcmp(%struct.TYPE_12__* %2, %struct.TYPE_12__* %5)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @pMD4Final(%struct.TYPE_12__* %2)
  %33 = call i32 @ctxcmp(%struct.TYPE_12__* %2, %struct.TYPE_12__* %3)
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %38 = call i32 @memcmp(i32 %36, i8* %37, i32 16)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @pMD4Init(%struct.TYPE_12__*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @ctxcmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32 @pMD4Update(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @pMD4Final(%struct.TYPE_12__*) #2

declare dso_local i32 @memcmp(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
