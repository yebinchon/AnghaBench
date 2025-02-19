; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_MetadataHandlerEnum_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_MetadataHandlerEnum_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__* }

@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MetadataHandlerEnum_Vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_9__**)* @MetadataHandlerEnum_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MetadataHandlerEnum_Create(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %10 = icmp ne %struct.TYPE_9__** %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %12, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call %struct.TYPE_7__* @HeapAlloc(i32 %15, i32 0, i32 32)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @IWICMetadataWriter_AddRef(i32* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32* @MetadataHandlerEnum_Vtbl, i32** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %19, %11
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IWICMetadataWriter_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
