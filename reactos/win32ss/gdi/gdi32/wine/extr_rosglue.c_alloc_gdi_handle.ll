; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_alloc_gdi_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_alloc_gdi_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdi_obj_funcs = type { i32 }

@GDILoObjType_LO_METAFILE_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METAFILE16_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METADC16_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @alloc_gdi_handle(i32 %0, i32 %1, %struct.gdi_obj_funcs* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdi_obj_funcs*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.gdi_obj_funcs* %2, %struct.gdi_obj_funcs** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @ConvertObjectType(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @GDILoObjType_LO_METAFILE_TYPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @GDILoObjType_LO_METAFILE16_TYPE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @GDILoObjType_LO_METADC16_TYPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @ASSERT(i32 %23)
  store i32* null, i32** %4, align 8
  br label %29

25:                                               ; preds = %18, %14, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32* @GdiCreateClientObj(i32 %26, i64 %27)
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32*, i32** %4, align 8
  ret i32* %30
}

declare dso_local i64 @ConvertObjectType(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @GdiCreateClientObj(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
