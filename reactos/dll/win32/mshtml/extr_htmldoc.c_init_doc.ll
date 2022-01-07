; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_init_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_init_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_28__, i32, i32, i32*, i32*, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32* }

@HTMLDocumentVtbl = common dso_local global i32 0, align 4
@HTMLDocument3Vtbl = common dso_local global i32 0, align 4
@HTMLDocument4Vtbl = common dso_local global i32 0, align 4
@HTMLDocument5Vtbl = common dso_local global i32 0, align 4
@HTMLDocument6Vtbl = common dso_local global i32 0, align 4
@HTMLDocument7Vtbl = common dso_local global i32 0, align 4
@DocDispatchExVtbl = common dso_local global i32 0, align 4
@SupportErrorInfoVtbl = common dso_local global i32 0, align 4
@ProvideClassInfoVtbl = common dso_local global i32 0, align 4
@HTMLDocument_cpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32*, i32*)* @init_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_doc(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32* @HTMLDocumentVtbl, i32** %9, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 12
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i32* @HTMLDocument3Vtbl, i32** %12, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i32* @HTMLDocument4Vtbl, i32** %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i32* @HTMLDocument5Vtbl, i32** %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i32* @HTMLDocument6Vtbl, i32** %21, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  store i32* @HTMLDocument7Vtbl, i32** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  store i32* @DocDispatchExVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  store i32* @SupportErrorInfoVtbl, i32** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  store i32* @ProvideClassInfoVtbl, i32** %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = call i32 (...) @get_task_target_magic()
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = call i32 @HTMLDocument_Persist_Init(%struct.TYPE_19__* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 @HTMLDocument_OleCmd_Init(%struct.TYPE_19__* %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = call i32 @HTMLDocument_OleObj_Init(%struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 @HTMLDocument_View_Init(%struct.TYPE_19__* %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = call i32 @HTMLDocument_Window_Init(%struct.TYPE_19__* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = call i32 @HTMLDocument_Service_Init(%struct.TYPE_19__* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = call i32 @HTMLDocument_Hlink_Init(%struct.TYPE_19__* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_28__* %60 to i32*
  %62 = load i32, i32* @HTMLDocument_cpc, align 4
  %63 = call i32 @ConnectionPointContainer_Init(i32* %58, i32* %61, i32 %62)
  ret void
}

declare dso_local i32 @get_task_target_magic(...) #1

declare dso_local i32 @HTMLDocument_Persist_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_OleCmd_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_OleObj_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_View_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_Window_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_Service_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @HTMLDocument_Hlink_Init(%struct.TYPE_19__*) #1

declare dso_local i32 @ConnectionPointContainer_Init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
