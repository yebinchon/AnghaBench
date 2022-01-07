; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_MetadataReaderInfo_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_MetadataReaderInfo_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MetadataReaderInfo_Vtbl = common dso_local global i32 0, align 4
@WINCODEC_ERR_COMPONENTNOTFOUND = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_8__**)* @MetadataReaderInfo_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MetadataReaderInfo_Constructor(i32 %0, i32* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %9 = call %struct.TYPE_7__* @heap_alloc_zero(i32 32)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @RegCloseKey(i32 %13)
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32* @MetadataReaderInfo_Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = call i32 @read_metadata_info(%struct.TYPE_7__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %16
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i32 @IWICComponentInfo_Release(%struct.TYPE_9__* %38)
  %40 = load i32, i32* @WINCODEC_ERR_COMPONENTNOTFOUND, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %16
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %44, align 8
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %35, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_7__* @heap_alloc_zero(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @read_metadata_info(%struct.TYPE_7__*) #1

declare dso_local i32 @IWICComponentInfo_Release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
