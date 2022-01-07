; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_method_set_x11_keyboard.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_method_set_x11_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ssssbb\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to read x11 keyboard layout data: %m\00", align 1
@SD_BUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to read x11 keyboard layout data\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Received invalid keyboard data\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Cannot compile XKB keymap for new x11 keyboard layout ('%s' / '%s' / '%s' / '%s'): %m\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Local keyboard configuration not supported on this system.\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Specified keymap cannot be compiled, refusing as invalid.\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"org.freedesktop.locale1.set-keyboard\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to set X11 keyboard layout: %m\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"Changed X11 keyboard layout to '%s' model '%s' variant '%s' options '%s'\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"/org/freedesktop/locale1\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"org.freedesktop.locale1\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"X11Layout\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"X11Model\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"X11Variant\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"X11Options\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Failed to convert keymap data: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*)* @method_set_x11_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_x11_keyboard(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call i32 @assert(%struct.TYPE_14__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = call i32 @assert(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i32 @sd_bus_message_read(%struct.TYPE_14__* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %10, i8** %11, i8** %12, i32* %13, i32* %14)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %4, align 4
  br label %233

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @empty_to_null(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i8* @empty_to_null(i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @empty_to_null(i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @empty_to_null(i8* %35)
  store i8* %36, i8** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = call i32 @x11_read_data(%struct.TYPE_14__* %37, %struct.TYPE_14__* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i32, i32* %15, align 4
  %44 = call i32 (i32, i8*, ...) @log_error_errno(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @SD_BUS_ERROR_FAILED, align 4
  %47 = call i32 @sd_bus_error_setf(i32* %45, i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %233

48:                                               ; preds = %28
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @streq_ptr(i8* %49, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @streq_ptr(i8* %56, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @streq_ptr(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @streq_ptr(i8* %70, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %77, i32* null)
  store i32 %78, i32* %4, align 4
  br label %233

79:                                               ; preds = %69, %62, %55, %48
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @string_is_safe(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %82, %79
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @string_is_safe(i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89, %86
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @string_is_safe(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96, %93
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @string_is_safe(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103, %96, %89, %82
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %110 = call i32 @sd_bus_error_setf(i32* %108, i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %110, i32* %4, align 4
  br label %233

111:                                              ; preds = %103, %100
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @verify_xkb_rmlvo(i8* %112, i8* %113, i8* %114, i8* %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %111
  %120 = load i32, i32* %15, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @strempty(i8* %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @strempty(i8* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @strempty(i8* %125)
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @strempty(i8* %127)
  %129 = call i32 (i32, i8*, ...) @log_error_errno(i32 %120, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %124, i32 %126, i32 %128)
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %137 = call i32 @sd_bus_error_setf(i32* %135, i32 %136, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  store i32 %137, i32* %4, align 4
  br label %233

138:                                              ; preds = %119
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %141 = call i32 @sd_bus_error_set(i32* %139, i32 %140, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  store i32 %141, i32* %4, align 4
  br label %233

142:                                              ; preds = %111
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @UID_INVALID, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @bus_verify_polkit_async(%struct.TYPE_14__* %143, i32 %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %145, i32 %146, i32* %148, i32* %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %4, align 4
  br label %233

155:                                              ; preds = %142
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* %4, align 4
  br label %233

159:                                              ; preds = %155
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %9, align 8
  %163 = call i64 @free_and_strdup(i8** %161, i8* %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i8*, i8** %10, align 8
  %169 = call i64 @free_and_strdup(i8** %167, i8* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load i8*, i8** %11, align 8
  %175 = call i64 @free_and_strdup(i8** %173, i8* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = load i8*, i8** %12, align 8
  %181 = call i64 @free_and_strdup(i8** %179, i8* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177, %171, %165, %159
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %4, align 4
  br label %233

186:                                              ; preds = %177
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = call i32 @x11_write_data(%struct.TYPE_14__* %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* %15, align 4
  %193 = call i32 (i32, i8*, ...) @log_error_errno(i32 %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @sd_bus_error_set_errnof(i32* %194, i32 %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 %196, i32* %4, align 4
  br label %233

197:                                              ; preds = %186
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strempty(i8* %200)
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @strempty(i8* %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @strempty(i8* %208)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strempty(i8* %212)
  %214 = call i32 @log_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %201, i32 %205, i32 %209, i32 %213)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %216 = call i32 @sd_bus_message_get_bus(%struct.TYPE_14__* %215)
  %217 = call i32 @sd_bus_emit_properties_changed(i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %197
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = call i32 @x11_convert_to_vconsole_and_emit(%struct.TYPE_14__* %221, %struct.TYPE_14__* %222)
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %15, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %15, align 4
  %228 = call i32 (i32, i8*, ...) @log_error_errno(i32 %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %220
  br label %230

230:                                              ; preds = %229, %197
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %232 = call i32 @sd_bus_reply_method_return(%struct.TYPE_14__* %231, i32* null)
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %230, %191, %183, %158, %153, %138, %134, %107, %76, %42, %26
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_14__*, i8*, i8**, i8**, i8**, i8**, i32*, i32*) #1

declare dso_local i8* @empty_to_null(i8*) #1

declare dso_local i32 @x11_read_data(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @string_is_safe(i8*) #1

declare dso_local i32 @verify_xkb_rmlvo(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strempty(i8*) #1

declare dso_local i32 @sd_bus_error_set(i32*, i32, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_14__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @free_and_strdup(i8**, i8*) #1

declare dso_local i32 @x11_write_data(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_14__*) #1

declare dso_local i32 @x11_convert_to_vconsole_and_emit(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
