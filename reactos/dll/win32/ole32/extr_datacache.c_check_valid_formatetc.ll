; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_check_valid_formatetc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_check_valid_formatetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@DVASPECT_ICON = common dso_local global i64 0, align 8
@CF_METAFILEPICT = common dso_local global i64 0, align 8
@DV_E_FORMATETC = common dso_local global i32 0, align 4
@TYMED_MFPICT = common dso_local global i64 0, align 8
@CF_BITMAP = common dso_local global i64 0, align 8
@TYMED_GDI = common dso_local global i64 0, align 8
@CF_DIB = common dso_local global i64 0, align 8
@TYMED_HGLOBAL = common dso_local global i64 0, align 8
@CF_ENHMETAFILE = common dso_local global i64 0, align 8
@TYMED_ENHMF = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@CACHE_S_FORMATETC_NOTSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid clipformat/tymed combination: %d/%d\0A\00", align 1
@DV_E_TYMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @check_valid_formatetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid_formatetc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DVASPECT_ICON, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CF_METAFILEPICT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @DV_E_FORMATETC, align 4
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %9, %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CF_METAFILEPICT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TYMED_MFPICT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %70, label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CF_BITMAP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYMED_GDI, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CF_DIB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TYMED_HGLOBAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CF_ENHMETAFILE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TYMED_ENHMF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %52, %40, %28, %17
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %2, align 4
  br label %89

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TYMED_HGLOBAL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @CACHE_S_FORMATETC_NOTSUPPORTED, align 4
  store i32 %79, i32* %2, align 4
  br label %89

80:                                               ; preds = %72
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %86)
  %88 = load i32, i32* @DV_E_TYMED, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %80, %78, %70, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @WARN(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
