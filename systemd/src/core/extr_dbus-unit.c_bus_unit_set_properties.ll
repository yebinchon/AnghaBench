; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_set_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_set_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*)* }

@.str = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SD_BUS_ERROR_PROPERTY_READ_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Objects of this type do not support setting properties.\00", align 1
@UNIT_RUNTIME = common dso_local global i32 0, align 4
@UNIT_PERSISTENT = common dso_local global i32 0, align 4
@UNIT_STUB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Cannot set property %s, or unknown property.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_set_properties(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = call i32 @assert(%struct.TYPE_20__* %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_20__* %19)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = call i32 @sd_bus_message_enter_container(%struct.TYPE_20__* %21, i8 signext 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %6, align 4
  br label %191

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %159, %53, %27
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = call i32 @sd_bus_message_enter_container(%struct.TYPE_20__* %29, i8 signext 114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %191

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @UNIT_WRITE_FLAGS_NOOP(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %38
  br label %163

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = call i32 @sd_bus_message_rewind(%struct.TYPE_20__* %47, i32 0)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %191

53:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %28

54:                                               ; preds = %35
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = call i32 @sd_bus_message_read(%struct.TYPE_20__* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %191

61:                                               ; preds = %54
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = call %struct.TYPE_19__* @UNIT_VTABLE(%struct.TYPE_20__* %62)
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @SD_BUS_ERROR_PROPERTY_READ_ONLY, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %68, i32 %69, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* %6, align 4
  br label %191

71:                                               ; preds = %61
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = call i32 @sd_bus_message_enter_container(%struct.TYPE_20__* %72, i8 signext 118, i8* null)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %191

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  br label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @UNIT_RUNTIME, align 4
  %86 = load i32, i32* @UNIT_PERSISTENT, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  br label %90

90:                                               ; preds = %83, %81
  %91 = phi i32 [ %82, %81 ], [ %89, %83 ]
  store i32 %91, i32* %16, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = call %struct.TYPE_19__* @UNIT_VTABLE(%struct.TYPE_20__* %92)
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*)** %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 %95(%struct.TYPE_20__* %96, i8* %97, %struct.TYPE_20__* %98, i32 %99, i32* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %90
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @UNIT_STUB, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @bus_unit_set_transient_property(%struct.TYPE_20__* %116, i8* %117, %struct.TYPE_20__* %118, i32 %119, i32* %120)
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %115, %109, %104, %90
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @bus_unit_set_live_property(%struct.TYPE_20__* %126, i8* %127, %struct.TYPE_20__* %128, i32 %129, i32* %130)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %125, %122
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %6, align 4
  br label %191

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @SD_BUS_ERROR_PROPERTY_READ_ONLY, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %141, i32 %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  store i32 %144, i32* %6, align 4
  br label %191

145:                                              ; preds = %137
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = call i32 @sd_bus_message_exit_container(%struct.TYPE_20__* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %6, align 4
  br label %191

152:                                              ; preds = %145
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %154 = call i32 @sd_bus_message_exit_container(%struct.TYPE_20__* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %6, align 4
  br label %191

159:                                              ; preds = %152
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = add i32 %161, %160
  store i32 %162, i32* %13, align 4
  br label %28

163:                                              ; preds = %45
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %165 = call i32 @sd_bus_message_exit_container(%struct.TYPE_20__* %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %6, align 4
  br label %191

170:                                              ; preds = %163
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = icmp ugt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %178 = call %struct.TYPE_19__* @UNIT_VTABLE(%struct.TYPE_20__* %177)
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %179, align 8
  %181 = icmp ne i32 (%struct.TYPE_20__*)* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %184 = call %struct.TYPE_19__* @UNIT_VTABLE(%struct.TYPE_20__* %183)
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %188 = call i32 %186(%struct.TYPE_20__* %187)
  br label %189

189:                                              ; preds = %182, %176, %173, %170
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %189, %168, %157, %150, %140, %135, %76, %67, %59, %51, %33, %25
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @assert(%struct.TYPE_20__*) #1

declare dso_local i32 @sd_bus_message_enter_container(%struct.TYPE_20__*, i8 signext, i8*) #1

declare dso_local i64 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @sd_bus_message_rewind(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_20__*, i8*, i8**) #1

declare dso_local %struct.TYPE_19__* @UNIT_VTABLE(%struct.TYPE_20__*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i32 @bus_unit_set_transient_property(%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @bus_unit_set_live_property(%struct.TYPE_20__*, i8*, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @sd_bus_message_exit_container(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
