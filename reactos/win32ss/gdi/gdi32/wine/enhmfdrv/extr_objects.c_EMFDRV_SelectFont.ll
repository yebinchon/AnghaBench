; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SelectFont.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SelectFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, i64, i32*)* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@OEM_FIXED_FONT = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@EMR_SELECTOBJECT = common dso_local global i32 0, align 4
@GGO_BITMAP = common dso_local global i32 0, align 4
@pSelectFont = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EMFDRV_SelectFont(%struct.TYPE_17__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = call %struct.TYPE_19__* @get_emf_physdev(%struct.TYPE_17__* %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %73

19:                                               ; preds = %3
  %20 = load i32, i32* @OEM_FIXED_FONT, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %38, %19
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DEFAULT_PALETTE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @GetStockObject(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, -2147483648
  store i32 %36, i32* %10, align 4
  br label %59

37:                                               ; preds = %29, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @EMFDRV_FindObject(%struct.TYPE_17__* %42, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @EMFDRV_CreateFontIndirect(%struct.TYPE_17__* %48, i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i64 0, i64* %4, align 8
  br label %89

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GDI_hdc_using_object(i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %46, %34
  %60 = load i32, i32* @EMR_SELECTOBJECT, align 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 12, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %69 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_17__* %67, %struct.TYPE_15__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  store i64 0, i64* %4, align 8
  br label %89

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %18
  %74 = load i32, i32* @GGO_BITMAP, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = load i32, i32* @pSelectFont, align 4
  %78 = call %struct.TYPE_17__* @GET_NEXT_PHYSDEV(%struct.TYPE_17__* %76, i32 %77)
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %5, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_17__*, i64, i32*)*, i32 (%struct.TYPE_17__*, i64, i32*)** %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 %83(%struct.TYPE_17__* %84, i64 %85, i32* %86)
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %73, %71, %52
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local %struct.TYPE_19__* @get_emf_physdev(%struct.TYPE_17__*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @EMFDRV_FindObject(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @EMFDRV_CreateFontIndirect(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @GDI_hdc_using_object(i64, i32) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @GET_NEXT_PHYSDEV(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
