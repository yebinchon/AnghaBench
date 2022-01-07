; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_check_get.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_check_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i64, i64, i64 }

@TWON_ONEVALUE = common dso_local global i64 0, align 8
@TWQC_GETCURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"MSG_GET of 0x%x returned 0x%x, expecting 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"MSG_GET of 0x%x returned val 0x%x, type %d\0A\00", align 1
@TWON_ENUMERATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"MSG_GET of 0x%x returned %d items:\0A\00", align 1
@TWTY_UINT8 = common dso_local global i64 0, align 8
@TWTY_INT8 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"  %d: 0x%x\0A\00", align 1
@TWTY_UINT16 = common dso_local global i64 0, align 8
@TWTY_INT16 = common dso_local global i64 0, align 8
@TWTY_UINT32 = common dso_local global i64 0, align 8
@TWTY_INT32 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [79 x i8] c"Type 0x%x, values from MSG_GET (0x%x) and MSG_GETCURRENT (0x%x) do not match.\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Type 0x%x, values from MSG_GET (0x%x) and MSG_GETDEFAULT (0x%x) do not match.\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"MSG_GET on type 0x%x returned type 0x%x, which we didn't check.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32, i32*)* @check_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_get(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32*, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @GlobalLock(i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %327

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TWON_ONEVALUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TWQC_GETCURRENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i1 [ true, %37 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %51
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %51
  br label %322

80:                                               ; preds = %31
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TWON_ENUMERATION, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %312

86:                                               ; preds = %80
  %87 = load i8*, i8** %11, align 8
  %88 = bitcast i8* %87 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %17, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  store i32* %92, i32** %15, align 8
  %93 = load i32*, i32** %14, align 8
  store i32* %93, i32** %16, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99)
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %168, %86
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %171

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TWTY_UINT8, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TWTY_INT8, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %113, %107
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %119, %113
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TWTY_UINT16, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TWTY_INT16, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %139, %133
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TWTY_UINT32, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TWTY_INT32, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153, %147
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %16, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %159, %153
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %101

171:                                              ; preds = %101
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TWTY_UINT16, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @TWTY_INT16, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %241

183:                                              ; preds = %177, %171
  %184 = load i32*, i32** %15, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @ok(i32 %192, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %201, i32 %202)
  %204 = load i32*, i32** %15, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @ok(i32 %212, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %215, i32 %221, i32 %222)
  %224 = load i32*, i32** %10, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %240

226:                                              ; preds = %183
  %227 = load i32*, i32** %15, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = urem i64 %231, %235
  %237 = getelementptr inbounds i32, i32* %227, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %10, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %226, %183
  br label %241

241:                                              ; preds = %240, %177
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @TWTY_UINT32, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @TWTY_INT32, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %311

253:                                              ; preds = %247, %241
  %254 = load i32*, i32** %16, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %8, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %16, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @ok(i32 %262, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %265, i32 %271, i32 %272)
  %274 = load i32*, i32** %16, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %9, align 4
  %281 = icmp eq i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %16, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @ok(i32 %282, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %285, i32 %291, i32 %292)
  %294 = load i32*, i32** %10, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %310

296:                                              ; preds = %253
  %297 = load i32*, i32** %16, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, 1
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = urem i64 %301, %305
  %307 = getelementptr inbounds i32, i32* %297, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %10, align 8
  store i32 %308, i32* %309, align 4
  br label %310

310:                                              ; preds = %296, %253
  br label %311

311:                                              ; preds = %310, %247
  br label %321

312:                                              ; preds = %80
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %315, i32 %319)
  br label %321

321:                                              ; preds = %312, %311
  br label %322

322:                                              ; preds = %321, %79
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @GlobalUnlock(i32 %325)
  br label %327

327:                                              ; preds = %322, %24
  ret void
}

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
