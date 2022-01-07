; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_ITERATE_MoveFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_ITERATE_MoveFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INSTALLSTATE_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"component not scheduled for installation %s\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@szBackSlash = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to create directory %u\0A\00", align 1
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ITERATE_MoveFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_MoveFiles(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %6, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %21, i32 2)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.TYPE_21__* @msi_get_loaded_component(%struct.TYPE_20__* %23, i8* %24)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %8, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %273

30:                                               ; preds = %2
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = call i64 @msi_get_component_action(%struct.TYPE_20__* %31, %struct.TYPE_21__* %32)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INSTALLSTATE_LOCAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @debugstr_w(i8* %42)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %45, i32* %3, align 4
  br label %273

46:                                               ; preds = %30
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %47, i32 3)
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 @MSI_RecordGetInteger(%struct.TYPE_19__* %49, i32 7)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %54, i32 5)
  %56 = call i8* @msi_dup_property(i32 %53, i8* %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %244

60:                                               ; preds = %46
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %64, i32 6)
  %66 = call i8* @msi_dup_property(i32 %63, i8* %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %244

70:                                               ; preds = %60
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = call i64 @GetFileAttributesW(i8* %74)
  %76 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %244

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = call i8* @strdupW(i8* %80)
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %244

85:                                               ; preds = %79
  br label %122

86:                                               ; preds = %70
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @lstrlenW(i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @lstrlenW(i8* %89)
  %91 = add nsw i32 %88, %90
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i8* @msi_alloc(i32 %96)
  store i8* %97, i8** %14, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %86
  br label %244

101:                                              ; preds = %86
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @lstrcpyW(i8* %102, i8* %103)
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @lstrlenW(i8* %106)
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 92
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** @szBackSlash, align 8
  %117 = call i32 @lstrcatW(i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %114, %101
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @lstrcatW(i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %118, %85
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @strchrW(i8* %123, i8 signext 42)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %14, align 8
  %128 = call i64 @strchrW(i8* %127, i8 signext 63)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ true, %122 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %18, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = call i64 @MSI_RecordIsNull(%struct.TYPE_19__* %133, i32 4)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %130
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  %144 = call i8* @strdupW(i8* %143)
  store i8* %144, i8** %12, align 8
  br label %157

145:                                              ; preds = %139
  %146 = load i8*, i8** %11, align 8
  %147 = call i8* @strrchrW(i8* %146, i8 signext 92)
  store i8* %147, i8** %19, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8*, i8** %19, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = call i8* @strdupW(i8* %151)
  store i8* %152, i8** %12, align 8
  br label %156

153:                                              ; preds = %145
  %154 = load i8*, i8** %11, align 8
  %155 = call i8* @strdupW(i8* %154)
  store i8* %155, i8** %12, align 8
  br label %156

156:                                              ; preds = %153, %149
  br label %157

157:                                              ; preds = %156, %142
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %244

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %136
  br label %173

163:                                              ; preds = %130
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %165 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %164, i32 4)
  %166 = call i8* @strdupW(i8* %165)
  store i8* %166, i8** %12, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @msi_reduce_to_long_filename(i8* %170)
  br label %172

172:                                              ; preds = %169, %163
  br label %173

173:                                              ; preds = %172, %162
  store i32 0, i32* %17, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 @lstrlenW(i8* %177)
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 @lstrlenW(i8* %180)
  %182 = add nsw i32 %181, 2
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call i8* @msi_alloc(i32 %188)
  store i8* %189, i8** %15, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %179
  br label %244

193:                                              ; preds = %179
  %194 = load i8*, i8** %15, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @lstrcpyW(i8* %194, i8* %195)
  %197 = load i8*, i8** %15, align 8
  %198 = load i8*, i8** %15, align 8
  %199 = call i32 @lstrlenW(i8* %198)
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 92
  br i1 %205, label %206, label %210

206:                                              ; preds = %193
  %207 = load i8*, i8** %15, align 8
  %208 = load i8*, i8** @szBackSlash, align 8
  %209 = call i32 @lstrcatW(i8* %207, i8* %208)
  br label %210

210:                                              ; preds = %206, %193
  %211 = load i8*, i8** %12, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** %15, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = call i32 @lstrcatW(i8* %214, i8* %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i8*, i8** %13, align 8
  %219 = call i64 @GetFileAttributesW(i8* %218)
  %220 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load i8*, i8** %13, align 8
  %224 = call i32 @msi_create_full_path(i8* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = call i32 (...) @GetLastError()
  %228 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  br label %244

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %229, %217
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load i8*, i8** %14, align 8
  %235 = load i8*, i8** %15, align 8
  %236 = load i32, i32* %16, align 4
  %237 = call i32 @msi_move_file(i8* %234, i8* %235, i32 %236)
  br label %243

238:                                              ; preds = %230
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %15, align 8
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @move_files_wildcard(i8* %239, i8* %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %233
  br label %244

244:                                              ; preds = %243, %226, %192, %160, %100, %84, %78, %69, %59
  %245 = call %struct.TYPE_19__* @MSI_CreateRecord(i32 9)
  store %struct.TYPE_19__* %245, %struct.TYPE_19__** %7, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %248 = call i8* @MSI_RecordGetString(%struct.TYPE_19__* %247, i32 1)
  %249 = call i32 @MSI_RecordSetStringW(%struct.TYPE_19__* %246, i32 1, i8* %248)
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %251 = call i32 @MSI_RecordSetInteger(%struct.TYPE_19__* %250, i32 6, i32 1)
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = call i32 @MSI_RecordSetStringW(%struct.TYPE_19__* %252, i32 9, i8* %253)
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %256 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %258 = call i32 @MSI_ProcessMessage(%struct.TYPE_20__* %255, i32 %256, %struct.TYPE_19__* %257)
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = call i32 @msiobj_release(i32* %260)
  %262 = load i8*, i8** %11, align 8
  %263 = call i32 @msi_free(i8* %262)
  %264 = load i8*, i8** %13, align 8
  %265 = call i32 @msi_free(i8* %264)
  %266 = load i8*, i8** %12, align 8
  %267 = call i32 @msi_free(i8* %266)
  %268 = load i8*, i8** %14, align 8
  %269 = call i32 @msi_free(i8* %268)
  %270 = load i8*, i8** %15, align 8
  %271 = call i32 @msi_free(i8* %270)
  %272 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %244, %41, %28
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i8* @MSI_RecordGetString(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @msi_get_loaded_component(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @msi_get_component_action(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @msi_dup_property(i32, i8*) #1

declare dso_local i64 @GetFileAttributesW(i8*) #1

declare dso_local i8* @strdupW(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @strchrW(i8*, i8 signext) #1

declare dso_local i64 @MSI_RecordIsNull(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @msi_reduce_to_long_filename(i8*) #1

declare dso_local i32 @msi_create_full_path(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @msi_move_file(i8*, i8*, i32) #1

declare dso_local i32 @move_files_wildcard(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_20__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
