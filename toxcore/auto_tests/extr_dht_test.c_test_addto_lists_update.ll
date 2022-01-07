; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_update.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Wrong number of added clients\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Client id is not in the list\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Client IP_Port is incorrect\00", align 1
@TOX_PORT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_addto_lists_update(i32* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %18 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %17, align 4
  %30 = call i32 (...) @rand()
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  br label %49

42:                                               ; preds = %4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  br label %49

49:                                               ; preds = %42, %35
  %50 = phi %struct.TYPE_19__* [ %41, %35 ], [ %48, %42 ]
  %51 = call i32 @ipport_copy(%struct.TYPE_17__* %14, %struct.TYPE_19__* %50)
  %52 = mul nuw i64 4, %19
  %53 = trunc i64 %52 to i32
  %54 = call i32 @randombytes(i32* %21, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast %struct.TYPE_17__* %14 to { i32, i64 }*
  %57 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %56, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @addto_lists(i32* %55, i32 %58, i64 %60, i32* %21)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sge i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @ck_assert_msg(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @client_in_list(%struct.TYPE_18__* %66, i32 %67, i32* %21)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ck_assert_msg(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %49
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  br label %89

82:                                               ; preds = %49
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  br label %89

89:                                               ; preds = %82, %75
  %90 = phi %struct.TYPE_19__* [ %81, %75 ], [ %88, %82 ]
  %91 = call i32 @ipport_equal(%struct.TYPE_17__* %14, %struct.TYPE_19__* %90)
  %92 = call i32 @ck_assert_msg(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 (...) @rand()
  %94 = load i32, i32* %7, align 4
  %95 = srem i32 %93, %94
  store i32 %95, i32* %10, align 4
  %96 = call i32 (...) @rand()
  %97 = load i32, i32* @TOX_PORT_DEFAULT, align 4
  %98 = srem i32 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @id_copy(i32* %21, i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = bitcast %struct.TYPE_17__* %14 to { i32, i64 }*
  %109 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %108, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @addto_lists(i32* %107, i32 %110, i64 %112, i32* %21)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp sge i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @ck_assert_msg(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @client_in_list(%struct.TYPE_18__* %118, i32 %119, i32* %21)
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @ck_assert_msg(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %89
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  br label %141

134:                                              ; preds = %89
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  br label %141

141:                                              ; preds = %134, %127
  %142 = phi %struct.TYPE_19__* [ %133, %127 ], [ %140, %134 ]
  %143 = call i32 @ipport_equal(%struct.TYPE_17__* %14, %struct.TYPE_19__* %142)
  %144 = call i32 @ck_assert_msg(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %145 = call i32 (...) @rand()
  %146 = load i32, i32* %7, align 4
  %147 = sdiv i32 %146, 2
  %148 = srem i32 %145, %147
  store i32 %148, i32* %11, align 4
  %149 = call i32 (...) @rand()
  %150 = load i32, i32* %7, align 4
  %151 = sdiv i32 %150, 2
  %152 = srem i32 %149, %151
  %153 = load i32, i32* %7, align 4
  %154 = sdiv i32 %153, 2
  %155 = add nsw i32 %152, %154
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %141
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  br label %172

165:                                              ; preds = %141
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  br label %172

172:                                              ; preds = %165, %158
  %173 = phi %struct.TYPE_19__* [ %164, %158 ], [ %171, %165 ]
  %174 = call i32 @ipport_copy(%struct.TYPE_17__* %14, %struct.TYPE_19__* %173)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @id_copy(i32* %21, i32 %180)
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %172
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  store i32 -1, i32* %191, align 4
  br label %200

192:                                              ; preds = %172
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  store i32 -1, i32* %199, align 4
  br label %200

200:                                              ; preds = %192, %184
  %201 = load i32*, i32** %5, align 8
  %202 = bitcast %struct.TYPE_17__* %14 to { i32, i64 }*
  %203 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %202, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @addto_lists(i32* %201, i32 %204, i64 %206, i32* %21)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp sge i32 %208, 1
  %210 = zext i1 %209 to i32
  %211 = call i32 @ck_assert_msg(i32 %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @client_in_list(%struct.TYPE_18__* %212, i32 %213, i32* %21)
  %215 = load i32, i32* %12, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @ck_assert_msg(i32 %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %200
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  br label %235

228:                                              ; preds = %200
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  br label %235

235:                                              ; preds = %228, %221
  %236 = phi %struct.TYPE_19__* [ %227, %221 ], [ %234, %228 ]
  %237 = call i32 @ipport_equal(%struct.TYPE_17__* %14, %struct.TYPE_19__* %236)
  %238 = call i32 @ck_assert_msg(i32 %237, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %239 = call i32 (...) @rand()
  %240 = load i32, i32* %7, align 4
  %241 = sdiv i32 %240, 2
  %242 = srem i32 %239, %241
  store i32 %242, i32* %11, align 4
  %243 = call i32 (...) @rand()
  %244 = load i32, i32* %7, align 4
  %245 = sdiv i32 %244, 2
  %246 = srem i32 %243, %245
  %247 = load i32, i32* %7, align 4
  %248 = sdiv i32 %247, 2
  %249 = add nsw i32 %246, %248
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %17, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %235
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  br label %266

259:                                              ; preds = %235
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  br label %266

266:                                              ; preds = %259, %252
  %267 = phi %struct.TYPE_19__* [ %258, %252 ], [ %265, %259 ]
  %268 = call i32 @ipport_copy(%struct.TYPE_17__* %14, %struct.TYPE_19__* %267)
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @id_copy(i32* %21, i32 %274)
  %276 = load i32, i32* %17, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %266
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  store i32 -1, i32* %285, align 4
  br label %294

286:                                              ; preds = %266
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  store i32 -1, i32* %293, align 4
  br label %294

294:                                              ; preds = %286, %278
  %295 = load i32*, i32** %5, align 8
  %296 = bitcast %struct.TYPE_17__* %14 to { i32, i64 }*
  %297 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %296, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @addto_lists(i32* %295, i32 %298, i64 %300, i32* %21)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp sge i32 %302, 1
  %304 = zext i1 %303 to i32
  %305 = call i32 @ck_assert_msg(i32 %304, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @client_in_list(%struct.TYPE_18__* %306, i32 %307, i32* %21)
  %309 = load i32, i32* %11, align 4
  %310 = icmp eq i32 %308, %309
  %311 = zext i1 %310 to i32
  %312 = call i32 @ck_assert_msg(i32 %311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %313 = load i32, i32* %17, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %294
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  br label %329

322:                                              ; preds = %294
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  br label %329

329:                                              ; preds = %322, %315
  %330 = phi %struct.TYPE_19__* [ %321, %315 ], [ %328, %322 ]
  %331 = call i32 @ipport_equal(%struct.TYPE_17__* %14, %struct.TYPE_19__* %330)
  %332 = call i32 @ck_assert_msg(i32 %331, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %333 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %333)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rand(...) #2

declare dso_local i32 @ipport_copy(%struct.TYPE_17__*, %struct.TYPE_19__*) #2

declare dso_local i32 @randombytes(i32*, i32) #2

declare dso_local i32 @addto_lists(i32*, i32, i64, i32*) #2

declare dso_local i32 @ck_assert_msg(i32, i8*) #2

declare dso_local i32 @client_in_list(%struct.TYPE_18__*, i32, i32*) #2

declare dso_local i32 @ipport_equal(%struct.TYPE_17__*, %struct.TYPE_19__*) #2

declare dso_local i32 @id_copy(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
