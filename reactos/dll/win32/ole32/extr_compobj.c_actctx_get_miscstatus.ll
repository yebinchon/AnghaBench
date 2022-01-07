; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_actctx_get_miscstatus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_actctx_get_miscstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.comclassredirect_data = type { i32, i64, i64, i64, i64, i64 }

@ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @actctx_get_miscstatus(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.comclassredirect_data*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 16, i32* %11, align 8
  %12 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @FindActCtxSectionGuid(i32 0, i32* null, i32 %12, i32* %13, %struct.TYPE_3__* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.comclassredirect_data*
  store %struct.comclassredirect_data* %19, %struct.comclassredirect_data** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @dvaspect_to_miscfields(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %23 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %16
  %29 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %30 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 132
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i64*, i64** %7, align 8
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %28
  store i32 132, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %65 [
    i32 132, label %40
    i32 129, label %45
    i32 131, label %50
    i32 128, label %55
    i32 130, label %60
  ]

40:                                               ; preds = %38
  %41 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %42 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %66

45:                                               ; preds = %38
  %46 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %47 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %66

50:                                               ; preds = %38
  %51 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %52 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %66

55:                                               ; preds = %38
  %56 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %57 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %66

60:                                               ; preds = %38
  %61 = load %struct.comclassredirect_data*, %struct.comclassredirect_data** %9, align 8
  %62 = getelementptr inbounds %struct.comclassredirect_data, %struct.comclassredirect_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %66

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65, %60, %55, %50, %45, %40
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %34
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @FindActCtxSectionGuid(i32, i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dvaspect_to_miscfields(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
