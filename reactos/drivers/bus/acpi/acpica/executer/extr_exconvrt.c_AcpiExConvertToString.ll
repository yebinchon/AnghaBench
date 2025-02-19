; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconvrt.c_AcpiExConvertToString.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconvrt.c_AcpiExConvertToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ExConvertToString = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_MAX_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@AcpiGbl_IntegerByteWidth = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExConvertToString(%struct.TYPE_14__* %0, %struct.TYPE_14__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i32 16, i32* %12, align 4
  store i8 44, i8* %13, align 1
  %14 = load i32, i32* @ExConvertToString, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %14, %struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %188 [
    i32 128, label %21
    i32 129, label %26
    i32 130, label %62
  ]

21:                                               ; preds = %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %23, align 8
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %3, %21
  %27 = load i64, i64* %7, align 8
  switch i64 %27, label %30 [
    i64 133, label %28
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @ACPI_MAX_DECIMAL_DIGITS, align 8
  store i64 %29, i64* %11, align 8
  store i32 10, i32* %12, align 4
  br label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @AcpiGbl_IntegerByteWidth, align 4
  %32 = call i64 @ACPI_MUL_2(i32 %31)
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_14__* @AcpiUtCreateStringObject(i32 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %8, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @AE_NO_MEMORY, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @AcpiGbl_IntegerByteWidth, align 4
  %54 = call i64 @AcpiExConvertToAscii(i32 %50, i32 %51, i8* %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  br label %191

62:                                               ; preds = %3
  %63 = load i64, i64* %7, align 8
  switch i64 %63, label %119 [
    i64 133, label %64
    i64 131, label %107
    i64 132, label %113
  ]

64:                                               ; preds = %62
  store i32 10, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %103, %64
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %65
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 100
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %11, align 8
  br label %102

85:                                               ; preds = %72
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 10
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 3
  store i64 %97, i64* %11, align 8
  br label %101

98:                                               ; preds = %85
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 2
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %65

106:                                              ; preds = %65
  br label %122

107:                                              ; preds = %62
  store i8 32, i8* %13, align 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = mul i64 %111, 5
  store i64 %112, i64* %11, align 8
  br label %122

113:                                              ; preds = %62
  store i8 44, i8* %13, align 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 %117, 5
  store i64 %118, i64* %11, align 8
  br label %122

119:                                              ; preds = %62
  %120 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %121 = call i32 @return_ACPI_STATUS(i32 %120)
  br label %122

122:                                              ; preds = %119, %113, %107, %106
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %11, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %11, align 8
  %130 = trunc i64 %129 to i32
  %131 = call %struct.TYPE_14__* @AcpiUtCreateStringObject(i32 %130)
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %8, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = icmp ne %struct.TYPE_14__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* @AE_NO_MEMORY, align 4
  %136 = call i32 @return_ACPI_STATUS(i32 %135)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %142

142:                                              ; preds = %174, %137
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %143, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %142
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 16
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  store i8 48, i8* %153, align 1
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %9, align 8
  store i8 120, i8* %155, align 1
  br label %157

157:                                              ; preds = %152, %149
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load i32, i32* %12, align 4
  %167 = load i8*, i8** %9, align 8
  %168 = call i64 @AcpiExConvertToAscii(i32 %165, i32 %166, i8* %167, i32 1)
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  store i8* %170, i8** %9, align 8
  %171 = load i8, i8* %13, align 1
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %9, align 8
  store i8 %171, i8* %172, align 1
  br label %174

174:                                              ; preds = %157
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %10, align 8
  br label %142

177:                                              ; preds = %142
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %9, align 8
  br label %186

186:                                              ; preds = %183, %177
  %187 = load i8*, i8** %9, align 8
  store i8 0, i8* %187, align 1
  br label %191

188:                                              ; preds = %3
  %189 = load i32, i32* @AE_TYPE, align 4
  %190 = call i32 @return_ACPI_STATUS(i32 %189)
  br label %191

191:                                              ; preds = %188, %186, %42
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %192, %struct.TYPE_14__** %193, align 8
  %194 = load i32, i32* @AE_OK, align 4
  %195 = call i32 @return_ACPI_STATUS(i32 %194)
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_MUL_2(i32) #1

declare dso_local %struct.TYPE_14__* @AcpiUtCreateStringObject(i32) #1

declare dso_local i64 @AcpiExConvertToAscii(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
