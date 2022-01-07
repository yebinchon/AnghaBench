; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadataquery.c_get_next_reader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadataquery.c_get_next_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i64 }

@VT_UI2 = common dso_local global i64 0, align 8
@VT_CLSID = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@VT_UNKNOWN = common dso_local global i64 0, align 8
@IID_IWICMetadataReader = common dso_local global i32 0, align 4
@WINCODEC_ERR_UNEXPECTEDMETADATATYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i32**)* @get_next_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_next_reader(i32* %0, i64 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i32**, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = call i32 @PropVariantInit(%struct.TYPE_9__* %11)
  %16 = call i32 @PropVariantInit(%struct.TYPE_9__* %12)
  %17 = call i32 @PropVariantInit(%struct.TYPE_9__* %13)
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i64, i64* @VT_UI2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i64, i64* @VT_CLSID, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @IWICMetadataReader_GetValue(i32* %32, %struct.TYPE_9__* %11, %struct.TYPE_9__* %12, %struct.TYPE_9__* %13)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %5, align 8
  br label %56

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VT_UNKNOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32**, i32*** %9, align 8
  %49 = bitcast i32** %48 to i8**
  %50 = call i64 @IUnknown_QueryInterface(i32 %47, i32* @IID_IWICMetadataReader, i8** %49)
  store i64 %50, i64* %10, align 8
  br label %53

51:                                               ; preds = %39
  %52 = load i64, i64* @WINCODEC_ERR_UNEXPECTEDMETADATATYPE, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = call i32 @PropVariantClear(%struct.TYPE_9__* %13)
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @PropVariantInit(%struct.TYPE_9__*) #1

declare dso_local i64 @IWICMetadataReader_GetValue(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
