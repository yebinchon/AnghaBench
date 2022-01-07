; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconcat.c_AcpiExDoConcatenate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconcat.c_AcpiExDoConcatenate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_21__ = type { i8*, i64 }
%struct.TYPE_20__ = type { i32 }

@ExDoConcatenate = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AcpiGbl_IntegerByteWidth = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExDoConcatenate(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %10, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %20 = load i32, i32* @ExDoConcatenate, align 4
  %21 = call i32 @ACPI_FUNCTION_TRACE(i32 %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %31 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %26
  ]

26:                                               ; preds = %4, %4, %4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = call i32 @AcpiExConvertToObjectTypeString(%struct.TYPE_24__* %32, %struct.TYPE_24__** %10)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %220

38:                                               ; preds = %31
  store i32 128, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %49 [
    i32 129, label %44
    i32 128, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %39, %39, %39
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %16, align 4
  br label %57

49:                                               ; preds = %39
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %51 = call i32 @AcpiExConvertToObjectTypeString(%struct.TYPE_24__* %50, %struct.TYPE_24__** %11)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %220

56:                                               ; preds = %49
  store i32 128, i32* %16, align 4
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %15, align 4
  switch i32 %58, label %75 [
    i32 129, label %59
    i32 130, label %63
    i32 128, label %66
  ]

59:                                               ; preds = %57
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %61 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %62 = call i32 @AcpiExConvertToInteger(%struct.TYPE_24__* %60, %struct.TYPE_24__** %12, i32 %61)
  store i32 %62, i32* %17, align 4
  br label %83

63:                                               ; preds = %57
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %65 = call i32 @AcpiExConvertToBuffer(%struct.TYPE_24__* %64, %struct.TYPE_24__** %12)
  store i32 %65, i32* %17, align 4
  br label %83

66:                                               ; preds = %57
  %67 = load i32, i32* %16, align 4
  switch i32 %67, label %72 [
    i32 129, label %68
    i32 128, label %68
    i32 130, label %68
  ]

68:                                               ; preds = %66, %66, %66
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %70 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %71 = call i32 @AcpiExConvertToString(%struct.TYPE_24__* %69, %struct.TYPE_24__** %12, i32 %70)
  store i32 %71, i32* %17, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %83

75:                                               ; preds = %57
  %76 = load i32, i32* @AE_INFO, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ACPI_ERROR(i32 %80)
  %82 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %75, %74, %63, %59
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @ACPI_FAILURE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %220

88:                                               ; preds = %83
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %91 = icmp ne %struct.TYPE_24__* %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %95 = icmp ne %struct.TYPE_24__* %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %98 = call i32 @AcpiUtRemoveReference(%struct.TYPE_24__* %97)
  br label %99

99:                                               ; preds = %96, %92, %88
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %100, %struct.TYPE_24__** %11, align 8
  %101 = load i32, i32* %15, align 4
  switch i32 %101, label %209 [
    i32 129, label %102
    i32 128, label %131
    i32 130, label %163
  ]

102:                                              ; preds = %99
  %103 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  %104 = call i32 @ACPI_MUL_2(i64 %103)
  %105 = sext i32 %104 to i64
  %106 = call %struct.TYPE_24__* @AcpiUtCreateBufferObject(i64 %105)
  store %struct.TYPE_24__* %106, %struct.TYPE_24__** %13, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %108 = icmp ne %struct.TYPE_24__* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %110, i32* %17, align 4
  br label %220

111:                                              ; preds = %102
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast i32* %115 to i8*
  store i8* %116, i8** %14, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  %122 = call i32 @memcpy(i8* %117, i32* %120, i64 %121)
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  %130 = call i32 @memcpy(i8* %125, i32* %128, i64 %129)
  br label %217

131:                                              ; preds = %99
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %135, %139
  %141 = call %struct.TYPE_24__* @AcpiUtCreateStringObject(i64 %140)
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %13, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %143 = icmp ne %struct.TYPE_24__* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %131
  %145 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %145, i32* %17, align 4
  br label %220

146:                                              ; preds = %131
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcpy(i8* %151, i8* %155)
  %157 = load i8*, i8** %14, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcat(i8* %157, i8* %161)
  br label %217

163:                                              ; preds = %99
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %167, %171
  %173 = call %struct.TYPE_24__* @AcpiUtCreateBufferObject(i64 %172)
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %13, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %175 = icmp ne %struct.TYPE_24__* %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %163
  %177 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %177, i32* %17, align 4
  br label %220

178:                                              ; preds = %163
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  store i8* %183, i8** %14, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @memcpy(i8* %184, i32* %188, i64 %192)
  %194 = load i8*, i8** %14, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @memcpy(i8* %199, i32* %203, i64 %207)
  br label %217

209:                                              ; preds = %99
  %210 = load i32, i32* @AE_INFO, align 4
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ACPI_ERROR(i32 %214)
  %216 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %216, i32* %17, align 4
  br label %220

217:                                              ; preds = %178, %146, %111
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %219 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* %218, %struct.TYPE_24__** %219, align 8
  br label %220

220:                                              ; preds = %217, %209, %176, %144, %109, %87, %55, %37
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %223 = icmp ne %struct.TYPE_24__* %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %226 = call i32 @AcpiUtRemoveReference(%struct.TYPE_24__* %225)
  br label %227

227:                                              ; preds = %224, %220
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %230 = icmp ne %struct.TYPE_24__* %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %233 = call i32 @AcpiUtRemoveReference(%struct.TYPE_24__* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @return_ACPI_STATUS(i32 %235)
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiExConvertToObjectTypeString(%struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExConvertToInteger(%struct.TYPE_24__*, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @AcpiExConvertToBuffer(%struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i32 @AcpiExConvertToString(%struct.TYPE_24__*, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @AcpiUtCreateBufferObject(i64) #1

declare dso_local i32 @ACPI_MUL_2(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local %struct.TYPE_24__* @AcpiUtCreateStringObject(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
