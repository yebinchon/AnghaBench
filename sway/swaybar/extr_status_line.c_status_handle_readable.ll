; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_status_line.c_status_handle_readable.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_status_line.c_status_handle_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_line = type { i32, i64, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@FIONREAD = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to read status command output size\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[error reading from status command]\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to read status line\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Using i3bar protocol.\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"click_events\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Enabling click events.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"[failed to write to status command]\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"stop_signal\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Setting stop signal to %d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"cont_signal\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Setting cont signal to %d\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Using text protocol.\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_handle_readable(%struct.status_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.status_line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.status_line* %0, %struct.status_line** %3, align 8
  store i32 1, i32* %4, align 4
  %11 = load %struct.status_line*, %struct.status_line** %3, align 8
  %12 = getelementptr inbounds %struct.status_line, %struct.status_line* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %243 [
    i32 128, label %14
    i32 129, label %194
    i32 130, label %240
  ]

14:                                               ; preds = %1
  store i32 0, i32* @errno, align 4
  %15 = load %struct.status_line*, %struct.status_line** %3, align 8
  %16 = getelementptr inbounds %struct.status_line, %struct.status_line* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FIONREAD, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, i32* %5)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @SWAY_ERROR, align 4
  %23 = call i32 (i32, i8*, ...) @sway_log(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.status_line*, %struct.status_line** %3, align 8
  %25 = call i32 @status_error(%struct.status_line* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %244

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 1
  %30 = load %struct.status_line*, %struct.status_line** %3, align 8
  %31 = getelementptr inbounds %struct.status_line, %struct.status_line* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load %struct.status_line*, %struct.status_line** %3, align 8
  %39 = getelementptr inbounds %struct.status_line, %struct.status_line* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.status_line*, %struct.status_line** %3, align 8
  %41 = getelementptr inbounds %struct.status_line, %struct.status_line* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.status_line*, %struct.status_line** %3, align 8
  %44 = getelementptr inbounds %struct.status_line, %struct.status_line* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i8* @realloc(i8* %42, i32 %46)
  %48 = load %struct.status_line*, %struct.status_line** %3, align 8
  %49 = getelementptr inbounds %struct.status_line, %struct.status_line* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %34, %26
  %51 = load %struct.status_line*, %struct.status_line** %3, align 8
  %52 = getelementptr inbounds %struct.status_line, %struct.status_line* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @SWAY_ERROR, align 4
  %57 = call i32 @sway_log_errno(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.status_line*, %struct.status_line** %3, align 8
  %59 = call i32 @status_error(%struct.status_line* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %244

60:                                               ; preds = %50
  %61 = load %struct.status_line*, %struct.status_line** %3, align 8
  %62 = getelementptr inbounds %struct.status_line, %struct.status_line* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.status_line*, %struct.status_line** %3, align 8
  %65 = getelementptr inbounds %struct.status_line, %struct.status_line* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @read(i32 %63, i8* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load %struct.status_line*, %struct.status_line** %3, align 8
  %74 = call i32 @status_error(%struct.status_line* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %244

75:                                               ; preds = %60
  %76 = load %struct.status_line*, %struct.status_line** %3, align 8
  %77 = getelementptr inbounds %struct.status_line, %struct.status_line* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.status_line*, %struct.status_line** %3, align 8
  %83 = getelementptr inbounds %struct.status_line, %struct.status_line* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 10)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %184

88:                                               ; preds = %75
  %89 = load %struct.status_line*, %struct.status_line** %3, align 8
  %90 = getelementptr inbounds %struct.status_line, %struct.status_line* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32* @json_tokener_parse(i8* %91)
  store i32* %92, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %184

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @json_object_object_get_ex(i32* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32** %8)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %184

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @json_object_get_int(i32* %99)
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %184

102:                                              ; preds = %98
  %103 = load i32, i32* @SWAY_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @sway_log(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.status_line*, %struct.status_line** %3, align 8
  %106 = getelementptr inbounds %struct.status_line, %struct.status_line* %105, i32 0, i32 0
  store i32 130, i32* %106, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @json_object_object_get_ex(i32* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32** %9)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %102
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @json_object_get_boolean(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i32, i32* @SWAY_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @sway_log(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.status_line*, %struct.status_line** %3, align 8
  %118 = getelementptr inbounds %struct.status_line, %struct.status_line* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  %119 = load %struct.status_line*, %struct.status_line** %3, align 8
  %120 = getelementptr inbounds %struct.status_line, %struct.status_line* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @write(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.status_line*, %struct.status_line** %3, align 8
  %126 = call i32 @status_error(%struct.status_line* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @json_object_put(i32* %127)
  store i32 1, i32* %2, align 4
  br label %244

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %110, %102
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @json_object_object_get_ex(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32** %10)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @json_object_get_int(i32* %135)
  %137 = load %struct.status_line*, %struct.status_line** %3, align 8
  %138 = getelementptr inbounds %struct.status_line, %struct.status_line* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @SWAY_DEBUG, align 4
  %140 = load %struct.status_line*, %struct.status_line** %3, align 8
  %141 = getelementptr inbounds %struct.status_line, %struct.status_line* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @sway_log(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %134, %130
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @json_object_object_get_ex(i32* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32** %10)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @json_object_get_int(i32* %149)
  %151 = load %struct.status_line*, %struct.status_line** %3, align 8
  %152 = getelementptr inbounds %struct.status_line, %struct.status_line* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @SWAY_DEBUG, align 4
  %154 = load %struct.status_line*, %struct.status_line** %3, align 8
  %155 = getelementptr inbounds %struct.status_line, %struct.status_line* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @sway_log(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %148, %144
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @json_object_put(i32* %159)
  %161 = load %struct.status_line*, %struct.status_line** %3, align 8
  %162 = getelementptr inbounds %struct.status_line, %struct.status_line* %161, i32 0, i32 10
  %163 = call i32 @wl_list_init(i32* %162)
  %164 = call i32 (...) @json_tokener_new()
  %165 = load %struct.status_line*, %struct.status_line** %3, align 8
  %166 = getelementptr inbounds %struct.status_line, %struct.status_line* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = call i32 @strlen(i8* %168)
  %170 = load %struct.status_line*, %struct.status_line** %3, align 8
  %171 = getelementptr inbounds %struct.status_line, %struct.status_line* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 4
  %172 = load %struct.status_line*, %struct.status_line** %3, align 8
  %173 = getelementptr inbounds %struct.status_line, %struct.status_line* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load %struct.status_line*, %struct.status_line** %3, align 8
  %178 = getelementptr inbounds %struct.status_line, %struct.status_line* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i32 @memmove(i8* %174, i8* %176, i32 %180)
  %182 = load %struct.status_line*, %struct.status_line** %3, align 8
  %183 = call i32 @i3bar_handle_readable(%struct.status_line* %182)
  store i32 %183, i32* %2, align 4
  br label %244

184:                                              ; preds = %98, %94, %88, %75
  %185 = load i32, i32* @SWAY_DEBUG, align 4
  %186 = call i32 (i32, i8*, ...) @sway_log(i32 %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %187 = load %struct.status_line*, %struct.status_line** %3, align 8
  %188 = getelementptr inbounds %struct.status_line, %struct.status_line* %187, i32 0, i32 0
  store i32 129, i32* %188, align 8
  %189 = load %struct.status_line*, %struct.status_line** %3, align 8
  %190 = getelementptr inbounds %struct.status_line, %struct.status_line* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.status_line*, %struct.status_line** %3, align 8
  %193 = getelementptr inbounds %struct.status_line, %struct.status_line* %192, i32 0, i32 6
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %1, %184
  store i32 0, i32* @errno, align 4
  br label %195

195:                                              ; preds = %194, %239
  %196 = load %struct.status_line*, %struct.status_line** %3, align 8
  %197 = getelementptr inbounds %struct.status_line, %struct.status_line* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 10
  br i1 %205, label %206, label %214

206:                                              ; preds = %195
  %207 = load %struct.status_line*, %struct.status_line** %3, align 8
  %208 = getelementptr inbounds %struct.status_line, %struct.status_line* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  store i8 0, i8* %213, align 1
  br label %214

214:                                              ; preds = %206, %195
  %215 = load %struct.status_line*, %struct.status_line** %3, align 8
  %216 = getelementptr inbounds %struct.status_line, %struct.status_line* %215, i32 0, i32 2
  %217 = load %struct.status_line*, %struct.status_line** %3, align 8
  %218 = getelementptr inbounds %struct.status_line, %struct.status_line* %217, i32 0, i32 1
  %219 = bitcast i64* %218 to i32*
  %220 = load %struct.status_line*, %struct.status_line** %3, align 8
  %221 = getelementptr inbounds %struct.status_line, %struct.status_line* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @getline(i8** %216, i32* %219, i32 %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* @errno, align 4
  %225 = load i32, i32* @EAGAIN, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %214
  %228 = load %struct.status_line*, %struct.status_line** %3, align 8
  %229 = getelementptr inbounds %struct.status_line, %struct.status_line* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @clearerr(i32 %230)
  store i32 1, i32* %2, align 4
  br label %244

232:                                              ; preds = %214
  %233 = load i32, i32* @errno, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.status_line*, %struct.status_line** %3, align 8
  %237 = call i32 @status_error(%struct.status_line* %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %244

238:                                              ; preds = %232
  br label %239

239:                                              ; preds = %238
  br label %195

240:                                              ; preds = %1
  %241 = load %struct.status_line*, %struct.status_line** %3, align 8
  %242 = call i32 @i3bar_handle_readable(%struct.status_line* %241)
  store i32 %242, i32* %2, align 4
  br label %244

243:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %243, %240, %235, %227, %158, %124, %72, %55, %21
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @status_error(%struct.status_line*, i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @json_tokener_parse(i8*) #1

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i32 @json_object_get_int(i32*) #1

declare dso_local i32 @json_object_get_boolean(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @json_object_put(i32*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @json_tokener_new(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @i3bar_handle_readable(%struct.status_line*) #1

declare dso_local i32 @getline(i8**, i32*, i32) #1

declare dso_local i32 @clearerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
