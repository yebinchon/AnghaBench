; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_expr_infix.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_expr_infix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@CTOK_OROR = common dso_local global i8 0, align 1
@CTID_INT32 = common dso_local global i8* null, align 8
@CTOK_ANDAND = common dso_local global i8 0, align 1
@CTOK_EQ = common dso_local global i8 0, align 1
@CTOK_NE = common dso_local global i8 0, align 1
@CTOK_LE = common dso_local global i8 0, align 1
@CTOK_GE = common dso_local global i8 0, align 1
@CTOK_SHL = common dso_local global i8 0, align 1
@CTOK_SHR = common dso_local global i8 0, align 1
@LJ_ERR_BADVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @cp_expr_infix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_expr_infix(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %605, %539, %441, %411, %369, %356, %314, %272, %231, %177, %157, %95, %70, %49, %3
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %609 [
    i32 0, label %13
    i32 1, label %54
    i32 2, label %79
    i32 3, label %104
    i32 4, label %120
    i32 5, label %136
    i32 6, label %152
    i32 7, label %194
    i32 8, label %364
    i32 9, label %414
    i32 10, label %459
  ]

13:                                               ; preds = %11
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @cp_opt(i32* %14, i8 signext 63)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @cp_expr_comma(i32* %18, %struct.TYPE_6__* %7)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @cp_check(i32* %20, i8 signext 58)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @cp_expr_sub(i32* %22, %struct.TYPE_6__* %8, i32 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %34

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ugt i8* %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  br label %49

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i8* [ %45, %43 ], [ %48, %46 ]
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %11

53:                                               ; preds = %13
  br label %54

54:                                               ; preds = %11, %53
  %55 = load i32*, i32** %4, align 8
  %56 = load i8, i8* @CTOK_OROR, align 1
  %57 = call i32 @cp_opt(i32* %55, i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @cp_expr_sub(i32* %60, %struct.TYPE_6__* %7, i32 2)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi i1 [ true, %59 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @CTID_INT32, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %11

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %11, %78
  %80 = load i32*, i32** %4, align 8
  %81 = load i8, i8* @CTOK_ANDAND, align 1
  %82 = call i32 @cp_opt(i32* %80, i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @cp_expr_sub(i32* %85, %struct.TYPE_6__* %7, i32 3)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi i1 [ false, %84 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** @CTID_INT32, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %11

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %11, %103
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @cp_opt(i32* %105, i8 signext 124)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @cp_expr_sub(i32* %109, %struct.TYPE_6__* %7, i32 4)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %113, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %429

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %11, %119
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @cp_opt(i32* %121, i8 signext 94)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @cp_expr_sub(i32* %125, %struct.TYPE_6__* %7, i32 5)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = xor i32 %129, %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %429

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %11, %135
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @cp_opt(i32* %137, i8 signext 38)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @cp_expr_sub(i32* %141, %struct.TYPE_6__* %7, i32 6)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %145, %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %429

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %11, %151
  %153 = load i32*, i32** %4, align 8
  %154 = load i8, i8* @CTOK_EQ, align 1
  %155 = call i32 @cp_opt(i32* %153, i8 signext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @cp_expr_sub(i32* %158, %struct.TYPE_6__* %7, i32 7)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %162, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i8*, i8** @CTID_INT32, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %11

172:                                              ; preds = %152
  %173 = load i32*, i32** %4, align 8
  %174 = load i8, i8* @CTOK_NE, align 1
  %175 = call i32 @cp_opt(i32* %173, i8 signext %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @cp_expr_sub(i32* %178, %struct.TYPE_6__* %7, i32 7)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %182, %184
  %186 = zext i1 %185 to i32
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @CTID_INT32, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  br label %11

192:                                              ; preds = %172
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %11, %193
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @cp_opt(i32* %195, i8 signext 60)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %235

198:                                              ; preds = %194
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @cp_expr_sub(i32* %199, %struct.TYPE_6__* %7, i32 8)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** @CTID_INT32, align 8
  %205 = icmp eq i8* %203, %204
  br i1 %205, label %206, label %221

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** @CTID_INT32, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %214, %216
  %218 = zext i1 %217 to i32
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  br label %231

221:                                              ; preds = %206, %198
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %224, %226
  %228 = zext i1 %227 to i32
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %221, %211
  %232 = load i8*, i8** @CTID_INT32, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  br label %11

235:                                              ; preds = %194
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @cp_opt(i32* %236, i8 signext 62)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %276

239:                                              ; preds = %235
  %240 = load i32*, i32** %4, align 8
  %241 = call i32 @cp_expr_sub(i32* %240, %struct.TYPE_6__* %7, i32 8)
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** @CTID_INT32, align 8
  %246 = icmp eq i8* %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = load i8*, i8** @CTID_INT32, align 8
  %251 = icmp eq i8* %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp sgt i32 %255, %257
  %259 = zext i1 %258 to i32
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  br label %272

262:                                              ; preds = %247, %239
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp sgt i32 %265, %267
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %262, %252
  %273 = load i8*, i8** @CTID_INT32, align 8
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  br label %11

276:                                              ; preds = %235
  %277 = load i32*, i32** %4, align 8
  %278 = load i8, i8* @CTOK_LE, align 1
  %279 = call i32 @cp_opt(i32* %277, i8 signext %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %318

281:                                              ; preds = %276
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 @cp_expr_sub(i32* %282, %struct.TYPE_6__* %7, i32 8)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = load i8*, i8** @CTID_INT32, align 8
  %288 = icmp eq i8* %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = load i8*, i8** @CTID_INT32, align 8
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp sle i32 %297, %299
  %301 = zext i1 %300 to i32
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  br label %314

304:                                              ; preds = %289, %281
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp sle i32 %307, %309
  %311 = zext i1 %310 to i32
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %304, %294
  %315 = load i8*, i8** @CTID_INT32, align 8
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  br label %11

318:                                              ; preds = %276
  %319 = load i32*, i32** %4, align 8
  %320 = load i8, i8* @CTOK_GE, align 1
  %321 = call i32 @cp_opt(i32* %319, i8 signext %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %360

323:                                              ; preds = %318
  %324 = load i32*, i32** %4, align 8
  %325 = call i32 @cp_expr_sub(i32* %324, %struct.TYPE_6__* %7, i32 8)
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 1
  %328 = load i8*, i8** %327, align 8
  %329 = load i8*, i8** @CTID_INT32, align 8
  %330 = icmp eq i8* %328, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %323
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** @CTID_INT32, align 8
  %335 = icmp eq i8* %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %331
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = icmp sge i32 %339, %341
  %343 = zext i1 %342 to i32
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 8
  br label %356

346:                                              ; preds = %331, %323
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp sge i32 %349, %351
  %353 = zext i1 %352 to i32
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  br label %356

356:                                              ; preds = %346, %336
  %357 = load i8*, i8** @CTID_INT32, align 8
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  store i8* %357, i8** %359, align 8
  br label %11

360:                                              ; preds = %318
  br label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %11, %363
  %365 = load i32*, i32** %4, align 8
  %366 = load i8, i8* @CTOK_SHL, align 1
  %367 = call i32 @cp_opt(i32* %365, i8 signext %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %364
  %370 = load i32*, i32** %4, align 8
  %371 = call i32 @cp_expr_sub(i32* %370, %struct.TYPE_6__* %7, i32 9)
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = shl i32 %374, %376
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  br label %11

380:                                              ; preds = %364
  %381 = load i32*, i32** %4, align 8
  %382 = load i8, i8* @CTOK_SHR, align 1
  %383 = call i32 @cp_opt(i32* %381, i8 signext %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %412

385:                                              ; preds = %380
  %386 = load i32*, i32** %4, align 8
  %387 = call i32 @cp_expr_sub(i32* %386, %struct.TYPE_6__* %7, i32 9)
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = load i8*, i8** @CTID_INT32, align 8
  %392 = icmp eq i8* %390, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %385
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = ashr i32 %396, %398
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 2
  store i32 %399, i32* %401, align 8
  br label %411

402:                                              ; preds = %385
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = ashr i32 %405, %407
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  store i32 %408, i32* %410, align 8
  br label %411

411:                                              ; preds = %402, %393
  br label %11

412:                                              ; preds = %380
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %11, %413
  %415 = load i32*, i32** %4, align 8
  %416 = call i32 @cp_opt(i32* %415, i8 signext 43)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %442

418:                                              ; preds = %414
  %419 = load i32*, i32** %4, align 8
  %420 = call i32 @cp_expr_sub(i32* %419, %struct.TYPE_6__* %7, i32 10)
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = add nsw i32 %423, %425
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %463, %446, %418, %140, %124, %108
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 1
  %434 = load i8*, i8** %433, align 8
  %435 = icmp ugt i8* %431, %434
  br i1 %435, label %436, label %441

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  store i8* %438, i8** %440, align 8
  br label %441

441:                                              ; preds = %436, %429
  br label %11

442:                                              ; preds = %414
  %443 = load i32*, i32** %4, align 8
  %444 = call i32 @cp_opt(i32* %443, i8 signext 45)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = load i32*, i32** %4, align 8
  %448 = call i32 @cp_expr_sub(i32* %447, %struct.TYPE_6__* %7, i32 10)
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = sub nsw i32 %451, %453
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  store i32 %454, i32* %456, align 8
  br label %429

457:                                              ; preds = %442
  br label %458

458:                                              ; preds = %457
  br label %459

459:                                              ; preds = %11, %458
  %460 = load i32*, i32** %4, align 8
  %461 = call i32 @cp_opt(i32* %460, i8 signext 42)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %459
  %464 = load i32*, i32** %4, align 8
  %465 = call i32 @cp_expr_unary(i32* %464, %struct.TYPE_6__* %7)
  %466 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = mul nsw i32 %468, %470
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 0
  store i32 %471, i32* %473, align 8
  br label %429

474:                                              ; preds = %459
  %475 = load i32*, i32** %4, align 8
  %476 = call i32 @cp_opt(i32* %475, i8 signext 47)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %540

478:                                              ; preds = %474
  %479 = load i32*, i32** %4, align 8
  %480 = call i32 @cp_expr_unary(i32* %479, %struct.TYPE_6__* %7)
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %482 = load i8*, i8** %481, align 8
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 1
  %485 = load i8*, i8** %484, align 8
  %486 = icmp ugt i8* %482, %485
  br i1 %486, label %487, label %492

487:                                              ; preds = %478
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %489 = load i8*, i8** %488, align 8
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 1
  store i8* %489, i8** %491, align 8
  br label %492

492:                                              ; preds = %487, %478
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %511, label %496

496:                                              ; preds = %492
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 1
  %499 = load i8*, i8** %498, align 8
  %500 = load i8*, i8** @CTID_INT32, align 8
  %501 = icmp eq i8* %499, %500
  br i1 %501, label %502, label %515

502:                                              ; preds = %496
  %503 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp eq i32 %505, -2147483648
  br i1 %506, label %507, label %515

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = icmp eq i32 %509, -1
  br i1 %510, label %511, label %515

511:                                              ; preds = %507, %492
  %512 = load i32*, i32** %4, align 8
  %513 = load i32, i32* @LJ_ERR_BADVAL, align 4
  %514 = call i32 @cp_err(i32* %512, i32 %513)
  br label %515

515:                                              ; preds = %511, %507, %502, %496
  %516 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 1
  %518 = load i8*, i8** %517, align 8
  %519 = load i8*, i8** @CTID_INT32, align 8
  %520 = icmp eq i8* %518, %519
  br i1 %520, label %521, label %530

521:                                              ; preds = %515
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = sdiv i32 %524, %526
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 2
  store i32 %527, i32* %529, align 8
  br label %539

530:                                              ; preds = %515
  %531 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = sdiv i32 %533, %535
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 0
  store i32 %536, i32* %538, align 8
  br label %539

539:                                              ; preds = %530, %521
  br label %11

540:                                              ; preds = %474
  %541 = load i32*, i32** %4, align 8
  %542 = call i32 @cp_opt(i32* %541, i8 signext 37)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %606

544:                                              ; preds = %540
  %545 = load i32*, i32** %4, align 8
  %546 = call i32 @cp_expr_unary(i32* %545, %struct.TYPE_6__* %7)
  %547 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %548 = load i8*, i8** %547, align 8
  %549 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 1
  %551 = load i8*, i8** %550, align 8
  %552 = icmp ugt i8* %548, %551
  br i1 %552, label %553, label %558

553:                                              ; preds = %544
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %555 = load i8*, i8** %554, align 8
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 1
  store i8* %555, i8** %557, align 8
  br label %558

558:                                              ; preds = %553, %544
  %559 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %577, label %562

562:                                              ; preds = %558
  %563 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i32 0, i32 1
  %565 = load i8*, i8** %564, align 8
  %566 = load i8*, i8** @CTID_INT32, align 8
  %567 = icmp eq i8* %565, %566
  br i1 %567, label %568, label %581

568:                                              ; preds = %562
  %569 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp eq i32 %571, -2147483648
  br i1 %572, label %573, label %581

573:                                              ; preds = %568
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = icmp eq i32 %575, -1
  br i1 %576, label %577, label %581

577:                                              ; preds = %573, %558
  %578 = load i32*, i32** %4, align 8
  %579 = load i32, i32* @LJ_ERR_BADVAL, align 4
  %580 = call i32 @cp_err(i32* %578, i32 %579)
  br label %581

581:                                              ; preds = %577, %573, %568, %562
  %582 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 1
  %584 = load i8*, i8** %583, align 8
  %585 = load i8*, i8** @CTID_INT32, align 8
  %586 = icmp eq i8* %584, %585
  br i1 %586, label %587, label %596

587:                                              ; preds = %581
  %588 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %589 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = srem i32 %590, %592
  %594 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %594, i32 0, i32 2
  store i32 %593, i32* %595, align 8
  br label %605

596:                                              ; preds = %581
  %597 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = srem i32 %599, %601
  %603 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 0
  store i32 %602, i32* %604, align 8
  br label %605

605:                                              ; preds = %596, %587
  br label %11

606:                                              ; preds = %540
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %11, %608
  ret void
}

declare dso_local i32 @cp_opt(i32*, i8 signext) #1

declare dso_local i32 @cp_expr_comma(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cp_check(i32*, i8 signext) #1

declare dso_local i32 @cp_expr_sub(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cp_expr_unary(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cp_err(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
