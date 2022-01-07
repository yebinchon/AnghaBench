; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_set_power.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Device is not power manageable\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Device is already at D%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Device does not support D%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Cannot set device to a higher-powered state than parent\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Error transitioning device [%s] to D%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Device [%s] transitioned to D%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_set_power(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca [5 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %7, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %8, align 8
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 95, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 80, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 83, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 48, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %14, align 1
  %18 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %18, align 1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @acpi_bus_get_device(i32 %19, %struct.acpi_device** %8)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @return_VALUE(i32 %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ACPI_STATE_D0, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ACPI_STATE_D3, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %36 = call i32 @return_VALUE(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AE_NOT_FOUND, align 4
  %46 = call i32 @return_VALUE(i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = call i32 @acpi_bus_get_power(i32 %50, i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %63 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  br label %210

70:                                               ; preds = %61, %47
  %71 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %85, i32* %3, align 4
  br label %210

86:                                               ; preds = %70
  %87 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %88 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %94 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %92, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %102, i32* %3, align 4
  br label %210

103:                                              ; preds = %91, %86
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %106 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %103
  %111 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %112 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @acpi_power_transition(%struct.acpi_device* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %191

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %110
  %126 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %127 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %125
  %138 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %139 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %142 = call i32 @AcpiEvaluateObject(i32 %140, i8* %141, i32* null, i32* null)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @ACPI_FAILURE(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %147, i32* %6, align 4
  br label %191

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %125
  br label %190

150:                                              ; preds = %103
  %151 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %152 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %150
  %163 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %164 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %167 = call i32 @AcpiEvaluateObject(i32 %165, i8* %166, i32* null, i32* null)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i64 @ACPI_FAILURE(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %172, i32* %6, align 4
  br label %191

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %150
  %175 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %176 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @acpi_power_transition(%struct.acpi_device* %182, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %191

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %174
  br label %190

190:                                              ; preds = %189, %149
  br label %191

191:                                              ; preds = %190, %187, %171, %146, %123
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %196 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199)
  br label %208

201:                                              ; preds = %191
  %202 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %203 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %201, %194
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %100, %82, %67
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @acpi_bus_get_power(i32, i32*) #1

declare dso_local i32 @acpi_power_transition(%struct.acpi_device*, i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
