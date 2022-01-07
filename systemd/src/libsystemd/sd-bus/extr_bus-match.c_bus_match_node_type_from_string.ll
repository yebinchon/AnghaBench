; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_node_type_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_node_type_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@BUS_MATCH_MESSAGE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@BUS_MATCH_SENDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@BUS_MATCH_DESTINATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@BUS_MATCH_INTERFACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@BUS_MATCH_MEMBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@BUS_MATCH_PATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"path_namespace\00", align 1
@BUS_MATCH_PATH_NAMESPACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BUS_MATCH_ARG = common dso_local global i32 0, align 4
@BUS_MATCH_ARG_LAST = common dso_local global i32 0, align 4
@BUS_MATCH_ARG_PATH = common dso_local global i32 0, align 4
@BUS_MATCH_ARG_PATH_LAST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@BUS_MATCH_ARG_NAMESPACE = common dso_local global i32 0, align 4
@BUS_MATCH_ARG_NAMESPACE_LAST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"has\00", align 1
@BUS_MATCH_ARG_HAS = common dso_local global i32 0, align 4
@BUS_MATCH_ARG_HAS_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_match_node_type_from_string(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @startswith(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @BUS_MATCH_MESSAGE_TYPE, align 4
  store i32 %31, i32* %3, align 4
  br label %359

32:                                               ; preds = %26, %2
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 6
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @startswith(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @BUS_MATCH_SENDER, align 4
  store i32 %40, i32* %3, align 4
  br label %359

41:                                               ; preds = %35, %32
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 11
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @startswith(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @BUS_MATCH_DESTINATION, align 4
  store i32 %49, i32* %3, align 4
  br label %359

50:                                               ; preds = %44, %41
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %51, 9
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @startswith(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @BUS_MATCH_INTERFACE, align 4
  store i32 %58, i32* %3, align 4
  br label %359

59:                                               ; preds = %53, %50
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @startswith(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @BUS_MATCH_MEMBER, align 4
  store i32 %67, i32* %3, align 4
  br label %359

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call i64 @startswith(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @BUS_MATCH_PATH, align 4
  store i32 %76, i32* %3, align 4
  br label %359

77:                                               ; preds = %71, %68
  %78 = load i64, i64* %5, align 8
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @startswith(i8* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @BUS_MATCH_PATH_NAMESPACE, align 4
  store i32 %85, i32* %3, align 4
  br label %359

86:                                               ; preds = %80, %77
  %87 = load i64, i64* %5, align 8
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @startswith(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @undecchar(i8 signext %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %359

103:                                              ; preds = %93
  %104 = load i32, i32* @BUS_MATCH_ARG, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %3, align 4
  br label %359

107:                                              ; preds = %89, %86
  %108 = load i64, i64* %5, align 8
  %109 = icmp eq i64 %108, 5
  br i1 %109, label %110, label %146

110:                                              ; preds = %107
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @startswith(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %110
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @undecchar(i8 signext %117)
  store i32 %118, i32* %7, align 4
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @undecchar(i8 signext %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %114
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %359

131:                                              ; preds = %125
  %132 = load i32, i32* @BUS_MATCH_ARG, align 4
  %133 = load i32, i32* %7, align 4
  %134 = mul nsw i32 %133, 10
  %135 = add nsw i32 %132, %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @BUS_MATCH_ARG_LAST, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %359

144:                                              ; preds = %131
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %359

146:                                              ; preds = %110, %107
  %147 = load i64, i64* %5, align 8
  %148 = icmp eq i64 %147, 8
  br i1 %148, label %149, label %172

149:                                              ; preds = %146
  %150 = load i8*, i8** %4, align 8
  %151 = call i64 @startswith(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %149
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  %156 = call i64 @startswith(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @undecchar(i8 signext %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %359

168:                                              ; preds = %158
  %169 = load i32, i32* @BUS_MATCH_ARG_PATH, align 4
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, i32* %3, align 4
  br label %359

172:                                              ; preds = %153, %149, %146
  %173 = load i64, i64* %5, align 8
  %174 = icmp eq i64 %173, 9
  br i1 %174, label %175, label %216

175:                                              ; preds = %172
  %176 = load i8*, i8** %4, align 8
  %177 = call i64 @startswith(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %216

179:                                              ; preds = %175
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 5
  %182 = call i64 @startswith(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %216

184:                                              ; preds = %179
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  %187 = load i8, i8* %186, align 1
  %188 = call i32 @undecchar(i8 signext %187)
  store i32 %188, i32* %12, align 4
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 4
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @undecchar(i8 signext %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp sle i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %184
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %184
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %359

201:                                              ; preds = %195
  %202 = load i32, i32* @BUS_MATCH_ARG_PATH, align 4
  %203 = load i32, i32* %12, align 4
  %204 = mul nsw i32 %203, 10
  %205 = add nsw i32 %202, %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @BUS_MATCH_ARG_PATH_LAST, align 4
  %210 = icmp ugt i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %359

214:                                              ; preds = %201
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %3, align 4
  br label %359

216:                                              ; preds = %179, %175, %172
  %217 = load i64, i64* %5, align 8
  %218 = icmp eq i64 %217, 13
  br i1 %218, label %219, label %242

219:                                              ; preds = %216
  %220 = load i8*, i8** %4, align 8
  %221 = call i64 @startswith(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %219
  %224 = load i8*, i8** %4, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 4
  %226 = call i64 @startswith(i8* %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = load i8*, i8** %4, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 3
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @undecchar(i8 signext %231)
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %359

238:                                              ; preds = %228
  %239 = load i32, i32* @BUS_MATCH_ARG_NAMESPACE, align 4
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %239, %240
  store i32 %241, i32* %3, align 4
  br label %359

242:                                              ; preds = %223, %219, %216
  %243 = load i64, i64* %5, align 8
  %244 = icmp eq i64 %243, 14
  br i1 %244, label %245, label %286

245:                                              ; preds = %242
  %246 = load i8*, i8** %4, align 8
  %247 = call i64 @startswith(i8* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %286

249:                                              ; preds = %245
  %250 = load i8*, i8** %4, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 5
  %252 = call i64 @startswith(i8* %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %286

254:                                              ; preds = %249
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 3
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @undecchar(i8 signext %257)
  store i32 %258, i32* %16, align 4
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 4
  %261 = load i8, i8* %260, align 1
  %262 = call i32 @undecchar(i8 signext %261)
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %16, align 4
  %264 = icmp sle i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %254
  %266 = load i32, i32* %17, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265, %254
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %359

271:                                              ; preds = %265
  %272 = load i32, i32* @BUS_MATCH_ARG_NAMESPACE, align 4
  %273 = load i32, i32* %16, align 4
  %274 = mul nsw i32 %273, 10
  %275 = add nsw i32 %272, %274
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %275, %276
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* @BUS_MATCH_ARG_NAMESPACE_LAST, align 4
  %280 = icmp ugt i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %271
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %3, align 4
  br label %359

284:                                              ; preds = %271
  %285 = load i32, i32* %15, align 4
  store i32 %285, i32* %3, align 4
  br label %359

286:                                              ; preds = %249, %245, %242
  %287 = load i64, i64* %5, align 8
  %288 = icmp eq i64 %287, 7
  br i1 %288, label %289, label %312

289:                                              ; preds = %286
  %290 = load i8*, i8** %4, align 8
  %291 = call i64 @startswith(i8* %290, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load i8*, i8** %4, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 4
  %296 = call i64 @startswith(i8* %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %293
  %299 = load i8*, i8** %4, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  %301 = load i8, i8* %300, align 1
  %302 = call i32 @undecchar(i8 signext %301)
  store i32 %302, i32* %18, align 4
  %303 = load i32, i32* %18, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %298
  %306 = load i32, i32* @EINVAL, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %3, align 4
  br label %359

308:                                              ; preds = %298
  %309 = load i32, i32* @BUS_MATCH_ARG_HAS, align 4
  %310 = load i32, i32* %18, align 4
  %311 = add nsw i32 %309, %310
  store i32 %311, i32* %3, align 4
  br label %359

312:                                              ; preds = %293, %289, %286
  %313 = load i64, i64* %5, align 8
  %314 = icmp eq i64 %313, 8
  br i1 %314, label %315, label %356

315:                                              ; preds = %312
  %316 = load i8*, i8** %4, align 8
  %317 = call i64 @startswith(i8* %316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %356

319:                                              ; preds = %315
  %320 = load i8*, i8** %4, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 5
  %322 = call i64 @startswith(i8* %321, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %356

324:                                              ; preds = %319
  %325 = load i8*, i8** %4, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 3
  %327 = load i8, i8* %326, align 1
  %328 = call i32 @undecchar(i8 signext %327)
  store i32 %328, i32* %20, align 4
  %329 = load i8*, i8** %4, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 4
  %331 = load i8, i8* %330, align 1
  %332 = call i32 @undecchar(i8 signext %331)
  store i32 %332, i32* %21, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp sle i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %324
  %336 = load i32, i32* %21, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335, %324
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %359

341:                                              ; preds = %335
  %342 = load i32, i32* @BUS_MATCH_ARG_HAS, align 4
  %343 = load i32, i32* %20, align 4
  %344 = mul nsw i32 %343, 10
  %345 = add nsw i32 %342, %344
  %346 = load i32, i32* %21, align 4
  %347 = add nsw i32 %345, %346
  store i32 %347, i32* %19, align 4
  %348 = load i32, i32* %19, align 4
  %349 = load i32, i32* @BUS_MATCH_ARG_HAS_LAST, align 4
  %350 = icmp ugt i32 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %341
  %352 = load i32, i32* @EINVAL, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %3, align 4
  br label %359

354:                                              ; preds = %341
  %355 = load i32, i32* %19, align 4
  store i32 %355, i32* %3, align 4
  br label %359

356:                                              ; preds = %319, %315, %312
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %3, align 4
  br label %359

359:                                              ; preds = %356, %354, %351, %338, %308, %305, %284, %281, %268, %238, %235, %214, %211, %198, %168, %165, %144, %141, %128, %103, %100, %84, %75, %66, %57, %48, %39, %30
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @undecchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
