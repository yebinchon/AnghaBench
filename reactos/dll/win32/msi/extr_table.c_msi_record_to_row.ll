; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_record_to_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_record_to_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MSITYPE_KEY = common dso_local global i32 0, align 4
@MSITYPE_STRING = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSI_NULL_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_7__*, i32*)* @msi_record_to_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @msi_record_to_row(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i64* @msi_alloc(i32 %16)
  store i64* %17, i64** %8, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %136, %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %139

25:                                               ; preds = %18
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @MSITYPE_KEY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %136

41:                                               ; preds = %25
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MSITYPE_STRING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MSITYPE_IS_BINARY(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  %66 = call i32* @msi_record_get_string(i32* %63, i64 %65, i32* %9)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = call i64 @msi_string2id(i32 %74, i32* %75, i32 %76, i64* %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i64*, i64** %8, align 8
  %86 = call i32 @msi_free(i64* %85)
  store i64* null, i64** %3, align 8
  br label %141

87:                                               ; preds = %69
  br label %92

88:                                               ; preds = %62
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %87
  br label %135

93:                                               ; preds = %52, %41
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  %97 = call i64 @MSI_RecordGetInteger(i32* %94, i64 %96)
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load i64*, i64** %8, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 0, i64* %110, align 8
  br label %134

111:                                              ; preds = %93
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load i64*, i64** %8, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 32768
  store i64 %126, i64* %124, align 8
  br label %133

127:                                              ; preds = %111
  %128 = load i64*, i64** %8, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 2147483648
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133, %107
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %40
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %6, align 8
  br label %18

139:                                              ; preds = %18
  %140 = load i64*, i64** %8, align 8
  store i64* %140, i64** %3, align 8
  br label %141

141:                                              ; preds = %139, %84
  %142 = load i64*, i64** %3, align 8
  ret i64* %142
}

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @MSITYPE_IS_BINARY(i32) #1

declare dso_local i32* @msi_record_get_string(i32*, i64, i32*) #1

declare dso_local i64 @msi_string2id(i32, i32*, i32, i64*) #1

declare dso_local i32 @msi_free(i64*) #1

declare dso_local i64 @MSI_RecordGetInteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
