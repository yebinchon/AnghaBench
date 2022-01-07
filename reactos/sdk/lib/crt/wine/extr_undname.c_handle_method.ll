; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_handle_method.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_handle_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8*, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.datatype_t = type { i8*, i32* }
%struct.array = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"private: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"protected: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"public: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[thunk]:%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@UNDNAME_NO_ACCESS_SPECIFIERS = common dso_local global i32 0, align 4
@UNDNAME_NO_MEMBER_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s{%s,{flat}}' }'\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s`vtordispex{%s,%s,%s,%s}' \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s`vtordisp{%s,%s}' \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s`adjustor{%s}' \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@UNDNAME_NO_FUNCTION_RETURNS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@UNDNAME_NAME_ONLY = common dso_local global i32 0, align 4
@UNDNAME_NO_THISTYPE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parsed_symbol*, i64)* @handle_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_method(%struct.parsed_symbol* %0, i64 %1) #0 {
  %3 = alloca %struct.parsed_symbol*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.datatype_t, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.array, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %17, align 8
  %31 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %32 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %5, align 1
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 36
  br i1 %38, label %39, label %88

39:                                               ; preds = %2
  %40 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %41 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 48
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %48 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 53
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %55 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %7, align 4
  br label %87

61:                                               ; preds = %46, %39
  %62 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %63 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 82
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %70 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %7, align 4
  br label %86

77:                                               ; preds = %61
  %78 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %79 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 66
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %477

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %53
  br label %103

88:                                               ; preds = %2
  %89 = load i8, i8* %5, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 65
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i8, i8* %5, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 90
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i8, i8* %5, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 65
  %100 = sdiv i32 %99, 8
  store i32 %100, i32* %7, align 4
  br label %102

101:                                              ; preds = %92, %88
  br label %477

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %108 [
    i32 0, label %105
    i32 1, label %106
    i32 2, label %107
  ]

105:                                              ; preds = %103
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %108

106:                                              ; preds = %103
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %108

107:                                              ; preds = %103
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %108

108:                                              ; preds = %103, %107, %106, %105
  %109 = load i8, i8* %5, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 36
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = load i8, i8* %5, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 65
  %116 = srem i32 %115, 8
  %117 = icmp eq i32 %116, 6
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load i8, i8* %5, align 1
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 65
  %122 = srem i32 %121, 8
  %123 = icmp eq i32 %122, 7
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %112, %108
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  br label %131

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i8* [ %129, %128 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %130 ]
  %133 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  store i8* %133, i8** %6, align 8
  br label %134

134:                                              ; preds = %131, %118
  %135 = load i8, i8* %5, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 36
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %140 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 66
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %159

146:                                              ; preds = %138, %134
  %147 = load i8, i8* %5, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sle i32 %148, 88
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load i8, i8* %5, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 65
  %154 = srem i32 %153, 8
  switch i32 %154, label %157 [
    i32 2, label %155
    i32 3, label %155
    i32 4, label %156
    i32 5, label %156
    i32 6, label %156
    i32 7, label %156
  ]

155:                                              ; preds = %150, %150
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %157

156:                                              ; preds = %150, %150, %150, %150
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %157

157:                                              ; preds = %150, %156, %155
  br label %158

158:                                              ; preds = %157, %146
  br label %159

159:                                              ; preds = %158, %145
  %160 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %161 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @UNDNAME_NO_ACCESS_SPECIFIERS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i8* null, i8** %6, align 8
  br label %167

167:                                              ; preds = %166, %159
  %168 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %169 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @UNDNAME_NO_MEMBER_TYPE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i8* null, i8** %8, align 8
  br label %175

175:                                              ; preds = %174, %167
  %176 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %177 = call i8* @get_class_string(%struct.parsed_symbol* %176, i32 0)
  store i8* %177, i8** %14, align 8
  %178 = load i8, i8* %5, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 36
  br i1 %180, label %181, label %213

181:                                              ; preds = %175
  %182 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %183 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 66
  br i1 %187, label %188, label %213

188:                                              ; preds = %181
  %189 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %190 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %190, align 8
  %193 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %194 = call i8* @get_number(%struct.parsed_symbol* %193)
  store i8* %194, i8** %20, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %188
  %198 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %199 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %199, align 8
  %202 = load i8, i8* %200, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 65
  br i1 %204, label %205, label %206

205:                                              ; preds = %197, %188
  br label %477

206:                                              ; preds = %197
  %207 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %20, align 8
  %210 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %208, i8* %209)
  store i8* %210, i8** %14, align 8
  %211 = load i64, i64* @FALSE, align 8
  store i64 %211, i64* %16, align 8
  %212 = load i64, i64* @FALSE, align 8
  store i64 %212, i64* %17, align 8
  br label %303

213:                                              ; preds = %181, %175
  %214 = load i8, i8* %5, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 36
  br i1 %216, label %217, label %257

