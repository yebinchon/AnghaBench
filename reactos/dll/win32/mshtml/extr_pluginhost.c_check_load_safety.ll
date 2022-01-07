; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_check_load_safety.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_check_load_safety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.CONFIRMSAFETY = type { i32, i32, i32 }

@CONFIRMSAFETYACTION_LOADOBJECT = common dso_local global i32 0, align 4
@GUID_CUSTOM_CONFIRMOBJECTSAFETY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@URLPOLICY_ALLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @check_load_safety to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_load_safety(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.CONFIRMSAFETY, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @CONFIRMSAFETYACTION_LOADOBJECT, align 4
  %18 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast %struct.CONFIRMSAFETY* %6 to i32*
  %24 = call i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32* %22, i32* @GUID_CUSTOM_CONFIRMOBJECTSAFETY, i32** %7, i64* %4, i32* %23, i32 12, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %1
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @CoTaskMemFree(i32* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32*, i32*, i32**, i64*, i32*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
