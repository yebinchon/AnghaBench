; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_negotiate.c_SECUR32_initNegotiateSP.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_negotiate.c_SECUR32_initNegotiateSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@negoTableA = common dso_local global i32 0, align 4
@negoTableW = common dso_local global i32 0, align 4
@CAPS = common dso_local global i32 0, align 4
@RPC_C_AUTHN_GSS_NEGOTIATE = common dso_local global i32 0, align 4
@NEGO_MAX_TOKEN = common dso_local global i32 0, align 4
@nego_name_W = common dso_local global i32 0, align 4
@negotiate_comment_W = common dso_local global i32 0, align 4
@nego_name_A = common dso_local global i32 0, align 4
@negotiate_comment_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SECUR32_initNegotiateSP() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = call i32* @SECUR32_addProvider(i32* @negoTableA, i32* @negoTableW, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %6 = load i32, i32* @CAPS, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %9 = load i32, i32* @RPC_C_AUTHN_GSS_NEGOTIATE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %11 = load i32, i32* @NEGO_MAX_TOKEN, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %13 = load i32, i32* @nego_name_W, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %15 = load i32, i32* @negotiate_comment_W, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %17 = load i32, i32* @CAPS, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %20 = load i32, i32* @RPC_C_AUTHN_GSS_NEGOTIATE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %22 = load i32, i32* @NEGO_MAX_TOKEN, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %24 = load i32, i32* @nego_name_A, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %26 = load i32, i32* @negotiate_comment_A, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @SECUR32_addPackages(i32* %27, i64 1, %struct.TYPE_6__* %3, %struct.TYPE_5__* %2)
  ret void
}

declare dso_local i32* @SECUR32_addProvider(i32*, i32*, i32*) #1

declare dso_local i32 @SECUR32_addPackages(i32*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
