; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_GDI_GetObjPtr.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_GDI_GetObjPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDILoObjType_LO_ALTDC_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METAFILE_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METAFILE16_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METADC16_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GDI_GetObjPtr(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @ConvertObjectType(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @GDI_HANDLE_GET_TYPE(i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %42

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GDILoObjType_LO_ALTDC_TYPE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @GdiGetLDC(i32 %22)
  store i32* %23, i32** %3, align 8
  br label %42

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @GDILoObjType_LO_METAFILE_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @GDILoObjType_LO_METAFILE16_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @GDILoObjType_LO_METADC16_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24
  %37 = load i32, i32* %4, align 4
  %38 = call i32* @GdiGetClientObjLink(i32 %37)
  store i32* %38, i32** %3, align 8
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @ASSERT(i32 %40)
  store i32* null, i32** %3, align 8
  br label %42

42:                                               ; preds = %39, %36, %21, %16
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i64 @ConvertObjectType(i32) #1

declare dso_local i64 @GDI_HANDLE_GET_TYPE(i32) #1

declare dso_local i32* @GdiGetLDC(i32) #1

declare dso_local i32* @GdiGetClientObjLink(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
