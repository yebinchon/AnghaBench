; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_DestroyData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_DestroyData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@FADF_DATADELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unexpected ulCellCount %d, start %d\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@FADF_UNKNOWN = common dso_local global i32 0, align 4
@FADF_DISPATCH = common dso_local global i32 0, align 4
@FADF_RECORD = common dso_local global i32 0, align 4
@FADF_BSTR = common dso_local global i32 0, align 4
@FADF_VARIANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VariantClear of element failed!\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @SAFEARRAY_DestroyData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SAFEARRAY_DestroyData(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %162

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FADF_DATADELETED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %162, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i64 @SAFEARRAY_GetCellCount(%struct.TYPE_5__* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %34, i32* %3, align 4
  br label %164

35:                                               ; preds = %24
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FADF_UNKNOWN, align 4
  %43 = load i32, i32* @FADF_DISPATCH, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64* %53, i64** %7, align 8
  br label %54

54:                                               ; preds = %66, %47
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %6, align 8
  %57 = icmp ne i64 %55, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @IUnknown_Release(i64 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %7, align 8
  br label %54

69:                                               ; preds = %54
  br label %161

70:                                               ; preds = %35
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FADF_RECORD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = call i32 @SafeArrayGetRecordInfo(%struct.TYPE_5__* %78, i32** %8)
  %80 = call i64 @SUCCEEDED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %90, %82
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %6, align 8
  %89 = icmp ne i64 %87, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @IRecordInfo_RecordClear(i32* %91, i64 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %9, align 8
  br label %86

99:                                               ; preds = %86
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @IRecordInfo_Release(i32* %100)
  br label %102

102:                                              ; preds = %99, %77
  br label %160

103:                                              ; preds = %70
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FADF_BSTR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %103
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  br label %117

117:                                              ; preds = %121, %110
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %6, align 8
  %120 = icmp ne i64 %118, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @SysFreeString(i32 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %10, align 8
  br label %117

127:                                              ; preds = %117
  br label %159

128:                                              ; preds = %103
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @FADF_VARIANT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %11, align 8
  br label %142

142:                                              ; preds = %154, %135
  %143 = load i64, i64* %6, align 8
  %144 = add nsw i64 %143, -1
  store i64 %144, i64* %6, align 8
  %145 = icmp ne i64 %143, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @VariantClear(i32* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i64 @FAILED(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %146
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %11, align 8
  br label %142

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %128
  br label %159

159:                                              ; preds = %158, %127
  br label %160

160:                                              ; preds = %159, %102
  br label %161

161:                                              ; preds = %160, %69
  br label %162

162:                                              ; preds = %161, %17, %2
  %163 = load i32, i32* @S_OK, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %30
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @SAFEARRAY_GetCellCount(%struct.TYPE_5__*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @IUnknown_Release(i64) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SafeArrayGetRecordInfo(%struct.TYPE_5__*, i32**) #1

declare dso_local i32 @IRecordInfo_RecordClear(i32*, i64) #1

declare dso_local i32 @IRecordInfo_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
