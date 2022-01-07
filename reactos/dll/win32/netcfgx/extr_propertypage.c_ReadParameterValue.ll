; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_propertypage.c_ReadParameterValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_propertypage.c_ReadParameterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENUM_TYPE = common dso_local global i64 0, align 8
@IDC_PROPERTY_VALUE_LIST = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@IDC_PROPERTY_VALUE_EDIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @ReadParameterValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadParameterValue(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ENUM_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %83

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IDC_PROPERTY_VALUE_LIST, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  %17 = call i64 @ComboBox_GetCurSel(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CB_ERR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wcslen(i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @HeapFree(i32 %47, i32 0, i32* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  %56 = mul i64 %55, 4
  %57 = call i8* @HeapAlloc(i32 %53, i32 0, i64 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %27
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wcscpy(i32* %69, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %66, %61
  br label %82

82:                                               ; preds = %81, %21, %13
  br label %132

83:                                               ; preds = %2
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @IDC_PROPERTY_VALUE_EDIT, align 4
  %86 = call i32 @GetDlgItem(i32 %84, i32 %85)
  %87 = call i64 @Edit_GetTextLength(i32 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %83
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @HeapFree(i32 %99, i32 0, i32* %102)
  br label %104

104:                                              ; preds = %98, %93
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, 1
  %108 = mul i64 %107, 4
  %109 = call i8* @HeapAlloc(i32 %105, i32 0, i64 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  br label %113

113:                                              ; preds = %104, %83
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @IDC_PROPERTY_VALUE_EDIT, align 4
  %121 = call i32 @GetDlgItem(i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, 1
  %127 = call i32 @Edit_GetText(i32 %121, i32* %124, i64 %126)
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %118, %113
  br label %132

132:                                              ; preds = %131, %82
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @wcslen(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @wcscpy(i32*, i32) #1

declare dso_local i64 @Edit_GetTextLength(i32) #1

declare dso_local i32 @Edit_GetText(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
