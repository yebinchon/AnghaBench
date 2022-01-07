; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_RegistryPropertyBag_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_RegistryPropertyBag_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32* }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"(hInitPropertyBagKey=%p, riid=%s, ppvObject=%p)\0A\00", align 1
@RegistryPropertyBag_IPropertyBagVtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @RegistryPropertyBag_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegistryPropertyBag_Constructor(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @E_FAIL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @debugstr_guid(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32* %13)
  %15 = call %struct.TYPE_6__* @heap_alloc(i32 24)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32* @RegistryPropertyBag_IPropertyBagVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @IPropertyBag_AddRef(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IPropertyBag_QueryInterface(%struct.TYPE_7__* %31, i32 %32, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @IPropertyBag_Release(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %18, %3
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

declare dso_local i32 @IPropertyBag_AddRef(%struct.TYPE_7__*) #1

declare dso_local i32 @IPropertyBag_QueryInterface(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @IPropertyBag_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
