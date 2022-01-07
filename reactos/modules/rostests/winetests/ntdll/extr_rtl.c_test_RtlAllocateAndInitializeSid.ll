; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlAllocateAndInitializeSid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlAllocateAndInitializeSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@__const.test_RtlAllocateAndInitializeSid.sia = private unnamed_addr constant %struct.TYPE_5__ { %struct.TYPE_4__ { i32 1, i32 2, i32 3, i32 4, i32 5, i32 6 } }, align 4
@.str = private unnamed_addr constant [40 x i8] c"RtlAllocateAndInitializeSid error %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RtlFreeSid error %08x\0A\00", align 1
@STATUS_INVALID_SID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"wrong error %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlAllocateAndInitializeSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlAllocateAndInitializeSid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @__const.test_RtlAllocateAndInitializeSid.sia to i8*), i64 24, i1 false)
  %5 = call i64 @pRtlAllocateAndInitializeSid(%struct.TYPE_5__* %2, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32* %3)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pRtlFreeSid(i32 %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = call i64 @pRtlAllocateAndInitializeSid(%struct.TYPE_5__* %2, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32* %3)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @STATUS_INVALID_SID, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pRtlAllocateAndInitializeSid(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @pRtlFreeSid(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