217:                                              ; preds = %213
  %218 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %219 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 82
  br i1 %223, label %224, label %257

224:                                              ; preds = %217
  %225 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %226 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  store i8* %228, i8** %226, align 8
  %229 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %230 = call i8* @get_number(%struct.parsed_symbol* %229)
  store i8* %230, i8** %21, align 8
  %231 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %232 = call i8* @get_number(%struct.parsed_symbol* %231)
  store i8* %232, i8** %22, align 8
  %233 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %234 = call i8* @get_number(%struct.parsed_symbol* %233)
  store i8* %234, i8** %23, align 8
  %235 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %236 = call i8* @get_number(%struct.parsed_symbol* %235)
  store i8* %236, i8** %24, align 8
  %237 = load i8*, i8** %21, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %248

239:                                              ; preds = %224
  %240 = load i8*, i8** %22, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load i8*, i8** %23, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i8*, i8** %24, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %245, %242, %239, %224
  br label %477

249:                                              ; preds = %245
  %250 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %251 = load i8*, i8** %14, align 8
  %252 = load i8*, i8** %21, align 8
  %253 = load i8*, i8** %22, align 8
  %254 = load i8*, i8** %23, align 8
  %255 = load i8*, i8** %24, align 8
  %256 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %251, i8* %252, i8* %253, i8* %254, i8* %255)
  store i8* %256, i8** %14, align 8
  br label %302

257:                                              ; preds = %217, %213
  %258 = load i8, i8* %5, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 36
  br i1 %260, label %261, label %282

261:                                              ; preds = %257
  %262 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %263 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %263, align 8
  %266 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %267 = call i8* @get_number(%struct.parsed_symbol* %266)
  store i8* %267, i8** %25, align 8
  %268 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %269 = call i8* @get_number(%struct.parsed_symbol* %268)
  store i8* %269, i8** %26, align 8
  %270 = load i8*, i8** %25, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %261
  %273 = load i8*, i8** %26, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272, %261
  br label %477

276:                                              ; preds = %272
  %277 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %278 = load i8*, i8** %14, align 8
  %279 = load i8*, i8** %25, align 8
  %280 = load i8*, i8** %26, align 8
  %281 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %278, i8* %279, i8* %280)
  store i8* %281, i8** %14, align 8
  br label %301

282:                                              ; preds = %257
  %283 = load i8, i8* %5, align 1
  %284 = sext i8 %283 to i32
  %285 = sub nsw i32 %284, 65
  %286 = srem i32 %285, 8
  %287 = icmp eq i32 %286, 6
  br i1 %287, label %294, label %288

288:                                              ; preds = %282
  %289 = load i8, i8* %5, align 1
  %290 = sext i8 %289 to i32
  %291 = sub nsw i32 %290, 65
  %292 = srem i32 %291, 8
  %293 = icmp eq i32 %292, 7
  br i1 %293, label %294, label %300

294:                                              ; preds = %288, %282
  %295 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %298 = call i8* @get_number(%struct.parsed_symbol* %297)
  %299 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %296, i8* %298)
  store i8* %299, i8** %14, align 8
  br label %300

300:                                              ; preds = %294, %288
  br label %301

301:                                              ; preds = %300, %276
  br label %302

302:                                              ; preds = %301, %249
  br label %303

303:                                              ; preds = %302, %206
  %304 = load i64, i64* %16, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %343

306:                                              ; preds = %303
  %307 = load i8, i8* %5, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 36
  br i1 %309, label %326, label %310

310:                                              ; preds = %306
  %311 = load i8, i8* %5, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp sle i32 %312, 88
  br i1 %313, label %314, label %343

314:                                              ; preds = %310
  %315 = load i8, i8* %5, align 1
  %316 = sext i8 %315 to i32
  %317 = sub nsw i32 %316, 65
  %318 = srem i32 %317, 8
  %319 = icmp ne i32 %318, 2
  br i1 %319, label %320, label %343

320:                                              ; preds = %314
  %321 = load i8, i8* %5, align 1
  %322 = sext i8 %321 to i32
  %323 = sub nsw i32 %322, 65
  %324 = srem i32 %323, 8
  %325 = icmp ne i32 %324, 3
  br i1 %325, label %326, label %343

326:                                              ; preds = %320, %306
  %327 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %328 = call i32 @get_modifier(%struct.parsed_symbol* %327, i8** %11, i8** %27)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %326
  br label %477

331:                                              ; preds = %326
  %332 = load i8*, i8** %11, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i8*, i8** %27, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %342

337:                                              ; preds = %334, %331
  %338 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %339 = load i8*, i8** %11, align 8
  %340 = load i8*, i8** %27, align 8
  %341 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %339, i8* %340)
  store i8* %341, i8** %11, align 8
  br label %342

342:                                              ; preds = %337, %334
  br label %343

