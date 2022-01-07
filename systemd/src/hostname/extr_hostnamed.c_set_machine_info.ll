; ModuleID = '/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_set_machine_info.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_set_machine_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@PROP_ICON_NAME = common dso_local global i32 0, align 4
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid icon name '%s'\00", align 1
@PROP_PRETTY_HOSTNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid pretty host name '%s'\00", align 1
@PROP_CHASSIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid chassis '%s'\00", align 1
@PROP_DEPLOYMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid deployment '%s'\00", align 1
@PROP_LOCATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid location '%s'\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"org.freedesktop.hostname1.set-static-hostname\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"org.freedesktop.hostname1.set-machine-info\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to write machine info: %m\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Changed %s to '%s'\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"pretty host name\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"deployment\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"chassis\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"icon name\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"/org/freedesktop/hostname1\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"org.freedesktop.hostname1\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"PrettyHostname\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Deployment\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Chassis\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"IconName\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i32*)* @set_machine_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_machine_info(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = call i32 @assert(%struct.TYPE_11__* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, i32* %12)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %224

25:                                               ; preds = %5
  %26 = load i8*, i8** %13, align 8
  %27 = call i8* @empty_to_null(i8* %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @streq_ptr(i8* %28, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %39, i32* null)
  store i32 %40, i32* %6, align 4
  br label %224

41:                                               ; preds = %25
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @isempty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %111, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PROP_ICON_NAME, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @filename_is_valid(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @sd_bus_error_setf(i32* %54, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 %57, i32* %6, align 4
  br label %224

58:                                               ; preds = %49, %45
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @PROP_PRETTY_HOSTNAME, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @string_has_cc(i8* %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @sd_bus_error_setf(i32* %67, i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %6, align 4
  br label %224

71:                                               ; preds = %62, %58
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @PROP_CHASSIS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @valid_chassis(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @sd_bus_error_setf(i32* %80, i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %6, align 4
  br label %224

84:                                               ; preds = %75, %71
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PROP_DEPLOYMENT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @valid_deployment(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @sd_bus_error_setf(i32* %93, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  store i32 %96, i32* %6, align 4
  br label %224

97:                                               ; preds = %88, %84
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @PROP_LOCATION, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i8*, i8** %13, align 8
  %103 = call i64 @string_has_cc(i8* %102, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @sd_bus_error_setf(i32* %106, i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  store i32 %109, i32* %6, align 4
  br label %224

110:                                              ; preds = %101, %97
  br label %111

111:                                              ; preds = %110, %41
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @PROP_PRETTY_HOSTNAME, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0)
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @UID_INVALID, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @bus_verify_polkit_async(%struct.TYPE_11__* %112, i32 %113, i8* %118, i32* null, i32 %119, i32 %120, i32* %122, i32* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %224

129:                                              ; preds = %111
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %224

133:                                              ; preds = %129
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @free_and_strdup(i32* %139, i8* %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %6, align 4
  br label %224

146:                                              ; preds = %133
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = call i32 @context_write_data_machine_info(%struct.TYPE_11__* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @log_error_errno(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @sd_bus_error_set_errnof(i32* %154, i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 %156, i32* %6, align 4
  br label %224

157:                                              ; preds = %146
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @PROP_PRETTY_HOSTNAME, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %182

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @PROP_DEPLOYMENT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %180

167:                                              ; preds = %162
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @PROP_LOCATION, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %178

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @PROP_CHASSIS, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)
  br label %178

178:                                              ; preds = %172, %171
  %179 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %171 ], [ %177, %172 ]
  br label %180

180:                                              ; preds = %178, %166
  %181 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %166 ], [ %179, %178 ]
  br label %182

182:                                              ; preds = %180, %161
  %183 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), %161 ], [ %181, %180 ]
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @strna(i32 %190)
  %192 = call i32 @log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %183, i32 %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %194 = call i32 @sd_bus_message_get_bus(%struct.TYPE_11__* %193)
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @PROP_PRETTY_HOSTNAME, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %182
  br label %219

199:                                              ; preds = %182
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @PROP_DEPLOYMENT, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %217

204:                                              ; preds = %199
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @PROP_LOCATION, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %215

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @PROP_CHASSIS, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)
  br label %215

215:                                              ; preds = %209, %208
  %216 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), %208 ], [ %214, %209 ]
  br label %217

217:                                              ; preds = %215, %203
  %218 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), %203 ], [ %216, %215 ]
  br label %219

219:                                              ; preds = %217, %198
  %220 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %198 ], [ %218, %217 ]
  %221 = call i32 @sd_bus_emit_properties_changed(i32 %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %220, i32* null)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %223 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %222, i32* null)
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %219, %151, %144, %132, %127, %105, %92, %79, %66, %53, %38, %23
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i8**, i32*) #1

declare dso_local i8* @empty_to_null(i8*) #1

declare dso_local i64 @streq_ptr(i8*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i32 @filename_is_valid(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i64 @string_has_cc(i8*, i32*) #1

declare dso_local i32 @valid_chassis(i8*) #1

declare dso_local i32 @valid_deployment(i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_11__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @context_write_data_machine_info(%struct.TYPE_11__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i8*, i32) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
