; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psloop.c_AcpiPsGetArguments.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/parser/extr_psloop.c_AcpiPsGetArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_31__, %struct.TYPE_28__*, i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32*, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i8*, i32* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@PsGetArguments = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Get arguments for opcode [%s]\0A\00", align 1
@ACPI_POSSIBLE_METHOD_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Final argument count: %8.8X pass %u\0A\00", align 1
@AML_NAME_OP = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Setup Package/Buffer: Pass %u, AML Ptr: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i32*, %struct.TYPE_30__*)* @AcpiPsGetArguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiPsGetArguments(%struct.TYPE_29__* %0, i32* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %8, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  %11 = load i32, i32* @PsGetArguments, align 4
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.TYPE_29__* %12)
  %14 = load i32, i32* @ACPI_DB_PARSE, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %49 [
    i32 137, label %24
    i32 128, label %24
    i32 136, label %24
    i32 132, label %24
    i32 131, label %24
    i32 135, label %33
  ]

24:                                               ; preds = %3, %3, %3, %3, %3
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GET_CURRENT_ARG_TYPE(i32 %29)
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = call i32 @AcpiPsGetNextSimpleArg(%struct.TYPE_31__* %26, i32 %30, %struct.TYPE_30__* %31)
  br label %227

33:                                               ; preds = %3
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %38 = load i32, i32* @ACPI_POSSIBLE_METHOD_CALL, align 4
  %39 = call i32 @AcpiPsGetNextNamepath(%struct.TYPE_29__* %34, %struct.TYPE_31__* %36, %struct.TYPE_30__* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 4
  store i32 0, i32* %48, align 8
  br label %227

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %101, %49
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GET_CURRENT_ARG_TYPE(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %50
  %63 = phi i1 [ false, %50 ], [ %61, %56 ]
  br i1 %63, label %64, label %106

64:                                               ; preds = %62
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %76 [
    i32 134, label %75
    i32 138, label %75
    i32 133, label %75
    i32 130, label %75
    i32 129, label %75
  ]

75:                                               ; preds = %64, %64, %64, %64, %64
  br label %79

76:                                               ; preds = %64
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = call i32 @ASL_CV_CAPTURE_COMMENTS(%struct.TYPE_29__* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @GET_CURRENT_ARG_TYPE(i32 %85)
  %87 = call i32 @AcpiPsGetNextArg(%struct.TYPE_29__* %80, %struct.TYPE_31__* %82, i32 %86, %struct.TYPE_30__** %9)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ACPI_FAILURE(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @return_ACPI_STATUS(i32 %92)
  br label %94

94:                                               ; preds = %91, %79
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %96 = icmp ne %struct.TYPE_30__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %100 = call i32 @AcpiPsAppendArg(%struct.TYPE_30__* %98, %struct.TYPE_30__* %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @INCREMENT_ARG_LIST(i32 %104)
  br label %50

106:                                              ; preds = %62
  %107 = load i32, i32* @ACPI_DB_PARSE, align 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ACPI_DEBUG_PRINT(i32 %113)
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %225 [
    i32 134, label %119
    i32 138, label %152
    i32 133, label %152
    i32 130, label %152
    i32 129, label %209
  ]

119:                                              ; preds = %106
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  store i32* %123, i32** %126, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = ptrtoint i32* %130 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 1
  store i32* %146, i32** %149, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  br label %226

152:                                              ; preds = %106, %106, %106
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = icmp ne %struct.TYPE_24__* %156, null
  br i1 %157, label %158, label %208

158:                                              ; preds = %152
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AML_NAME_OP, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %208

168:                                              ; preds = %158
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %208

174:                                              ; preds = %168
  %175 = load i32, i32* @ACPI_DB_PARSE, align 4
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = ptrtoint i32* %179 to i32
  %181 = call i32 @ACPI_DEBUG_PRINT(i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  store i32* %182, i32** %185, align 8
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = inttoptr i64 %194 to i8*
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  store i8* %195, i8** %198, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 1
  store i32* %202, i32** %205, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 2
  store i32 0, i32* %207, align 8
  br label %208

208:                                              ; preds = %174, %168, %158, %152
  br label %226

209:                                              ; preds = %106
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %211, align 8
  %213 = icmp ne %struct.TYPE_28__* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  store i32* %218, i32** %223, align 8
  br label %224

224:                                              ; preds = %214, %209
  br label %226

225:                                              ; preds = %106
  br label %226

226:                                              ; preds = %225, %224, %208, %119
  br label %227

227:                                              ; preds = %226, %46, %24
  %228 = load i32, i32* @AE_OK, align 4
  %229 = call i32 @return_ACPI_STATUS(i32 %228)
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiPsGetNextSimpleArg(%struct.TYPE_31__*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i32 @AcpiPsGetNextNamepath(%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ASL_CV_CAPTURE_COMMENTS(%struct.TYPE_29__*) #1

declare dso_local i32 @AcpiPsGetNextArg(%struct.TYPE_29__*, %struct.TYPE_31__*, i32, %struct.TYPE_30__**) #1

declare dso_local i32 @AcpiPsAppendArg(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
