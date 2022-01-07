; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_method_set_vc_keyboard.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_method_set_vc_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ssbb\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to read virtual console keymap data: %m\00", align 1
@SD_BUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to read virtual console keymap data\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Received invalid keymap data\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"org.freedesktop.locale1.set-keyboard\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to set virtual console keymap: %m\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Changed virtual console keymap to '%s' toggle '%s'\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"/org/freedesktop/locale1\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"org.freedesktop.locale1\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"VConsoleKeymap\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"VConsoleKeymapToggle\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to convert keymap data: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*)* @method_set_vc_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_vc_keyboard(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_14__* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_14__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_14__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %10, i32* %11, i32* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %159

26:                                               ; preds = %3
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @empty_to_null(i8* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i8* @empty_to_null(i8* %29)
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i32 @vconsole_read_data(%struct.TYPE_14__* %31, %struct.TYPE_14__* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @SD_BUS_ERROR_FAILED, align 4
  %41 = call i32 @sd_bus_error_setf(i32* %39, i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  br label %159

42:                                               ; preds = %26
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @streq_ptr(i8* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @streq_ptr(i8* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %57, i32* null)
  store i32 %58, i32* %4, align 4
  br label %159

59:                                               ; preds = %49, %42
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @filename_is_valid(i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @string_is_safe(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66, %59
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @filename_is_valid(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @string_is_safe(i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77, %73, %66, %62
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %84 = call i32 @sd_bus_error_setf(i32* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %84, i32* %4, align 4
  br label %159

85:                                               ; preds = %77, %70
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @UID_INVALID, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @bus_verify_polkit_async(%struct.TYPE_14__* %86, i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %88, i32 %89, i32* %91, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %159

98:                                               ; preds = %85
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %159

102:                                              ; preds = %98
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @free_and_strdup(i32* %104, i8* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @free_and_strdup(i32* %110, i8* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108, %102
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %159

117:                                              ; preds = %108
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = call i32 @vconsole_write_data(%struct.TYPE_14__* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @log_error_errno(i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @sd_bus_error_set_errnof(i32* %125, i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 %127, i32* %4, align 4
  br label %159

128:                                              ; preds = %117
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @strempty(i32 %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @strempty(i32 %135)
  %137 = call i32 @log_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = call i32 @sd_bus_message_get_bus(%struct.TYPE_14__* %138)
  %140 = call i32 @vconsole_reload(i32 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = call i32 @sd_bus_message_get_bus(%struct.TYPE_14__* %141)
  %143 = call i32 @sd_bus_emit_properties_changed(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %128
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = call i32 @vconsole_convert_to_x11_and_emit(%struct.TYPE_14__* %147, %struct.TYPE_14__* %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @log_error_errno(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %146
  br label %156

156:                                              ; preds = %155, %128
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %157, i32* null)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %122, %114, %101, %96, %81, %56, %36, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_14__*, i8*, i8**, i8**, i32*, i32*) #1

declare dso_local i8* @empty_to_null(i8*) #1

declare dso_local i32 @vconsole_read_data(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i64 @streq_ptr(i8*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @filename_is_valid(i8*) #1

declare dso_local i32 @string_is_safe(i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_14__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @vconsole_write_data(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i32, i32) #1

declare dso_local i32 @strempty(i32) #1

declare dso_local i32 @vconsole_reload(i32) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @vconsole_convert_to_x11_and_emit(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
