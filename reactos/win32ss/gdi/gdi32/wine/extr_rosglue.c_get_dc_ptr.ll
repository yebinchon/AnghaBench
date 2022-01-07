; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_get_dc_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_get_dc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDILoObjType_LO_ALTDC_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METADC16_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_dc_ptr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GDI_HANDLE_GET_TYPE(i32 %4)
  %6 = load i64, i64* @GDILoObjType_LO_ALTDC_TYPE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GdiGetLDC(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @GDI_HANDLE_GET_TYPE(i32 %13)
  %15 = load i64, i64* @GDILoObjType_LO_METADC16_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @GdiGetClientObjLink(i32 %18)
  store i32* %19, i32** %2, align 8
  br label %21

20:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %21

21:                                               ; preds = %20, %17, %8
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

declare dso_local i64 @GDI_HANDLE_GET_TYPE(i32) #1

declare dso_local i64 @GdiGetLDC(i32) #1

declare dso_local i32* @GdiGetClientObjLink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
