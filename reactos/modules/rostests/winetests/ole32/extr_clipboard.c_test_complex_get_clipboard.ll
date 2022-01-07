; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_complex_get_clipboard.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_complex_get_clipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"OleGetClipboard failed with error 0x%08x\0A\00", align 1
@DataObjectImpl_GetData_calls = common dso_local global i32 0, align 4
@CF_METAFILEPICT = common dso_local global i32 0, align 4
@TYMED_MFPICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"IDataObject_GetData failed with error 0x%08x\0A\00", align 1
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@DV_E_TYMED = common dso_local global i64 0, align 8
@CF_ENHMETAFILE = common dso_local global i32 0, align 4
@TYMED_ENHMF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"DataObjectImpl_GetData called 5 times instead of %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_complex_get_clipboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_complex_get_clipboard() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 @OleGetClipboard(i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* @DataObjectImpl_GetData_calls, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CF_METAFILEPICT, align 4
  %15 = load i32, i32* @TYMED_MFPICT, align 4
  %16 = call i32 @InitFormatEtc(i32 %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @IDataObject_GetData(i32* %17, i32* %3, i32* %4)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %1, align 8
  %27 = call i64 @SUCCEEDED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %0
  %30 = call i32 @ReleaseStgMedium(i32* %4)
  br label %31

31:                                               ; preds = %29, %0
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CF_METAFILEPICT, align 4
  %34 = load i32, i32* @TYMED_HGLOBAL, align 4
  %35 = call i32 @InitFormatEtc(i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @IDataObject_GetData(i32* %36, i32* %3, i32* %4)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @DV_E_TYMED, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %1, align 8
  %46 = call i64 @SUCCEEDED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = call i32 @ReleaseStgMedium(i32* %4)
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @CF_ENHMETAFILE, align 4
  %53 = load i32, i32* @TYMED_HGLOBAL, align 4
  %54 = call i32 @InitFormatEtc(i32 %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @IDataObject_GetData(i32* %55, i32* %3, i32* %4)
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @DV_E_TYMED, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %1, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %1, align 8
  %65 = call i64 @SUCCEEDED(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = call i32 @ReleaseStgMedium(i32* %4)
  br label %69

69:                                               ; preds = %67, %50
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @CF_ENHMETAFILE, align 4
  %72 = load i32, i32* @TYMED_ENHMF, align 4
  %73 = call i32 @InitFormatEtc(i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i64 @IDataObject_GetData(i32* %74, i32* %3, i32* %4)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* %1, align 8
  %84 = call i64 @SUCCEEDED(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = call i32 @ReleaseStgMedium(i32* %4)
  br label %88

88:                                               ; preds = %86, %69
  %89 = load i32, i32* @DataObjectImpl_GetData_calls, align 4
  %90 = icmp eq i32 %89, 5
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @DataObjectImpl_GetData_calls, align 4
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @IDataObject_Release(i32* %94)
  ret void
}

declare dso_local i64 @OleGetClipboard(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @InitFormatEtc(i32, i32, i32) #1

declare dso_local i64 @IDataObject_GetData(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @ReleaseStgMedium(i32*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
