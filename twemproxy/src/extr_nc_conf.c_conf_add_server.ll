; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_add_server.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_add_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.command = type { i32 }
%struct.array = type { i32 }
%struct.string = type { i8*, i32 }
%struct.conf_server = type { i32, i32, i32, i8*, i8*, i32 }

@__const.conf_add_server.delim = private unnamed_addr constant [4 x i8] c" ::\00", align 1
@CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [95 x i8] c"has an invalid \22hostname:port:weight [name]\22or \22/path/unix_socket:weight [name]\22 format string\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"has an invalid weight in \22hostname:port:weight [name]\22 format string\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"has a zero weight in \22hostname:port:weight [name]\22 format string\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"has an invalid port in \22hostname:port:weight [name]\22 format string\00", align 1
@CONF_DEFAULT_KETAMA_PORT = common dso_local global i8* null, align 8
@CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_add_server(%struct.conf* %0, %struct.command* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.array*, align 8
  %10 = alloca %struct.string*, align 8
  %11 = alloca %struct.conf_server*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [4 x i8], align 1
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store i8* %2, i8** %7, align 8
  %28 = bitcast [4 x i8]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.conf_add_server.delim, i32 0, i32 0), i64 4, i1 false)
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.command*, %struct.command** %6, align 8
  %32 = getelementptr inbounds %struct.command, %struct.command* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to %struct.array*
  store %struct.array* %36, %struct.array** %9, align 8
  %37 = load %struct.array*, %struct.array** %9, align 8
  %38 = call %struct.conf_server* @array_push(%struct.array* %37)
  store %struct.conf_server* %38, %struct.conf_server** %11, align 8
  %39 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %40 = icmp eq %struct.conf_server* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %42, i8** %4, align 8
  br label %262

