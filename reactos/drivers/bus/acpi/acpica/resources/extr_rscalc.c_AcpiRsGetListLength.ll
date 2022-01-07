; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/resources/extr_rscalc.c_AcpiRsGetListLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/resources/extr_rscalc.c_AcpiRsGetListLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@RsGetListLength = common dso_local global i32 0, align 4
@ACPI_RS_SIZE_MIN = common dso_local global i32 0, align 4
@AcpiGbl_ResourceAmlSizes = common dso_local global i64* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@AcpiGbl_ResourceAmlSerialBusSizes = common dso_local global i64* null, align 8
@AcpiGbl_ResourceStructSerialBusSizes = common dso_local global i32* null, align 8
@AcpiGbl_ResourceStructSizes = common dso_local global i32* null, align 8
@ACPI_DB_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Type %.2X, AmlLength %.2X InternalLength %.2X\0A\00", align 1
@AE_AML_NO_RESOURCE_END_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiRsGetListLength(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @RsGetListLength, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load i32, i32* @ACPI_RS_SIZE_MIN, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64* %25, i64** %9, align 8
  br label %26

26:                                               ; preds = %318, %3
  %27 = load i64*, i64** %5, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ult i64* %27, %28
  br i1 %29, label %30, label %338

30:                                               ; preds = %26
  %31 = load i64*, i64** %5, align 8
  %32 = call i32 @AcpiUtValidateResource(i32* null, i64* %31, i64* %15)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i64*, i64** %5, align 8
  %41 = bitcast i64* %40 to i8*
  %42 = bitcast i8* %41 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %17, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = call i32 @AcpiUtGetResourceLength(i64* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i64*, i64** @AcpiGbl_ResourceAmlSizes, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %16, align 8
  store i32 0, i32* %14, align 4
  %49 = load i64*, i64** %5, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = call i32 @AcpiUtGetResourceHeaderLength(i64* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64* %53, i64** %10, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = call i32 @AcpiUtGetResourceType(i64* %54)
  switch i32 %55, label %296 [
    i32 136, label %56
    i32 140, label %62
    i32 128, label %66
    i32 129, label %66
    i32 139, label %74
    i32 142, label %77
    i32 143, label %77
    i32 141, label %77
    i32 138, label %81
    i32 137, label %95
    i32 134, label %137
    i32 130, label %179
    i32 135, label %197
    i32 133, label %239
    i32 131, label %258
    i32 132, label %277
  ]

56:                                               ; preds = %39
  %57 = load i64*, i64** %10, align 8
  %58 = call i32 @ACPI_MOVE_16_TO_16(i32* %12, i64* %57)
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @AcpiRsCountSetBits(i64 %60)
  store i32 %61, i32* %14, align 4
  br label %297

62:                                               ; preds = %39
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @AcpiRsCountSetBits(i64 %64)
  store i32 %65, i32* %14, align 4
  br label %297

66:                                               ; preds = %39, %39
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %297

74:                                               ; preds = %39
  %75 = load i32, i32* @AE_OK, align 4
  %76 = call i32 @return_ACPI_STATUS(i32 %75)
  br label %77

77:                                               ; preds = %39, %39, %39, %74
  %78 = load i32, i32* %13, align 4
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @AcpiRsStreamOptionLength(i32 %78, i64 %79)
  store i32 %80, i32* %14, align 4
  br label %297

81:                                               ; preds = %39
  %82 = load i64*, i64** %10, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 1
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i64, i64* %16, align 8
  %92 = call i32 @AcpiRsStreamOptionLength(i32 %90, i64 %91)
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %297

95:                                               ; preds = %39
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %105, %109
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %110, %114
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %14, align 4
  br label %136

120:                                              ; preds = %95
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %126, %130
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %120, %101
  br label %297

137:                                              ; preds = %39
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %137
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %147, %151
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %152, %156
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %14, align 4
  br label %178

162:                                              ; preds = %137
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = add i64 %167, 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub i64 %168, %172
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %162, %143
  br label %297

179:                                              ; preds = %39
  %180 = load i64*, i64** @AcpiGbl_ResourceAmlSerialBusSizes, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %180, i64 %184
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %16, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %16, align 8
  %192 = sub i64 %190, %191
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %14, align 4
  br label %297

197:                                              ; preds = %39
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %222

203:                                              ; preds = %197
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %207, %211
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %212, %216
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %14, align 4
  br label %238

222:                                              ; preds = %197
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = add i64 %227, 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = sub i64 %228, %232
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = add i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %222, %203
  br label %297

239:                                              ; preds = %39
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %243, %247
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %248, %252
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %14, align 4
  br label %297

258:                                              ; preds = %39
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %262, %266
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %267, %271
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %274, %272
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %14, align 4
  br label %297

277:                                              ; preds = %39
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %281, %285
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %286, %290
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %14, align 4
  br label %297

296:                                              ; preds = %39
  br label %297

297:                                              ; preds = %296, %277, %258, %239, %238, %179, %178, %136, %81, %77, %73, %62, %56
  %298 = load i64*, i64** %5, align 8
  %299 = call i32 @AcpiUtGetResourceType(i64* %298)
  %300 = icmp eq i32 %299, 130
  br i1 %300, label %301, label %311

301:                                              ; preds = %297
  %302 = load i32*, i32** @AcpiGbl_ResourceStructSerialBusSizes, align 8
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %308, %309
  store i32 %310, i32* %11, align 4
  br label %318

311:                                              ; preds = %297
  %312 = load i32*, i32** @AcpiGbl_ResourceStructSizes, align 8
  %313 = load i64, i64* %15, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %315, %316
  store i32 %317, i32* %11, align 4
  br label %318

318:                                              ; preds = %311, %301
  %319 = load i32, i32* %11, align 4
  %320 = call i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %319)
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %11, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, %322
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* @ACPI_DB_RESOURCES, align 4
  %327 = load i64*, i64** %5, align 8
  %328 = call i32 @AcpiUtGetResourceType(i64* %327)
  %329 = load i64*, i64** %5, align 8
  %330 = call i32 @AcpiUtGetDescriptorLength(i64* %329)
  %331 = load i32, i32* %11, align 4
  %332 = call i32 @ACPI_DEBUG_PRINT(i32 %331)
  %333 = load i64*, i64** %5, align 8
  %334 = call i32 @AcpiUtGetDescriptorLength(i64* %333)
  %335 = load i64*, i64** %5, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  store i64* %337, i64** %5, align 8
  br label %26

338:                                              ; preds = %26
  %339 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %340 = call i32 @return_ACPI_STATUS(i32 %339)
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtValidateResource(i32*, i64*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiUtGetResourceLength(i64*) #1

declare dso_local i32 @AcpiUtGetResourceHeaderLength(i64*) #1

declare dso_local i32 @AcpiUtGetResourceType(i64*) #1

declare dso_local i32 @ACPI_MOVE_16_TO_16(i32*, i64*) #1

declare dso_local i32 @AcpiRsCountSetBits(i64) #1

declare dso_local i32 @AcpiRsStreamOptionLength(i32, i64) #1

declare dso_local i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetDescriptorLength(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
