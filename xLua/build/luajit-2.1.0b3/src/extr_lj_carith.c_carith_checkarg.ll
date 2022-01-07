; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_carith_checkarg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_carith_checkarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32**, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }

@LUA_TCDATA = common dso_local global i32 0, align 4
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@CTID_DOUBLE = common dso_local global i32 0, align 4
@CTID_P_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, %struct.TYPE_29__*)* @carith_checkarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carith_checkarg(%struct.TYPE_25__* %0, i32* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %6, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %7, align 8
  store i32 1, i32* %8, align 4
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i64 1
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = icmp uge %struct.TYPE_26__* %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = load i32, i32* @LUA_TCDATA, align 4
  %30 = call i32 @lj_err_argt(%struct.TYPE_25__* %28, i32 1, i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %299, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %304

35:                                               ; preds = %32
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %37 = call i64 @tviscdata(%struct.TYPE_26__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %122

39:                                               ; preds = %35
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %41 = call %struct.TYPE_27__* @cdataV(%struct.TYPE_26__* %40)
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %10, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.TYPE_28__* @ctype_raw(i32* %45, i32 %46)
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %12, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %49 = call i64 @cdataptr(%struct.TYPE_27__* %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %13, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ctype_isptr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %39
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @cdata_getptr(i32* %57, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %13, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ctype_isref(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %71 = call %struct.TYPE_28__* @ctype_rawchild(i32* %69, %struct.TYPE_28__* %70)
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %12, align 8
  br label %72

72:                                               ; preds = %68, %56
  br label %96

73:                                               ; preds = %39
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ctype_isfunc(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load i32*, i32** %13, align 8
  %81 = bitcast i32* %80 to i8**
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %13, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @CT_PTR, align 4
  %87 = load i32, i32* @CTALIGN_PTR, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @CTINFO(i32 %86, i32 %89)
  %91 = load i32, i32* @CTSIZE_PTR, align 4
  %92 = call i32 @lj_ctype_intern(i32* %85, i32 %90, i32 %91)
  %93 = call i8* @ctype_get(i32* %84, i32 %92)
  %94 = bitcast i8* %93 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %94, %struct.TYPE_28__** %12, align 8
  br label %95

95:                                               ; preds = %79, %73
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ctype_isenum(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %105 = call i8* @ctype_child(i32* %103, %struct.TYPE_28__* %104)
  %106 = bitcast i8* %105 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %106, %struct.TYPE_28__** %12, align 8
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %111, i64 %113
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %114, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* %115, i32** %121, align 8
  br label %298

122:                                              ; preds = %35
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = call i64 @tvisint(%struct.TYPE_26__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @CTID_INT32, align 4
  %129 = call i8* @ctype_get(i32* %127, i32 %128)
  %130 = bitcast i8* %129 to %struct.TYPE_28__*
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %133, i64 %135
  store %struct.TYPE_28__* %130, %struct.TYPE_28__** %136, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  store i32* %138, i32** %144, align 8
  br label %297

145:                                              ; preds = %122
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %147 = call i64 @tvisnum(%struct.TYPE_26__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* @CTID_DOUBLE, align 4
  %152 = call i8* @ctype_get(i32* %150, i32 %151)
  %153 = bitcast i8* %152 to %struct.TYPE_28__*
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %156, i64 %158
  store %struct.TYPE_28__* %153, %struct.TYPE_28__** %159, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  store i32* %161, i32** %167, align 8
  br label %296

168:                                              ; preds = %145
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %170 = call i64 @tvisnil(%struct.TYPE_26__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @CTID_P_VOID, align 4
  %175 = call i8* @ctype_get(i32* %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.TYPE_28__*
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %179, i64 %181
  store %struct.TYPE_28__* %176, %struct.TYPE_28__** %182, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* null, i32** %188, align 8
  br label %295

189:                                              ; preds = %168
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %191 = call i64 @tvisstr(%struct.TYPE_26__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %281

193:                                              ; preds = %189
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i64 1
  br label %202

199:                                              ; preds = %193
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i64 -1
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi %struct.TYPE_26__* [ %198, %196 ], [ %201, %199 ]
  store %struct.TYPE_26__* %203, %struct.TYPE_26__** %14, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %206 = call %struct.TYPE_27__* @cdataV(%struct.TYPE_26__* %205)
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call %struct.TYPE_28__* @ctype_raw(i32* %204, i32 %208)
  store %struct.TYPE_28__* %209, %struct.TYPE_28__** %15, align 8
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %212, i64 %214
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %215, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = call i64 @strVdata(%struct.TYPE_26__* %216)
  %218 = inttoptr i64 %217 to i32*
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  store i32* %218, i32** %224, align 8
  store i32 0, i32* %8, align 4
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @ctype_isenum(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %280

230:                                              ; preds = %202
  %231 = load i32*, i32** %5, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %234 = call i32 @strV(%struct.TYPE_26__* %233)
  %235 = call %struct.TYPE_28__* @lj_ctype_getfield(i32* %231, %struct.TYPE_28__* %232, i32 %234, i32* %16)
  store %struct.TYPE_28__* %235, %struct.TYPE_28__** %17, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %237 = icmp ne %struct.TYPE_28__* %236, null
  br i1 %237, label %238, label %263

238:                                              ; preds = %230
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @ctype_isconstval(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %238
  %245 = load i32*, i32** %5, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %247 = call i8* @ctype_child(i32* %245, %struct.TYPE_28__* %246)
  %248 = bitcast i8* %247 to %struct.TYPE_28__*
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %251, i64 %253
  store %struct.TYPE_28__* %248, %struct.TYPE_28__** %254, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 0
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  store i32* %256, i32** %262, align 8
  store i32 1, i32* %8, align 4
  br label %279

263:                                              ; preds = %238, %230
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sub nsw i32 1, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %267, i64 %270
  store %struct.TYPE_28__* %264, %struct.TYPE_28__** %271, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sub nsw i32 1, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %274, i64 %277
  store i32* null, i32** %278, align 8
  br label %304

279:                                              ; preds = %244
  br label %280

280:                                              ; preds = %279, %202
  br label %294

281:                                              ; preds = %189
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %284, i64 %286
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %287, align 8
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 0
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  store i32* inttoptr (i64 1 to i32*), i32** %293, align 8
  store i32 0, i32* %8, align 4
  br label %294

294:                                              ; preds = %281, %280
  br label %295

295:                                              ; preds = %294, %172
  br label %296

296:                                              ; preds = %295, %149
  br label %297

297:                                              ; preds = %296, %126
  br label %298

298:                                              ; preds = %297, %107
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 1
  store %struct.TYPE_26__* %303, %struct.TYPE_26__** %7, align 8
  br label %32

304:                                              ; preds = %263, %32
  %305 = load i32, i32* %8, align 4
  ret i32 %305
}

declare dso_local i32 @lj_err_argt(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @tviscdata(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @cdataV(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @cdataptr(%struct.TYPE_27__*) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @cdata_getptr(i32*, i32) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local %struct.TYPE_28__* @ctype_rawchild(i32*, %struct.TYPE_28__*) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i8* @ctype_get(i32*, i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i8* @ctype_child(i32*, %struct.TYPE_28__*) #1

declare dso_local i64 @tvisint(%struct.TYPE_26__*) #1

declare dso_local i64 @tvisnum(%struct.TYPE_26__*) #1

declare dso_local i64 @tvisnil(%struct.TYPE_26__*) #1

declare dso_local i64 @tvisstr(%struct.TYPE_26__*) #1

declare dso_local i64 @strVdata(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @lj_ctype_getfield(i32*, %struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @strV(%struct.TYPE_26__*) #1

declare dso_local i64 @ctype_isconstval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
