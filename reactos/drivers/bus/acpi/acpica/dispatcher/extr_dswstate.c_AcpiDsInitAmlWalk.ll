; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswstate.c_AcpiDsInitAmlWalk.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dswstate.c_AcpiDsInitAmlWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_22__*, i32, %struct.TYPE_20__, i32*, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32*, i32*, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@DsInitAmlWalk = common dso_local global i32 0, align 4
@ACPI_WALK_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsInitAmlWalk(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, i32* %3, i32 %4, %struct.TYPE_23__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %17, align 8
  %21 = load i32, i32* @DsInitAmlWalk, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  store i32* %23, i32** %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 5
  store i32* %23, i32** %29, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 3
  store i32* %33, i32** %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %46 = icmp ne %struct.TYPE_23__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %7
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %47, %7
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = call i32 @AcpiPsInitScope(%struct.TYPE_20__* %59, %struct.TYPE_21__* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i64 @ACPI_FAILURE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @return_ACPI_STATUS(i32 %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %70 = icmp ne %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %110

71:                                               ; preds = %68
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %75, align 8
  %76 = load i32, i32* @ACPI_WALK_METHOD, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  store %struct.TYPE_22__* %79, %struct.TYPE_22__** %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = call i32 @AcpiNsGetAttachedObject(%struct.TYPE_22__* %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %87 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = call i32 @AcpiDsScopeStackPush(%struct.TYPE_22__* %86, i32 %87, %struct.TYPE_19__* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i64 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %71
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @return_ACPI_STATUS(i32 %94)
  br label %96

96:                                               ; preds = %93, %71
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ACPI_METHOD_NUM_ARGS, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = call i32 @AcpiDsMethodDataInitArgs(i32 %99, i32 %100, %struct.TYPE_19__* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @ACPI_FAILURE(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  br label %109

109:                                              ; preds = %106, %96
  br label %168

110:                                              ; preds = %68
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %18, align 8
  br label %114

114:                                              ; preds = %126, %110
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %116 = icmp ne %struct.TYPE_21__* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = icmp ne %struct.TYPE_22__* %121, null
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i1 [ false, %114 ], [ %123, %117 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  store %struct.TYPE_21__* %130, %struct.TYPE_21__** %18, align 8
  br label %114

131:                                              ; preds = %124
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %133 = icmp ne %struct.TYPE_21__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %136, align 8
  br label %144

137:                                              ; preds = %131
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %143, align 8
  br label %144

144:                                              ; preds = %137, %134
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = icmp ne %struct.TYPE_22__* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %159 = call i32 @AcpiDsScopeStackPush(%struct.TYPE_22__* %152, i32 %157, %struct.TYPE_19__* %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i64 @ACPI_FAILURE(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @return_ACPI_STATUS(i32 %164)
  br label %166

166:                                              ; preds = %163, %149
  br label %167

167:                                              ; preds = %166, %144
  br label %168

168:                                              ; preds = %167, %109
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @AcpiDsInitCallbacks(%struct.TYPE_19__* %169, i32 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @return_ACPI_STATUS(i32 %172)
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiPsInitScope(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiNsGetAttachedObject(%struct.TYPE_22__*) #1

declare dso_local i32 @AcpiDsScopeStackPush(%struct.TYPE_22__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @AcpiDsMethodDataInitArgs(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @AcpiDsInitCallbacks(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