343:                                              ; preds = %342, %320, %314, %310, %303
  %344 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %345 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %345, align 8
  %348 = load i8, i8* %346, align 1
  %349 = sext i8 %348 to i32
  %350 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %351 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @get_calling_convention(i32 %349, i8** %10, i8** %12, i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %343
  br label %477

356:                                              ; preds = %343
  %357 = call i32 @str_array_init(%struct.array* %19)
  %358 = load i64, i64* %17, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %356
  %361 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %362 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 64
  br i1 %366, label %367, label %374

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %368, align 8
  %369 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  store i32* null, i32** %369, align 8
  %370 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %371 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %371, align 8
  br label %385

374:                                              ; preds = %360, %356
  %375 = load i64, i64* %17, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %374
  %378 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %379 = load i64, i64* @FALSE, align 8
  %380 = call i32 @demangle_datatype(%struct.parsed_symbol* %378, %struct.datatype_t* %9, %struct.array* %19, i64 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %377
  br label %477

383:                                              ; preds = %377
  br label %384

384:                                              ; preds = %383, %374
  br label %385

385:                                              ; preds = %384, %367
  %386 = load i64, i64* %17, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %395

388:                                              ; preds = %385
  %389 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %390 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @UNDNAME_NO_FUNCTION_RETURNS, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %388, %385
  %396 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  store i32* null, i32** %396, align 8
  %397 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  store i8* null, i8** %397, align 8
  br label %398

398:                                              ; preds = %395, %388
  %399 = load i64, i64* %4, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %411

401:                                              ; preds = %398
  %402 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %403 = load i8*, i8** %14, align 8
  %404 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  %405 = load i8*, i8** %404, align 8
  %406 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %403, i8* %405, i32* %407)
  store i8* %408, i8** %14, align 8
  %409 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  store i32* null, i32** %409, align 8
  %410 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  store i8* null, i8** %410, align 8
  br label %411

411:                                              ; preds = %401, %398
  %412 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %413 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  store i32 %415, i32* %18, align 4
  %416 = load i64, i64* %16, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %411
  %419 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %420 = load i64, i64* @TRUE, align 8
  %421 = call i8* @get_args(%struct.parsed_symbol* %419, %struct.array* %19, i64 %420, i8 signext 40, i8 signext 41)
  store i8* %421, i8** %13, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %418
  br label %477

424:                                              ; preds = %418, %411
  %425 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %426 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @UNDNAME_NAME_ONLY, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  br label %432

432:                                              ; preds = %431, %424
  %433 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %434 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @UNDNAME_NO_THISTYPE, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %432
  store i8* null, i8** %11, align 8
  br label %440

440:                                              ; preds = %439, %432
  %441 = load i32, i32* %18, align 4
  %442 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %443 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 0
  store i32 %441, i32* %444, align 8
  %445 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %446 = load i8*, i8** %6, align 8
  %447 = load i8*, i8** %8, align 8
  %448 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = icmp ne i8* %451, null
  br i1 %452, label %453, label %458

453:                                              ; preds = %440
  %454 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = icmp ne i32* %455, null
  %457 = xor i1 %456, true
  br label %458

458:                                              ; preds = %453, %440
  %459 = phi i1 [ false, %440 ], [ %457, %453 ]
  %460 = zext i1 %459 to i64
  %461 = select i1 %459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* null
  %462 = load i8*, i8** %10, align 8
  %463 = load i8*, i8** %10, align 8
  %464 = icmp ne i8* %463, null
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* null
  %467 = load i8*, i8** %12, align 8
  %468 = load i8*, i8** %14, align 8
  %469 = load i8*, i8** %13, align 8
  %470 = load i8*, i8** %11, align 8
  %471 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %9, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %445, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %446, i8* %447, i8* %449, i8* %461, i8* %462, i8* %466, i8* %467, i8* %468, i8* %469, i8* %470, i32* %472)
  %474 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %475 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %474, i32 0, i32 2
  store i8* %473, i8** %475, align 8
  %476 = load i64, i64* @TRUE, align 8
  store i64 %476, i64* %15, align 8
  br label %477

477:                                              ; preds = %458, %423, %382, %355, %330, %275, %248, %205, %101, %84
  %478 = load i64, i64* %15, align 8
  ret i64 %478
}

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*, ...) #1

declare dso_local i8* @get_class_string(%struct.parsed_symbol*, i32) #1

declare dso_local i8* @get_number(%struct.parsed_symbol*) #1

declare dso_local i32 @get_modifier(%struct.parsed_symbol*, i8**, i8**) #1

declare dso_local i32 @get_calling_convention(i32, i8**, i8**, i32) #1

declare dso_local i32 @str_array_init(%struct.array*) #1

declare dso_local i32 @demangle_datatype(%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i64) #1

declare dso_local i8* @get_args(%struct.parsed_symbol*, %struct.array*, i64, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
