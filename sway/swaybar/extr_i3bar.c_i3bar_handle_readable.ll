; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_handle_readable.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_handle_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_line = type { i32, i64, i8*, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.json_object = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Invalid i3bar json: expected '[' but encountered '%c'\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[invalid i3bar json]\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"[error reading from status command]\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid i3bar json: expected ',' but encountered '%c'\00", align 1
@json_tokener_success = common dso_local global i32 0, align 4
@json_type_array = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Received i3bar json: '%s%c'\00", align 1
@json_tokener_continue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"[failed to allocate buffer]\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to parse i3bar json - %s: '%s%c'\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"[failed to parse i3bar json]\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Rendering last received json\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3bar_handle_readable(%struct.status_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.status_line*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.json_object*, align 8
  %7 = alloca %struct.json_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.status_line* %0, %struct.status_line** %3, align 8
  br label %16

16:                                               ; preds = %117, %1
  %17 = load %struct.status_line*, %struct.status_line** %3, align 8
  %18 = getelementptr inbounds %struct.status_line, %struct.status_line* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %118

22:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %82, %22
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.status_line*, %struct.status_line** %3, align 8
  %26 = getelementptr inbounds %struct.status_line, %struct.status_line* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load %struct.status_line*, %struct.status_line** %3, align 8
  %31 = getelementptr inbounds %struct.status_line, %struct.status_line* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 91
  br i1 %37, label %38, label %59

38:                                               ; preds = %29
  %39 = load %struct.status_line*, %struct.status_line** %3, align 8
  %40 = getelementptr inbounds %struct.status_line, %struct.status_line* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  %43 = load %struct.status_line*, %struct.status_line** %3, align 8
  %44 = getelementptr inbounds %struct.status_line, %struct.status_line* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.status_line*, %struct.status_line** %3, align 8
  %48 = getelementptr inbounds %struct.status_line, %struct.status_line* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.status_line*, %struct.status_line** %3, align 8
  %51 = getelementptr inbounds %struct.status_line, %struct.status_line* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load %struct.status_line*, %struct.status_line** %3, align 8
  %56 = getelementptr inbounds %struct.status_line, %struct.status_line* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memmove(i8* %49, i8* %54, i64 %57)
  br label %85

59:                                               ; preds = %29
  %60 = load %struct.status_line*, %struct.status_line** %3, align 8
  %61 = getelementptr inbounds %struct.status_line, %struct.status_line* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @SWAY_DEBUG, align 4
  %70 = load %struct.status_line*, %struct.status_line** %3, align 8
  %71 = getelementptr inbounds %struct.status_line, %struct.status_line* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i32, i8*, ...) @sway_log(i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.status_line*, %struct.status_line** %3, align 8
  %79 = call i32 @status_error(%struct.status_line* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %4, align 8
  br label %23

85:                                               ; preds = %38, %23
  %86 = load %struct.status_line*, %struct.status_line** %3, align 8
  %87 = getelementptr inbounds %struct.status_line, %struct.status_line* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %118

91:                                               ; preds = %85
  store i64 0, i64* @errno, align 8
  %92 = load %struct.status_line*, %struct.status_line** %3, align 8
  %93 = getelementptr inbounds %struct.status_line, %struct.status_line* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.status_line*, %struct.status_line** %3, align 8
  %96 = getelementptr inbounds %struct.status_line, %struct.status_line* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.status_line*, %struct.status_line** %3, align 8
  %99 = getelementptr inbounds %struct.status_line, %struct.status_line* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @read(i32 %94, i8* %97, i64 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.status_line*, %struct.status_line** %3, align 8
  %108 = getelementptr inbounds %struct.status_line, %struct.status_line* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %117

109:                                              ; preds = %91
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EAGAIN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %425

114:                                              ; preds = %109
  %115 = load %struct.status_line*, %struct.status_line** %3, align 8
  %116 = call i32 @status_error(%struct.status_line* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

117:                                              ; preds = %104
  br label %16

118:                                              ; preds = %90, %16
  store %struct.json_object* null, %struct.json_object** %6, align 8
  store i64 0, i64* %8, align 8
  br label %119

119:                                              ; preds = %118, %177, %277, %412
  %120 = load %struct.status_line*, %struct.status_line** %3, align 8
  %121 = getelementptr inbounds %struct.status_line, %struct.status_line* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %168, %124
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.status_line*, %struct.status_line** %3, align 8
  %128 = getelementptr inbounds %struct.status_line, %struct.status_line* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %171

131:                                              ; preds = %125
  %132 = load %struct.status_line*, %struct.status_line** %3, align 8
  %133 = getelementptr inbounds %struct.status_line, %struct.status_line* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 44
  br i1 %139, label %140, label %145

140:                                              ; preds = %131
  %141 = load %struct.status_line*, %struct.status_line** %3, align 8
  %142 = getelementptr inbounds %struct.status_line, %struct.status_line* %141, i32 0, i32 4
  store i32 0, i32* %142, align 8
  %143 = load i64, i64* %8, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %8, align 8
  br label %171

145:                                              ; preds = %131
  %146 = load %struct.status_line*, %struct.status_line** %3, align 8
  %147 = getelementptr inbounds %struct.status_line, %struct.status_line* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @isspace(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* @SWAY_DEBUG, align 4
  %156 = load %struct.status_line*, %struct.status_line** %3, align 8
  %157 = getelementptr inbounds %struct.status_line, %struct.status_line* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = call i32 (i32, i8*, ...) @sway_log(i32 %155, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.status_line*, %struct.status_line** %3, align 8
  %165 = call i32 @status_error(%struct.status_line* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %8, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %8, align 8
  br label %125

171:                                              ; preds = %140, %125
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.status_line*, %struct.status_line** %3, align 8
  %174 = getelementptr inbounds %struct.status_line, %struct.status_line* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %119

178:                                              ; preds = %171
  %179 = load %struct.status_line*, %struct.status_line** %3, align 8
  %180 = getelementptr inbounds %struct.status_line, %struct.status_line* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  store i64 0, i64* %8, align 8
  br label %376

181:                                              ; preds = %119
  %182 = load %struct.status_line*, %struct.status_line** %3, align 8
  %183 = getelementptr inbounds %struct.status_line, %struct.status_line* %182, i32 0, i32 6
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load %struct.status_line*, %struct.status_line** %3, align 8
  %186 = getelementptr inbounds %struct.status_line, %struct.status_line* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i64, i64* %8, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load %struct.status_line*, %struct.status_line** %3, align 8
  %191 = getelementptr inbounds %struct.status_line, %struct.status_line* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %8, align 8
  %194 = sub i64 %192, %193
  %195 = call %struct.json_object* @json_tokener_parse_ex(%struct.TYPE_4__* %184, i8* %189, i64 %194)
  store %struct.json_object* %195, %struct.json_object** %7, align 8
  %196 = load %struct.status_line*, %struct.status_line** %3, align 8
  %197 = getelementptr inbounds %struct.status_line, %struct.status_line* %196, i32 0, i32 6
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = call i32 @json_tokener_get_error(%struct.TYPE_4__* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @json_tokener_success, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %281

203:                                              ; preds = %181
  %204 = load %struct.json_object*, %struct.json_object** %7, align 8
  %205 = call i64 @json_object_get_type(%struct.json_object* %204)
  %206 = load i64, i64* @json_type_array, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.json_object*, %struct.json_object** %6, align 8
  %210 = icmp ne %struct.json_object* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.json_object*, %struct.json_object** %6, align 8
  %213 = call i32 @json_object_put(%struct.json_object* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.json_object*, %struct.json_object** %7, align 8
  store %struct.json_object* %215, %struct.json_object** %6, align 8
  br label %219

216:                                              ; preds = %203
  %217 = load %struct.json_object*, %struct.json_object** %7, align 8
  %218 = call i32 @json_object_put(%struct.json_object* %217)
  br label %219

219:                                              ; preds = %216, %214
  %220 = load %struct.status_line*, %struct.status_line** %3, align 8
  %221 = getelementptr inbounds %struct.status_line, %struct.status_line* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load i64, i64* %8, align 8
  %224 = load %struct.status_line*, %struct.status_line** %3, align 8
  %225 = getelementptr inbounds %struct.status_line, %struct.status_line* %224, i32 0, i32 6
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %223, %228
  %230 = sub i64 %229, 1
  %231 = getelementptr inbounds i8, i8* %222, i64 %230
  store i8* %231, i8** %10, align 8
  %232 = load i8*, i8** %10, align 8
  %233 = load i8, i8* %232, align 1
  store i8 %233, i8* %11, align 1
  br label %234

234:                                              ; preds = %238, %219
  %235 = load i8, i8* %11, align 1
  %236 = call i64 @isspace(i8 signext %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i8*, i8** %10, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 -1
  store i8* %240, i8** %10, align 8
  %241 = load i8, i8* %240, align 1
  store i8 %241, i8* %11, align 1
  br label %234

242:                                              ; preds = %234
  %243 = load i8*, i8** %10, align 8
  store i8 0, i8* %243, align 1
  %244 = load %struct.status_line*, %struct.status_line** %3, align 8
  %245 = getelementptr inbounds %struct.status_line, %struct.status_line* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = load i64, i64* %8, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = call i64 @strspn(i8* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i64 %249, i64* %12, align 8
  %250 = load i32, i32* @SWAY_DEBUG, align 4
  %251 = load %struct.status_line*, %struct.status_line** %3, align 8
  %252 = getelementptr inbounds %struct.status_line, %struct.status_line* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* %12, align 8
  %256 = add i64 %254, %255
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = load i8, i8* %11, align 1
  %259 = sext i8 %258 to i32
  %260 = call i32 (i32, i8*, ...) @sway_log(i32 %250, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %257, i32 %259)
  %261 = load i8, i8* %11, align 1
  %262 = load i8*, i8** %10, align 8
  store i8 %261, i8* %262, align 1
  %263 = load %struct.status_line*, %struct.status_line** %3, align 8
  %264 = getelementptr inbounds %struct.status_line, %struct.status_line* %263, i32 0, i32 6
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %8, align 8
  %269 = add i64 %268, %267
  store i64 %269, i64* %8, align 8
  %270 = load %struct.status_line*, %struct.status_line** %3, align 8
  %271 = getelementptr inbounds %struct.status_line, %struct.status_line* %270, i32 0, i32 4
  store i32 1, i32* %271, align 8
  %272 = load i64, i64* %8, align 8
  %273 = load %struct.status_line*, %struct.status_line** %3, align 8
  %274 = getelementptr inbounds %struct.status_line, %struct.status_line* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ult i64 %272, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %242
  br label %119

278:                                              ; preds = %242
  %279 = load %struct.status_line*, %struct.status_line** %3, align 8
  %280 = getelementptr inbounds %struct.status_line, %struct.status_line* %279, i32 0, i32 1
  store i64 0, i64* %280, align 8
  store i64 0, i64* %8, align 8
  br label %375

281:                                              ; preds = %181
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @json_tokener_continue, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %343

285:                                              ; preds = %281
  %286 = load %struct.status_line*, %struct.status_line** %3, align 8
  %287 = getelementptr inbounds %struct.status_line, %struct.status_line* %286, i32 0, i32 6
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = call i32 @json_tokener_reset(%struct.TYPE_4__* %288)
  %290 = load %struct.status_line*, %struct.status_line** %3, align 8
  %291 = getelementptr inbounds %struct.status_line, %struct.status_line* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.status_line*, %struct.status_line** %3, align 8
  %294 = getelementptr inbounds %struct.status_line, %struct.status_line* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = icmp ult i64 %292, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %285
  %298 = load i64, i64* %8, align 8
  %299 = load %struct.status_line*, %struct.status_line** %3, align 8
  %300 = getelementptr inbounds %struct.status_line, %struct.status_line* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = sub i64 %301, %298
  store i64 %302, i64* %300, align 8
  %303 = load %struct.status_line*, %struct.status_line** %3, align 8
  %304 = getelementptr inbounds %struct.status_line, %struct.status_line* %303, i32 0, i32 2
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.status_line*, %struct.status_line** %3, align 8
  %307 = getelementptr inbounds %struct.status_line, %struct.status_line* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = load i64, i64* %8, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  %311 = load %struct.status_line*, %struct.status_line** %3, align 8
  %312 = getelementptr inbounds %struct.status_line, %struct.status_line* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @memmove(i8* %305, i8* %310, i64 %313)
  store i64 0, i64* %8, align 8
  br label %342

315:                                              ; preds = %285
  %316 = load %struct.status_line*, %struct.status_line** %3, align 8
  %317 = getelementptr inbounds %struct.status_line, %struct.status_line* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = mul i64 %318, 2
  store i64 %319, i64* %317, align 8
  %320 = load %struct.status_line*, %struct.status_line** %3, align 8
  %321 = getelementptr inbounds %struct.status_line, %struct.status_line* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.status_line*, %struct.status_line** %3, align 8
  %324 = getelementptr inbounds %struct.status_line, %struct.status_line* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = call i8* @realloc(i8* %322, i32 %326)
  store i8* %327, i8** %13, align 8
  %328 = load i8*, i8** %13, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %315
  %331 = load i8*, i8** %13, align 8
  %332 = load %struct.status_line*, %struct.status_line** %3, align 8
  %333 = getelementptr inbounds %struct.status_line, %struct.status_line* %332, i32 0, i32 2
  store i8* %331, i8** %333, align 8
  br label %341

334:                                              ; preds = %315
  %335 = load %struct.status_line*, %struct.status_line** %3, align 8
  %336 = getelementptr inbounds %struct.status_line, %struct.status_line* %335, i32 0, i32 2
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @free(i8* %337)
  %339 = load %struct.status_line*, %struct.status_line** %3, align 8
  %340 = call i32 @status_error(%struct.status_line* %339, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

341:                                              ; preds = %330
  br label %342

342:                                              ; preds = %341, %297
  br label %374

343:                                              ; preds = %281
  %344 = load %struct.status_line*, %struct.status_line** %3, align 8
  %345 = getelementptr inbounds %struct.status_line, %struct.status_line* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.status_line*, %struct.status_line** %3, align 8
  %348 = getelementptr inbounds %struct.status_line, %struct.status_line* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = sub i64 %349, 1
  %351 = getelementptr inbounds i8, i8* %346, i64 %350
  %352 = load i8, i8* %351, align 1
  store i8 %352, i8* %14, align 1
  %353 = load %struct.status_line*, %struct.status_line** %3, align 8
  %354 = getelementptr inbounds %struct.status_line, %struct.status_line* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.status_line*, %struct.status_line** %3, align 8
  %357 = getelementptr inbounds %struct.status_line, %struct.status_line* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = sub i64 %358, 1
  %360 = getelementptr inbounds i8, i8* %355, i64 %359
  store i8 0, i8* %360, align 1
  %361 = load i32, i32* @SWAY_DEBUG, align 4
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @json_tokener_error_desc(i32 %362)
  %364 = load %struct.status_line*, %struct.status_line** %3, align 8
  %365 = getelementptr inbounds %struct.status_line, %struct.status_line* %364, i32 0, i32 2
  %366 = load i8*, i8** %365, align 8
  %367 = load i64, i64* %8, align 8
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  %369 = load i8, i8* %14, align 1
  %370 = sext i8 %369 to i32
  %371 = call i32 (i32, i8*, ...) @sway_log(i32 %361, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %363, i8* %368, i32 %370)
  %372 = load %struct.status_line*, %struct.status_line** %3, align 8
  %373 = call i32 @status_error(%struct.status_line* %372, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

374:                                              ; preds = %342
  br label %375

375:                                              ; preds = %374, %278
  br label %376

376:                                              ; preds = %375, %178
  store i64 0, i64* @errno, align 8
  %377 = load %struct.status_line*, %struct.status_line** %3, align 8
  %378 = getelementptr inbounds %struct.status_line, %struct.status_line* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.status_line*, %struct.status_line** %3, align 8
  %381 = getelementptr inbounds %struct.status_line, %struct.status_line* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.status_line*, %struct.status_line** %3, align 8
  %384 = getelementptr inbounds %struct.status_line, %struct.status_line* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds i8, i8* %382, i64 %385
  %387 = load %struct.status_line*, %struct.status_line** %3, align 8
  %388 = getelementptr inbounds %struct.status_line, %struct.status_line* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.status_line*, %struct.status_line** %3, align 8
  %391 = getelementptr inbounds %struct.status_line, %struct.status_line* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = sub i64 %389, %392
  %394 = call i32 @read(i32 %379, i8* %386, i64 %393)
  store i32 %394, i32* %15, align 4
  %395 = load i32, i32* %15, align 4
  %396 = icmp sgt i32 %395, -1
  br i1 %396, label %397, label %404

397:                                              ; preds = %376
  %398 = load i32, i32* %15, align 4
  %399 = sext i32 %398 to i64
  %400 = load %struct.status_line*, %struct.status_line** %3, align 8
  %401 = getelementptr inbounds %struct.status_line, %struct.status_line* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, %399
  store i64 %403, i64* %401, align 8
  br label %412

404:                                              ; preds = %376
  %405 = load i64, i64* @errno, align 8
  %406 = load i64, i64* @EAGAIN, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  br label %413

409:                                              ; preds = %404
  %410 = load %struct.status_line*, %struct.status_line** %3, align 8
  %411 = call i32 @status_error(%struct.status_line* %410, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %425

412:                                              ; preds = %397
  br label %119

413:                                              ; preds = %408
  %414 = load %struct.json_object*, %struct.json_object** %6, align 8
  %415 = icmp ne %struct.json_object* %414, null
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  %417 = load i32, i32* @SWAY_DEBUG, align 4
  %418 = call i32 (i32, i8*, ...) @sway_log(i32 %417, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %419 = load %struct.status_line*, %struct.status_line** %3, align 8
  %420 = load %struct.json_object*, %struct.json_object** %6, align 8
  %421 = call i32 @i3bar_parse_json(%struct.status_line* %419, %struct.json_object* %420)
  %422 = load %struct.json_object*, %struct.json_object** %6, align 8
  %423 = call i32 @json_object_put(%struct.json_object* %422)
  store i32 1, i32* %2, align 4
  br label %425

424:                                              ; preds = %413
  store i32 0, i32* %2, align 4
  br label %425

425:                                              ; preds = %424, %416, %409, %343, %334, %154, %114, %113, %68
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @status_error(%struct.status_line*, i8*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local %struct.json_object* @json_tokener_parse_ex(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @json_tokener_get_error(%struct.TYPE_4__*) #1

declare dso_local i64 @json_object_get_type(%struct.json_object*) #1

declare dso_local i32 @json_object_put(%struct.json_object*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @json_tokener_reset(%struct.TYPE_4__*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_tokener_error_desc(i32) #1

declare dso_local i32 @i3bar_parse_json(%struct.status_line*, %struct.json_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
