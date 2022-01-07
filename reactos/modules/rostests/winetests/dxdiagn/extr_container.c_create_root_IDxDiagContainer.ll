; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_create_root_IDxDiagContainer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_create_root_IDxDiagContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@CLSID_DxDiagProvider = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDxDiagProvider = common dso_local global i32 0, align 4
@pddp = common dso_local global i32 0, align 4
@DXDIAG_DX9_SDK_VERSION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pddc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_root_IDxDiagContainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_root_IDxDiagContainer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = call i32 @CoCreateInstance(i32* @CLSID_DxDiagProvider, i32* null, i32 %4, i32* @IID_IDxDiagProvider, i32* @pddp)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @SUCCEEDED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 24, i32* %10, align 8
  %11 = load i32, i32* @DXDIAG_DX9_SDK_VERSION, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @pddp, align 4
  %17 = call i32 @IDxDiagProvider_Initialize(i32 %16, %struct.TYPE_3__* %3)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @SUCCEEDED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %9
  %22 = load i32, i32* @pddp, align 4
  %23 = call i32 @IDxDiagProvider_GetRootContainer(i32 %22, i32* @pddc)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @SUCCEEDED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %1, align 4
  br label %35

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* @pddp, align 4
  %32 = call i32 @IDxDiagProvider_Release(i32 %31)
  br label %33

33:                                               ; preds = %30, %0
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDxDiagProvider_Initialize(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @IDxDiagProvider_GetRootContainer(i32, i32*) #1

declare dso_local i32 @IDxDiagProvider_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
