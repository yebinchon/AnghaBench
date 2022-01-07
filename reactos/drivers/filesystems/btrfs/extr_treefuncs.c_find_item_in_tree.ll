; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_find_item_in_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_find_item_in_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"do_load_tree returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i32, i64, i32)* @find_item_in_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_item_in_tree(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2, i32* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_26__, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %24 = call %struct.TYPE_24__* @first_item(%struct.TYPE_25__* %23)
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %18, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %26 = icmp ne %struct.TYPE_24__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %28, i32* %8, align 4
  br label %273

29:                                               ; preds = %7
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  br label %32

32:                                               ; preds = %105, %29
  %33 = load i32, i32* %19, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @keycmp(i32 %33, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %18, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %44 = call %struct.TYPE_24__* @next_item(%struct.TYPE_25__* %42, %struct.TYPE_24__* %43)
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %17, align 8
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %45
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %98, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %59 = icmp ne %struct.TYPE_24__* %58, null
  br i1 %59, label %60, label %98

60:                                               ; preds = %57
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %20, align 8
  br label %67

67:                                               ; preds = %77, %65
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %69 = icmp ne %struct.TYPE_24__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %80 = call %struct.TYPE_24__* @next_item(%struct.TYPE_25__* %78, %struct.TYPE_24__* %79)
  store %struct.TYPE_24__* %80, %struct.TYPE_24__** %17, align 8
  br label %67

81:                                               ; preds = %75
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %83 = icmp ne %struct.TYPE_24__* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @keycmp(i32 %85, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %17, align 8
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %92, %84
  br label %97

95:                                               ; preds = %81
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %96, %struct.TYPE_24__** %17, align 8
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %60, %57, %54, %51, %45
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %101 = icmp ne %struct.TYPE_24__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 1
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i1 [ false, %99 ], [ %104, %102 ]
  br i1 %106, label %32, label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %112 = icmp ne %struct.TYPE_24__* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %115 = icmp ne %struct.TYPE_24__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %17, align 8
  br label %118

118:                                              ; preds = %116, %113, %110
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %191

124:                                              ; preds = %118
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %124
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %182, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store %struct.TYPE_25__* %133, %struct.TYPE_25__** %134, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  store %struct.TYPE_24__* %135, %struct.TYPE_24__** %136, align 8
  br label %137

137:                                              ; preds = %152, %132
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i64 @find_prev_item(i32* %138, %struct.TYPE_26__* %21, %struct.TYPE_26__* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %137
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %151, i32* %8, align 4
  br label %273

152:                                              ; preds = %143
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %154 = bitcast %struct.TYPE_26__* %21 to i8*
  %155 = bitcast %struct.TYPE_26__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  br label %137

156:                                              ; preds = %137
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store %struct.TYPE_25__* %157, %struct.TYPE_25__** %158, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  store %struct.TYPE_24__* %159, %struct.TYPE_24__** %160, align 8
  br label %161

161:                                              ; preds = %176, %156
  %162 = load i32*, i32** %9, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i64 @find_next_item(i32* %162, %struct.TYPE_26__* %21, %struct.TYPE_26__* %163, i32 1, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %175, i32* %8, align 4
  br label %273

176:                                              ; preds = %167
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %178 = bitcast %struct.TYPE_26__* %21 to i8*
  %179 = bitcast %struct.TYPE_26__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  br label %161

180:                                              ; preds = %161
  %181 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %181, i32* %8, align 4
  br label %273

182:                                              ; preds = %129, %124
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  store %struct.TYPE_25__* %183, %struct.TYPE_25__** %185, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  store %struct.TYPE_24__* %186, %struct.TYPE_24__** %188, align 8
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %190, i32* %8, align 4
  br label %273

191:                                              ; preds = %118
  br label %192

192:                                              ; preds = %211, %191
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %194 = icmp ne %struct.TYPE_24__* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = icmp ne %struct.TYPE_25__* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  %207 = call i64 @IsListEmpty(i32* %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %201, %195, %192
  %210 = phi i1 [ false, %195 ], [ false, %192 ], [ %208, %201 ]
  br i1 %210, label %211, label %215

211:                                              ; preds = %209
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %214 = call %struct.TYPE_24__* @prev_item(%struct.TYPE_25__* %212, %struct.TYPE_24__* %213)
  store %struct.TYPE_24__* %214, %struct.TYPE_24__** %17, align 8
  br label %192

215:                                              ; preds = %209
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %217 = icmp ne %struct.TYPE_24__* %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %219, i32* %8, align 4
  br label %273

220:                                              ; preds = %215
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %14, align 8
  %226 = icmp sle i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 1
  store %struct.TYPE_25__* %228, %struct.TYPE_25__** %230, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 0
  store %struct.TYPE_24__* %231, %struct.TYPE_24__** %233, align 8
  %234 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %234, i32* %8, align 4
  br label %273

235:                                              ; preds = %220
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = icmp ne %struct.TYPE_25__* %239, null
  br i1 %240, label %260, label %241

241:                                              ; preds = %235
  %242 = load i32*, i32** %9, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %250 = load i32, i32* %15, align 4
  %251 = call i32 @do_load_tree(i32* %242, %struct.TYPE_22__* %244, i32 %247, %struct.TYPE_25__* %248, %struct.TYPE_24__* %249, i32 %250)
  store i32 %251, i32* %22, align 4
  %252 = load i32, i32* %22, align 4
  %253 = call i32 @NT_SUCCESS(i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %241
  %256 = load i32, i32* %22, align 4
  %257 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %22, align 4
  store i32 %258, i32* %8, align 4
  br label %273

259:                                              ; preds = %241
  br label %260

260:                                              ; preds = %259, %235
  %261 = load i32*, i32** %9, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %264, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %267 = load i32*, i32** %12, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i64, i64* %14, align 8
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @find_item_in_tree(i32* %261, %struct.TYPE_25__* %265, %struct.TYPE_26__* %266, i32* %267, i32 %268, i64 %269, i32 %270)
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %22, align 4
  store i32 %272, i32* %8, align 4
  br label %273

273:                                              ; preds = %260, %255, %227, %218, %189, %180, %174, %150, %27
  %274 = load i32, i32* %8, align 4
  ret i32 %274
}

declare dso_local %struct.TYPE_24__* @first_item(%struct.TYPE_25__*) #1

declare dso_local i32 @keycmp(i32, i32) #1

declare dso_local %struct.TYPE_24__* @next_item(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @find_prev_item(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @find_next_item(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local %struct.TYPE_24__* @prev_item(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @do_load_tree(i32*, %struct.TYPE_22__*, i32, %struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
