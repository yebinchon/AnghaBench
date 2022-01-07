; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_chain.c_check_authenticode_policy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_chain.c_check_authenticode_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@CERT_CHAIN_POLICY_AUTHENTICODE = common dso_local global i32 0, align 4
@authenticodePolicyCheck = common dso_local global i32 0, align 4
@oct2007 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CERT_CHAIN_POLICY_ALLOW_UNKNOWN_CA_FLAG = common dso_local global i32 0, align 4
@ignoredUnknownCAPolicyCheck = common dso_local global i32 0, align 4
@CERT_CHAIN_POLICY_IGNORE_NOT_TIME_VALID_FLAG = common dso_local global i32 0, align 4
@ignoredInvalidDateBasePolicyCheck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_authenticode_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_authenticode_policy() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 12, i1 false)
  %4 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false)
  %5 = load i32, i32* @CERT_CHAIN_POLICY_AUTHENTICODE, align 4
  %6 = load i32, i32* @authenticodePolicyCheck, align 4
  %7 = call i32 @CHECK_CHAIN_POLICY_STATUS_ARRAY(i32 %5, i32* null, i32 %6, %struct.TYPE_7__* @oct2007, i32* null)
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = load i32, i32* @CERT_CHAIN_POLICY_ALLOW_UNKNOWN_CA_FLAG, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @CERT_CHAIN_POLICY_AUTHENTICODE, align 4
  %12 = load i32, i32* @ignoredUnknownCAPolicyCheck, align 4
  %13 = call i32 @CHECK_CHAIN_POLICY_STATUS(i32 %11, i32* null, i32 %12, %struct.TYPE_7__* @oct2007, %struct.TYPE_8__* %1)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32 1601, i32* %16, align 4
  %17 = load i32, i32* @CERT_CHAIN_POLICY_AUTHENTICODE, align 4
  %18 = load i32, i32* @ignoredUnknownCAPolicyCheck, align 4
  %19 = call i32 @CHECK_CHAIN_POLICY_STATUS(i32 %17, i32* null, i32 %18, %struct.TYPE_7__* %2, %struct.TYPE_8__* %1)
  %20 = load i32, i32* @CERT_CHAIN_POLICY_IGNORE_NOT_TIME_VALID_FLAG, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @CERT_CHAIN_POLICY_AUTHENTICODE, align 4
  %23 = load i32, i32* @ignoredInvalidDateBasePolicyCheck, align 4
  %24 = call i32 @CHECK_CHAIN_POLICY_STATUS(i32 %22, i32* null, i32 %23, %struct.TYPE_7__* @oct2007, %struct.TYPE_8__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHECK_CHAIN_POLICY_STATUS_ARRAY(i32, i32*, i32, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @CHECK_CHAIN_POLICY_STATUS(i32, i32*, i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
