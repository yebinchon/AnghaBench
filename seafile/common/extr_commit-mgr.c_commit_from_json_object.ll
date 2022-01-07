; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_commit_from_json_object.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_commit_from_json_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"root_id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"creator_name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"parent_id\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"second_parent_id\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"repo_name\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"repo_desc\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"repo_category\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"device_name\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"client_version\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"enc_version\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"no_local_history\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"new_merge\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"repaired\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Unknown encryption version %d.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i32*)* @commit_from_json_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @commit_from_json_object(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @json_object_get_string_member(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @json_object_get_string_member(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @json_object_has_member(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @json_object_get_string_or_null_member(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @json_object_get_string_member(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %43, i8** %10, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @json_object_get_string_member(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @json_object_get_int_member(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %12, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @json_object_get_string_or_null_member(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %54, i8** %13, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @json_object_get_string_or_null_member(i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i8* %56, i8** %14, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @json_object_get_string_member(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @json_object_get_string_member(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @json_object_get_string_or_null_member(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i8* %70, i8** %17, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i8* @json_object_get_string_or_null_member(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i8* %72, i8** %18, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i8* @json_object_get_string_or_null_member(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i8* %74, i8** %19, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @json_object_has_member(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @json_object_get_string_or_null_member(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i8* %80, i8** %20, align 8
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i8*, i8** %20, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %20, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @json_object_has_member(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @json_object_get_int_member(i32* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  store i32 %94, i32* %21, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* @json_object_get_string_member(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  store i8* %96, i8** %22, align 8
  br label %97

97:                                               ; preds = %92, %88, %84, %81
  %98 = load i32, i32* %21, align 4
  %99 = icmp sge i32 %98, 2
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %5, align 8
  %102 = call i8* @json_object_get_string_member(i32* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  store i8* %102, i8** %23, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %21, align 4
  %105 = icmp sge i32 %104, 3
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @json_object_get_string_member(i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i8* %108, i8** %24, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %5, align 8
  %111 = call i64 @json_object_has_member(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @json_object_get_int_member(i32* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  store i32 %115, i32* %25, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i32*, i32** %5, align 8
  %118 = call i64 @json_object_has_member(i32* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @json_object_get_int_member(i32* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  store i32 %122, i32* %26, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 @json_object_has_member(i32* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @json_object_get_int_member(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  store i32 %129, i32* %28, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32*, i32** %5, align 8
  %132 = call i64 @json_object_has_member(i32* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @json_object_get_int_member(i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  store i32 %136, i32* %27, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32*, i32** %5, align 8
  %139 = call i64 @json_object_has_member(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @json_object_get_int_member(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  store i32 %143, i32* %29, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %179

147:                                              ; preds = %144
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @is_uuid_valid(i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %179

154:                                              ; preds = %151
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @is_object_id_valid(i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load i8*, i8** %10, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = icmp ne i32 %163, 40
  br i1 %164, label %179, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @is_object_id_valid(i8* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %168, %165
  %173 = load i8*, i8** %14, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @is_object_id_valid(i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175, %168, %161, %158, %154, %151, %147, %144
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %180, %struct.TYPE_4__** %3, align 8
  br label %381

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %21, align 4
  switch i32 %182, label %235 [
    i32 0, label %183
    i32 1, label %184
    i32 2, label %193
    i32 3, label %210
  ]

183:                                              ; preds = %181
  br label %238

184:                                              ; preds = %181
  %185 = load i8*, i8** %22, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %22, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = icmp ne i32 %189, 32
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %184
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

192:                                              ; preds = %187
  br label %238

193:                                              ; preds = %181
  %194 = load i8*, i8** %22, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i8*, i8** %22, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = icmp ne i32 %198, 64
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %193
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

201:                                              ; preds = %196
  %202 = load i8*, i8** %23, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i8*, i8** %23, align 8
  %206 = call i32 @strlen(i8* %205)
  %207 = icmp ne i32 %206, 96
  br i1 %207, label %208, label %209

208:                                              ; preds = %204, %201
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

209:                                              ; preds = %204
  br label %238

210:                                              ; preds = %181
  %211 = load i8*, i8** %22, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** %22, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = icmp ne i32 %215, 64
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %210
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

218:                                              ; preds = %213
  %219 = load i8*, i8** %23, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i8*, i8** %23, align 8
  %223 = call i32 @strlen(i8* %222)
  %224 = icmp ne i32 %223, 96
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %218
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

226:                                              ; preds = %221
  %227 = load i8*, i8** %24, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i8*, i8** %24, align 8
  %231 = call i32 @strlen(i8* %230)
  %232 = icmp ne i32 %231, 64
  br i1 %232, label %233, label %234

233:                                              ; preds = %229, %226
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

234:                                              ; preds = %229
  br label %238

235:                                              ; preds = %181
  %236 = load i32, i32* %21, align 4
  %237 = call i32 @seaf_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 %236)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %381

238:                                              ; preds = %234, %209, %192, %183
  %239 = load i8*, i8** %9, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i8*, i8** %9, align 8
  %243 = call i8* @g_ascii_strdown(i8* %242, i32 -1)
  br label %245

244:                                              ; preds = %238
  br label %245

245:                                              ; preds = %244, %241
  %246 = phi i8* [ %243, %241 ], [ null, %244 ]
  store i8* %246, i8** %30, align 8
  %247 = load i8*, i8** %4, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = load i8*, i8** %30, align 8
  %251 = load i8*, i8** %10, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = load i64, i64* %12, align 8
  %254 = call %struct.TYPE_4__* @seaf_commit_new(i8* %247, i8* %248, i8* %249, i8* %250, i8* %251, i8* %252, i64 %253)
  store %struct.TYPE_4__* %254, %struct.TYPE_4__** %6, align 8
  %255 = load i8*, i8** %30, align 8
  %256 = call i32 @g_free(i8* %255)
  %257 = load i8*, i8** %13, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %245
  %260 = load i8*, i8** %13, align 8
  %261 = call i32* @g_strdup(i8* %260)
  br label %263

262:                                              ; preds = %245
  br label %263

263:                                              ; preds = %262, %259
  %264 = phi i32* [ %261, %259 ], [ null, %262 ]
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 16
  store i32* %264, i32** %266, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load i8*, i8** %14, align 8
  %271 = call i32* @g_strdup(i8* %270)
  br label %273

272:                                              ; preds = %263
  br label %273

273:                                              ; preds = %272, %269
  %274 = phi i32* [ %271, %269 ], [ null, %272 ]
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 15
  store i32* %274, i32** %276, align 8
  %277 = load i8*, i8** %15, align 8
  %278 = call i32* @g_strdup(i8* %277)
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 14
  store i32* %278, i32** %280, align 8
  %281 = load i8*, i8** %16, align 8
  %282 = call i32* @g_strdup(i8* %281)
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 13
  store i32* %282, i32** %284, align 8
  %285 = load i8*, i8** %20, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %295

287:                                              ; preds = %273
  %288 = load i8*, i8** %20, align 8
  %289 = call i64 @strcmp(i8* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i8*, i8** @TRUE, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 9
  store i8* %292, i8** %294, align 8
  br label %299

295:                                              ; preds = %287, %273
  %296 = load i8*, i8** @FALSE, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 9
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %295, %291
  %300 = load i8*, i8** %17, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %299
  %303 = load i8*, i8** %17, align 8
  %304 = call i32* @g_strdup(i8* %303)
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 12
  store i32* %304, i32** %306, align 8
  br label %307

307:                                              ; preds = %302, %299
  %308 = load i8*, i8** %18, align 8
  %309 = call i32* @g_strdup(i8* %308)
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 11
  store i32* %309, i32** %311, align 8
  %312 = load i8*, i8** %19, align 8
  %313 = call i32* @g_strdup(i8* %312)
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 10
  store i32* %313, i32** %315, align 8
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 9
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %348

320:                                              ; preds = %307
  %321 = load i32, i32* %21, align 4
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* %21, align 4
  %325 = icmp sge i32 %324, 1
  br i1 %325, label %326, label %331

326:                                              ; preds = %320
  %327 = load i8*, i8** %22, align 8
  %328 = call i32* @g_strdup(i8* %327)
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 8
  store i32* %328, i32** %330, align 8
  br label %331

331:                                              ; preds = %326, %320
  %332 = load i32, i32* %21, align 4
  %333 = icmp sge i32 %332, 2
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = load i8*, i8** %23, align 8
  %336 = call i32* @g_strdup(i8* %335)
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 7
  store i32* %336, i32** %338, align 8
  br label %339

339:                                              ; preds = %334, %331
  %340 = load i32, i32* %21, align 4
  %341 = icmp sge i32 %340, 3
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load i8*, i8** %24, align 8
  %344 = call i32* @g_strdup(i8* %343)
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 6
  store i32* %344, i32** %346, align 8
  br label %347

347:                                              ; preds = %342, %339
  br label %348

348:                                              ; preds = %347, %307
  %349 = load i32, i32* %25, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = load i8*, i8** @TRUE, align 8
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 5
  store i8* %352, i8** %354, align 8
  br label %355

355:                                              ; preds = %351, %348
  %356 = load i32, i32* %26, align 4
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %28, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i8*, i8** @TRUE, align 8
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 4
  store i8* %362, i8** %364, align 8
  br label %365

365:                                              ; preds = %361, %355
  %366 = load i32, i32* %27, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load i8*, i8** @TRUE, align 8
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 3
  store i8* %369, i8** %371, align 8
  br label %372

372:                                              ; preds = %368, %365
  %373 = load i32, i32* %29, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i8*, i8** @TRUE, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 2
  store i8* %376, i8** %378, align 8
  br label %379

379:                                              ; preds = %375, %372
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %380, %struct.TYPE_4__** %3, align 8
  br label %381

381:                                              ; preds = %379, %235, %233, %225, %217, %208, %200, %191, %179
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %382
}

declare dso_local i8* @json_object_get_string_member(i32*, i8*) #1

declare dso_local i64 @json_object_has_member(i32*, i8*) #1

declare dso_local i8* @json_object_get_string_or_null_member(i32*, i8*) #1

declare dso_local i32 @json_object_get_int_member(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i8* @g_ascii_strdown(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @seaf_commit_new(i8*, i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
