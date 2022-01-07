; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_propertypage.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_propertypage.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"OnInitDialog()\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pParamArray is NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DWLP_USER = common dso_local global i32 0, align 4
@IDC_PROPERTY_NAME = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitDialog(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %108

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @DWLP_USER, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = ptrtoint %struct.TYPE_5__* %27 to i32
  %29 = call i32 @SetWindowLongPtr(i64 %25, i32 %26, i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @IDC_PROPERTY_NAME, align 4
  %32 = call i64 @GetDlgItem(i64 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %85, %35
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %10, align 8
  br label %67

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %10, align 8
  br label %67

67:                                               ; preds = %59, %51
  %68 = load i64, i64* %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @ListBox_AddString(i64 %68, i32* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @LB_ERR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = ptrtoint %struct.TYPE_4__* %81 to i64
  %83 = call i32 @ListBox_SetItemData(i64 %75, i64 %76, i64 %82)
  br label %84

84:                                               ; preds = %74, %67
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %36

88:                                               ; preds = %36
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @ListBox_SetCurSel(i64 %94, i32 0)
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @ListBox_GetItemData(i64 %96, i32 0)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @DisplayParameter(i64 %100, i64 %103)
  br label %105

105:                                              ; preds = %93, %88
  br label %106

106:                                              ; preds = %105, %24
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %21
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetWindowLongPtr(i64, i32, i32) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i64 @ListBox_AddString(i64, i32*) #1

declare dso_local i32 @ListBox_SetItemData(i64, i64, i64) #1

declare dso_local i32 @ListBox_SetCurSel(i64, i32) #1

declare dso_local i64 @ListBox_GetItemData(i64, i32) #1

declare dso_local i32 @DisplayParameter(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