43:                                               ; preds = %3
  %44 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %45 = call i32 @conf_server_init(%struct.conf_server* %44)
  %46 = load %struct.conf*, %struct.conf** %5, align 8
  %47 = getelementptr inbounds %struct.conf, %struct.conf* %46, i32 0, i32 0
  %48 = call %struct.string* @array_top(i32* %47)
  store %struct.string* %48, %struct.string** %10, align 8
  %49 = load %struct.string*, %struct.string** %10, align 8
  %50 = getelementptr inbounds %struct.string, %struct.string* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.string*, %struct.string** %10, align 8
  %53 = getelementptr inbounds %struct.string, %struct.string* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  store i8* %57, i8** %12, align 8
  %58 = load %struct.string*, %struct.string** %10, align 8
  %59 = getelementptr inbounds %struct.string, %struct.string* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %25, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %24, align 4
  store i8* null, i8** %19, align 8
  store i32 0, i32* %26, align 4
  %61 = load %struct.string*, %struct.string** %10, align 8
  %62 = getelementptr inbounds %struct.string, %struct.string* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 3
  store i32 %69, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %126, %43
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i8* @nc_strrchr(i8* %75, i8* %76, i8 signext %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* %20, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %126

88:                                               ; preds = %84
  br label %129

89:                                               ; preds = %74
  %90 = load i32, i32* %20, align 4
  switch i32 %90, label %121 [
    i32 0, label %91
    i32 1, label %101
    i32 2, label %111
  ]

91:                                               ; preds = %89
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %93, i8** %19, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = add nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %26, align 4
  br label %123

101:                                              ; preds = %89
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = add nsw i64 %108, 1
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %25, align 4
  br label %123

111:                                              ; preds = %89
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %17, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = add nsw i64 %118, 1
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %24, align 4
  br label %123

121:                                              ; preds = %89
  %122 = call i32 (...) @NOT_REACHED()
  br label %123

123:                                              ; preds = %121, %111, %101, %91
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 -1
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %123, %87
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %70

129:                                              ; preds = %88, %70
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %262

134:                                              ; preds = %129
  %135 = load %struct.string*, %struct.string** %10, align 8
  %136 = getelementptr inbounds %struct.string, %struct.string* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %15, align 8
  %138 = load i32, i32* %26, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.string*, %struct.string** %10, align 8
  %142 = getelementptr inbounds %struct.string, %struct.string* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %26, align 4
  %145 = add nsw i32 %144, 1
  %146 = sub nsw i32 %143, %145
  br label %151

147:                                              ; preds = %134
  %148 = load %struct.string*, %struct.string** %10, align 8
  %149 = getelementptr inbounds %struct.string, %struct.string* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  br label %151

151:                                              ; preds = %147, %140
  %152 = phi i32 [ %146, %140 ], [ %150, %147 ]
  store i32 %152, i32* %22, align 4
  %153 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %154 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %153, i32 0, i32 5
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* %22, align 4
  %157 = call i64 @string_copy(i32* %154, i8* %155, i32 %156)
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @NC_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = load %struct.array*, %struct.array** %9, align 8
  %163 = call i32 @array_pop(%struct.array* %162)
  %164 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %164, i8** %4, align 8
  br label %262

165:                                              ; preds = %151
  %166 = load i8*, i8** %14, align 8
  store i8* %166, i8** %16, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = add nsw i64 %171, 1
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %23, align 4
  %174 = load i8*, i8** %18, align 8
  %175 = load i32, i32* %25, align 4
  %176 = call i8* @nc_atoi(i8* %174, i32 %175)
  %177 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %178 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  %179 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %180 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ult i8* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %165
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %262

184:                                              ; preds = %165
  %185 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %186 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %262

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.string*, %struct.string** %10, align 8
  %193 = getelementptr inbounds %struct.string, %struct.string* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 47
  br i1 %198, label %199, label %217

199:                                              ; preds = %191
  %200 = load i8*, i8** %17, align 8
  %201 = load i32, i32* %24, align 4
  %202 = call i8* @nc_atoi(i8* %200, i32 %201)
  %203 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %204 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %206 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %205, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ult i8* %207, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %199
  %210 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %211 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @nc_valid_port(i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %209, %199
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %262

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %191
  %218 = load i8*, i8** %19, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %236

220:                                              ; preds = %217
  %221 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %222 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %221, i32 0, i32 3
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** @CONF_DEFAULT_KETAMA_PORT, align 8
  %225 = icmp eq i8* %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i8*, i8** %16, align 8
  store i8* %227, i8** %19, align 8
  %228 = load i32, i32* %23, align 4
  store i32 %228, i32* %26, align 4
  br label %235

229:                                              ; preds = %220
  %230 = load i8*, i8** %16, align 8
  store i8* %230, i8** %19, align 8
  %231 = load i32, i32* %23, align 4
  %232 = add nsw i32 %231, 1
  %233 = load i32, i32* %24, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %26, align 4
  br label %235

235:                                              ; preds = %229, %226
  br label %236

236:                                              ; preds = %235, %217
  %237 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %238 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %237, i32 0, i32 2
  %239 = load i8*, i8** %19, align 8
  %240 = load i32, i32* %26, align 4
  %241 = call i64 @string_copy(i32* %238, i8* %239, i32 %240)
  store i64 %241, i64* %8, align 8
  %242 = load i64, i64* %8, align 8
  %243 = load i64, i64* @NC_OK, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %246, i8** %4, align 8
  br label %262

247:                                              ; preds = %236
  %248 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %249 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %248, i32 0, i32 1
  %250 = load i8*, i8** %16, align 8
  %251 = load i32, i32* %23, align 4
  %252 = call i64 @string_copy(i32* %249, i8* %250, i32 %251)
  store i64 %252, i64* %8, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* @NC_OK, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %247
  %257 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %257, i8** %4, align 8
  br label %262

258:                                              ; preds = %247
  %259 = load %struct.conf_server*, %struct.conf_server** %11, align 8
  %260 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load i8*, i8** @CONF_OK, align 8
  store i8* %261, i8** %4, align 8
  br label %262

262:                                              ; preds = %258, %256, %245, %215, %189, %183, %161, %133, %41
  %263 = load i8*, i8** %4, align 8
  ret i8* %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.conf_server* @array_push(%struct.array*) #2

declare dso_local i32 @conf_server_init(%struct.conf_server*) #2

declare dso_local %struct.string* @array_top(i32*) #2

declare dso_local i8* @nc_strrchr(i8*, i8*, i8 signext) #2

declare dso_local i32 @NOT_REACHED(...) #2

declare dso_local i64 @string_copy(i32*, i8*, i32) #2

declare dso_local i32 @array_pop(%struct.array*) #2

declare dso_local i8* @nc_atoi(i8*, i32) #2

declare dso_local i32 @nc_valid_port(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
