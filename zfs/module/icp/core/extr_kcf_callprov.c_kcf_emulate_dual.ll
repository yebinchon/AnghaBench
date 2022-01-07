; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_emulate_dual.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_emulate_dual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_29__, %struct.TYPE_30__ }
%struct.TYPE_29__ = type { i32*, i32*, %struct.TYPE_32__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i64, i64, i8*, i8* }
%struct.TYPE_30__ = type { i32*, %struct.TYPE_32__*, i32*, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__, %struct.TYPE_31__* }

@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_33__*, %struct.TYPE_27__*)* @kcf_emulate_dual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_emulate_dual(%struct.TYPE_28__* %0, %struct.TYPE_33__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca %struct.TYPE_31__*, align 8
  %27 = alloca %struct.TYPE_33__*, align 8
  %28 = alloca %struct.TYPE_27__, align 8
  %29 = alloca %struct.TYPE_32__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_31__*, align 8
  %32 = alloca %struct.TYPE_33__*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_31__*, align 8
  %36 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  %37 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %390 [
    i32 132, label %44
    i32 131, label %247
  ]

44:                                               ; preds = %3
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  store %struct.TYPE_30__* %47, %struct.TYPE_30__** %12, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %51, %struct.TYPE_31__** %13, align 8
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %242 [
    i32 129, label %53
    i32 128, label %102
    i32 130, label %169
  ]

53:                                               ; preds = %44
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 1
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %55, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(%struct.TYPE_27__* %15, i32 129, i32 %58, i32* %60, i32* %63, i32* null, i32* null, i32* %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = call i32 @kcf_submit_request(%struct.TYPE_28__* %68, %struct.TYPE_33__* %69, i32* null, %struct.TYPE_27__* %15, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %53
  br label %243

76:                                               ; preds = %53
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @crypto_mac_init(i32* %78, i32 %81, i32 %84, %struct.TYPE_33__** %14, i32* null)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %76
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_31__*
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 1
  store %struct.TYPE_31__* %93, %struct.TYPE_31__** %95, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_31__*
  %100 = call i32 @KCF_CONTEXT_REFHOLD(%struct.TYPE_31__* %99)
  br label %101

101:                                              ; preds = %89, %76
  br label %243

102:                                              ; preds = %44
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %104, align 8
  store %struct.TYPE_32__* %105, %struct.TYPE_32__** %16, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %17, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %110, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %18, align 8
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  store %struct.TYPE_33__* %113, %struct.TYPE_33__** %19, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %119 = bitcast %struct.TYPE_32__* %118 to i32*
  %120 = call i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(%struct.TYPE_27__* %15, i32 128, i32 %116, i32* null, i32* null, i32* %117, i32* %119, i32* null)
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %123 = load i32, i32* @B_FALSE, align 4
  %124 = call i32 @kcf_submit_request(%struct.TYPE_28__* %121, %struct.TYPE_33__* %122, i32* null, %struct.TYPE_27__* %15, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %102
  br label %243

129:                                              ; preds = %102
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %11, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %10, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %243

146:                                              ; preds = %140
  br label %158

147:                                              ; preds = %129
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %147, %146
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %161 = bitcast %struct.TYPE_32__* %160 to i32*
  %162 = call i32 @crypto_mac_update(%struct.TYPE_33__* %159, i32* %161, i32* null)
  store i32 %162, i32* %8, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %243

169:                                              ; preds = %44
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  store %struct.TYPE_32__* %172, %struct.TYPE_32__** %20, align 8
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %21, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %177, align 8
  store %struct.TYPE_31__* %178, %struct.TYPE_31__** %22, align 8
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  store %struct.TYPE_33__* %180, %struct.TYPE_33__** %23, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  store %struct.TYPE_33__* %181, %struct.TYPE_33__** %24, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %186 = bitcast %struct.TYPE_32__* %185 to i32*
  %187 = call i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(%struct.TYPE_27__* %15, i32 130, i32 %184, i32* null, i32* null, i32* null, i32* %186, i32* null)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %190 = load i32, i32* @B_FALSE, align 4
  %191 = call i32 @kcf_submit_request(%struct.TYPE_28__* %188, %struct.TYPE_33__* %189, i32* null, %struct.TYPE_27__* %15, i32 %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %169
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %197 = call i32 @crypto_cancel_ctx(%struct.TYPE_33__* %196)
  br label %243

198:                                              ; preds = %169
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ugt i64 %201, 0
  br i1 %202, label %203, label %238

203:                                              ; preds = %198
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %11, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %10, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %222 = bitcast %struct.TYPE_32__* %221 to i32*
  %223 = call i32 @crypto_mac_update(%struct.TYPE_33__* %220, i32* %222, i32* null)
  store i32 %223, i32* %8, align 4
  %224 = load i8*, i8** %11, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %203
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %235 = call i32 @crypto_cancel_ctx(%struct.TYPE_33__* %234)
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %4, align 4
  br label %393

237:                                              ; preds = %203
  br label %238

238:                                              ; preds = %237, %198
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %240 = load i32*, i32** %21, align 8
  %241 = call i32 @crypto_mac_final(%struct.TYPE_33__* %239, i32* %240, i32* null)
  store i32 %241, i32* %8, align 4
  br label %243

242:                                              ; preds = %44
  br label %243

243:                                              ; preds = %242, %238, %195, %158, %145, %128, %101, %75
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_28__* %244, i32 %245)
  br label %391

247:                                              ; preds = %3
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  store %struct.TYPE_29__* %250, %struct.TYPE_29__** %25, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = inttoptr i64 %253 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %254, %struct.TYPE_31__** %26, align 8
  %255 = load i32, i32* %9, align 4
  switch i32 %255, label %307 [
    i32 129, label %256
    i32 128, label %308
    i32 130, label %362
  ]

256:                                              ; preds = %247
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 1
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %258, align 8
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 8
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @crypto_mac_init(i32* %260, i32 %263, i32 %266, %struct.TYPE_33__** %27, i32* null)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %256
  br label %389

272:                                              ; preds = %256
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @KCF_WRAP_DECRYPT_OPS_PARAMS(%struct.TYPE_27__* %28, i32 129, i32 %275, i32* %277, i32 %280, i32* null, i32* null, i32 %283)
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %287 = load i32, i32* @B_FALSE, align 4
  %288 = call i32 @kcf_submit_request(%struct.TYPE_28__* %285, %struct.TYPE_33__* %286, i32* null, %struct.TYPE_27__* %28, i32 %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %272
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %294 = call i32 @crypto_cancel_ctx(%struct.TYPE_33__* %293)
  br label %389

295:                                              ; preds = %272
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to %struct.TYPE_31__*
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 1
  store %struct.TYPE_31__* %299, %struct.TYPE_31__** %301, align 8
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = inttoptr i64 %304 to %struct.TYPE_31__*
  %306 = call i32 @KCF_CONTEXT_REFHOLD(%struct.TYPE_31__* %305)
  br label %389

307:                                              ; preds = %247
  br label %389

308:                                              ; preds = %247
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %310, align 8
  store %struct.TYPE_32__* %311, %struct.TYPE_32__** %29, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  store i32* %314, i32** %30, align 8
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %316, align 8
  store %struct.TYPE_31__* %317, %struct.TYPE_31__** %31, align 8
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 0
  store %struct.TYPE_33__* %319, %struct.TYPE_33__** %32, align 8
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %322 = bitcast %struct.TYPE_32__* %321 to i32*
  %323 = call i32 @crypto_mac_update(%struct.TYPE_33__* %320, i32* %322, i32* null)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %308
  br label %389

328:                                              ; preds = %308
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  store i8* %331, i8** %11, align 8
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %10, align 8
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ugt i64 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %328
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 3
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %349 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %348, i32 0, i32 0
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %339, %328
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %353 = bitcast %struct.TYPE_32__* %352 to i32*
  %354 = load i32*, i32** %30, align 8
  %355 = call i32 @crypto_decrypt_update(%struct.TYPE_33__* %351, i32* %353, i32* %354, i32* null)
  store i32 %355, i32* %8, align 4
  %356 = load i8*, i8** %11, align 8
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %358 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i32 0, i32 2
  store i8* %356, i8** %358, align 8
  %359 = load i64, i64* %10, align 8
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  br label %389

362:                                              ; preds = %247
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  store i32* %365, i32** %33, align 8
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  store i32* %368, i32** %34, align 8
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_31__*, %struct.TYPE_31__** %370, align 8
  store %struct.TYPE_31__* %371, %struct.TYPE_31__** %35, align 8
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %373 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %372, i32 0, i32 0
  store %struct.TYPE_33__* %373, %struct.TYPE_33__** %36, align 8
  %374 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %375 = load i32*, i32** %34, align 8
  %376 = call i32 @crypto_mac_final(%struct.TYPE_33__* %374, i32* %375, i32* null)
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %362
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %382 = call i32 @crypto_cancel_ctx(%struct.TYPE_33__* %381)
  br label %389

383:                                              ; preds = %362
  %384 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %385 = call i32 @KCF_CONTEXT_REFHOLD(%struct.TYPE_31__* %384)
  %386 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %387 = load i32*, i32** %33, align 8
  %388 = call i32 @crypto_decrypt_final(%struct.TYPE_33__* %386, i32* %387, i32* null)
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %383, %380, %350, %327, %307, %295, %292, %271
  br label %391

390:                                              ; preds = %3
  br label %391

391:                                              ; preds = %390, %389, %243
  %392 = load i32, i32* %8, align 4
  store i32 %392, i32* %4, align 4
  br label %393

393:                                              ; preds = %391, %233
  %394 = load i32, i32* %4, align 4
  ret i32 %394
}

declare dso_local i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(%struct.TYPE_27__*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_28__*, %struct.TYPE_33__*, i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @crypto_mac_init(i32*, i32, i32, %struct.TYPE_33__**, i32*) #1

declare dso_local i32 @KCF_CONTEXT_REFHOLD(%struct.TYPE_31__*) #1

declare dso_local i32 @crypto_mac_update(%struct.TYPE_33__*, i32*, i32*) #1

declare dso_local i32 @crypto_cancel_ctx(%struct.TYPE_33__*) #1

declare dso_local i32 @crypto_mac_final(%struct.TYPE_33__*, i32*, i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @KCF_WRAP_DECRYPT_OPS_PARAMS(%struct.TYPE_27__*, i32, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @crypto_decrypt_update(%struct.TYPE_33__*, i32*, i32*, i32*) #1

declare dso_local i32 @crypto_decrypt_final(%struct.TYPE_33__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
