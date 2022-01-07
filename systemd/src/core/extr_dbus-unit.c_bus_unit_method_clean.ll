; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_clean.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@EXEC_CLEAN_ALL = common dso_local global i32 0, align 4
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid resource type: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@CAP_DAC_OVERRIDE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [86 x i8] c"Authentication is required to delete files and directories associated with '$(unit)'.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Unit '%s' does not supporting cleaning.\00", align 1
@EUNATCH = common dso_local global i32 0, align 4
@BUS_ERROR_NOTHING_TO_CLEAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"No matching resources found.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BUS_ERROR_UNIT_BUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Unit is not inactive or has pending job.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_clean(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = call i32 @assert(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @mac_selinux_unit_access_check(%struct.TYPE_14__* %19, %struct.TYPE_14__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %133

27:                                               ; preds = %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i32 @sd_bus_message_enter_container(%struct.TYPE_14__* %28, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %133

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %69, %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = call i32 @sd_bus_message_read(%struct.TYPE_14__* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %133

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %70

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EXEC_CLEAN_ALL, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %69

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @exec_resource_type_from_string(i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ult i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %60, i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %4, align 4
  br label %133

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %50
  br label %35

70:                                               ; preds = %45
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call i32 @sd_bus_message_exit_container(%struct.TYPE_14__* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %133

77:                                               ; preds = %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %80 = call i32 @N_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @bus_verify_manage_units_async_full(%struct.TYPE_14__* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80, i32 1, %struct.TYPE_14__* %81, i32* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %133

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %4, align 4
  br label %133

92:                                               ; preds = %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @unit_clean(%struct.TYPE_14__* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %101, i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  store i32 %106, i32* %4, align 4
  br label %133

107:                                              ; preds = %92
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @EUNATCH, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @BUS_ERROR_NOTHING_TO_CLEAN, align 4
  %115 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %113, i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 %115, i32* %4, align 4
  br label %133

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @BUS_ERROR_UNIT_BUSY, align 4
  %124 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %122, i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 %124, i32* %4, align 4
  br label %133

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %133

130:                                              ; preds = %125
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %131, i32* null)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %128, %121, %112, %100, %91, %86, %75, %59, %40, %32, %25
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @mac_selinux_unit_access_check(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_enter_container(%struct.TYPE_14__*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_14__*, i8*, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @exec_resource_type_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i32 @sd_bus_message_exit_container(%struct.TYPE_14__*) #1

declare dso_local i32 @bus_verify_manage_units_async_full(%struct.TYPE_14__*, i8*, i32, i32, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @unit_clean(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
