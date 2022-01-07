; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_free_dc_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_free_dc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*)* }

@GDILoObjType_LO_ALTDC_TYPE = common dso_local global i64 0, align 8
@GDILoObjType_LO_METADC16_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_dc_ptr(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i32 %10(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @GDI_HANDLE_GET_TYPE(i32 %17)
  %19 = load i64, i64* @GDILoObjType_LO_ALTDC_TYPE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @GdiGetLDC(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = icmp eq %struct.TYPE_7__* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GdiSetLDC(i32 %33, i32* null)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @NtGdiDeleteObjectApp(i32 %37)
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @GDI_HANDLE_GET_TYPE(i32 %42)
  %44 = load i64, i64* @GDILoObjType_LO_METADC16_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @GdiDeleteClientObj(i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %21
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, %struct.TYPE_7__* %54)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @GDI_HANDLE_GET_TYPE(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @GdiGetLDC(i32) #1

declare dso_local i32 @GdiSetLDC(i32, i32*) #1

declare dso_local i32 @NtGdiDeleteObjectApp(i32) #1

declare dso_local i32 @GdiDeleteClientObj(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
