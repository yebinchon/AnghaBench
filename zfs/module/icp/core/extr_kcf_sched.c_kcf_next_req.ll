; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_next_req.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_next_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_28__, i32, i32, %struct.TYPE_24__*, %struct.TYPE_29__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_24__ = type { i8*, %struct.TYPE_28__, %struct.TYPE_30__*, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32, i32, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@CRYPTO_FG_MAC_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_RESTRICTED = common dso_local global i32 0, align 4
@CRYPTO_MECH_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CRYPTO_OLD_CTX_TEMPLATE = common dso_local global i32 0, align 4
@CRYPTO_FG_DECRYPT_ATOMIC = common dso_local global i32 0, align 4
@kcf_last_req = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@KM_NOSLEEP = common dso_local global i32 0, align 4
@process_req_hwp = common dso_local global i32 0, align 4
@TQ_NOSLEEP = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_next_req(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %19, %struct.TYPE_33__** %5, align 8
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 4
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %6, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %7, align 8
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %8, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %135, %100, %80, %29
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 0
  %35 = bitcast %struct.TYPE_28__* %32 to i8*
  %36 = bitcast %struct.TYPE_28__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_24__* %37)
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %40 = call i32 @kmem_free(%struct.TYPE_33__* %39, i32 80)
  %41 = load i8*, i8** @B_FALSE, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @kcf_aop_done(%struct.TYPE_24__* %44, i32 %45)
  br label %262

47:                                               ; preds = %2
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %138 [
    i32 128, label %51
    i32 129, label %111
  ]

51:                                               ; preds = %47
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %11, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %58, %struct.TYPE_25__** %10, align 8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CRYPTO_FG_MAC_ATOMIC, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_30__* @kcf_get_mech_provider(i32 %66, %struct.TYPE_31__** %13, i32* %8, i32* null, i32 %67, i32 %73, i32 %76)
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %9, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %79 = icmp eq %struct.TYPE_30__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load i32, i32* @CRYPTO_MECH_NOT_SUPPORTED, align 4
  store i32 %81, i32* %8, align 4
  br label %30

82:                                               ; preds = %51
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load i32*, i32** %12, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32*, i32** %12, align 8
  %92 = bitcast i32* %91 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %14, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %102 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_30__* %101)
  %103 = load i32, i32* @CRYPTO_OLD_CTX_TEMPLATE, align 4
  store i32 %103, i32* %8, align 4
  br label %30

104:                                              ; preds = %90
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %87, %82
  br label %139

111:                                              ; preds = %47
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  store %struct.TYPE_34__* %114, %struct.TYPE_34__** %15, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %118, %struct.TYPE_25__** %10, align 8
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CRYPTO_FG_DECRYPT_ATOMIC, align 4
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %128 = and i32 %126, %127
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_30__* @kcf_get_mech_provider(i32 %121, %struct.TYPE_31__** null, i32* %8, i32* null, i32 %122, i32 %128, i32 %131)
  store %struct.TYPE_30__* %132, %struct.TYPE_30__** %9, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %134 = icmp eq %struct.TYPE_30__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %111
  %136 = load i32, i32* @CRYPTO_MECH_NOT_SUPPORTED, align 4
  store i32 %136, i32* %8, align 4
  br label %30

137:                                              ; preds = %111
  br label %139

138:                                              ; preds = %47
  br label %139

139:                                              ; preds = %138, %137, %110
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %139
  %168 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  br label %176

172:                                              ; preds = %139
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %167
  %177 = load i32, i32* @kcf_last_req, align 4
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  store %struct.TYPE_33__* %181, %struct.TYPE_33__** %184, align 8
  %185 = load i8*, i8** @B_TRUE, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %228 [
    i32 130, label %191
    i32 131, label %197
  ]

191:                                              ; preds = %176
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %194 = load i32, i32* @KM_NOSLEEP, align 4
  %195 = call i32 @KCF_RHNDL(i32 %194)
  %196 = call i32 @common_submit_request(%struct.TYPE_30__* %192, i32* null, %struct.TYPE_29__* %193, i32 %195)
  store i32 %196, i32* %8, align 4
  br label %229

197:                                              ; preds = %176
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  store i32* %201, i32** %17, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %205 = bitcast %struct.TYPE_29__* %203 to i8*
  %206 = bitcast %struct.TYPE_29__* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 40, i1 false)
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %208, align 8
  store %struct.TYPE_30__* %209, %struct.TYPE_30__** %16, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %211 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_30__* %210)
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %213 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_30__* %212)
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 2
  store %struct.TYPE_30__* %214, %struct.TYPE_30__** %216, align 8
  %217 = load i32*, i32** %17, align 8
  %218 = load i32, i32* @process_req_hwp, align 4
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %220 = load i32, i32* @TQ_NOSLEEP, align 4
  %221 = call i32 @taskq_dispatch(i32* %217, i32 %218, %struct.TYPE_24__* %219, i32 %220)
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %197
  %224 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %224, i32* %8, align 4
  br label %227

225:                                              ; preds = %197
  %226 = load i32, i32* @CRYPTO_QUEUED, align 4
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %225, %223
  br label %229

228:                                              ; preds = %176
  br label %229

229:                                              ; preds = %228, %227, %191
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %231 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_24__* %230)
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %233 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_30__* %232)
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @CRYPTO_QUEUED, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %262

237:                                              ; preds = %229
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = bitcast %struct.TYPE_28__* %249 to i8*
  %253 = bitcast %struct.TYPE_28__* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 24, i1 false)
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %255 = call i32 @kmem_free(%struct.TYPE_33__* %254, i32 80)
  %256 = load i8*, i8** @B_FALSE, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @kcf_aop_done(%struct.TYPE_24__* %259, i32 %260)
  br label %262

262:                                              ; preds = %30, %237, %229
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @KCF_AREQ_REFRELE(%struct.TYPE_24__*) #2

declare dso_local i32 @kmem_free(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @kcf_aop_done(%struct.TYPE_24__*, i32) #2

declare dso_local %struct.TYPE_30__* @kcf_get_mech_provider(i32, %struct.TYPE_31__**, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_30__*) #2

declare dso_local i32 @common_submit_request(%struct.TYPE_30__*, i32*, %struct.TYPE_29__*, i32) #2

declare dso_local i32 @KCF_RHNDL(i32) #2

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_30__*) #2

declare dso_local i32 @taskq_dispatch(i32*, i32, %struct.TYPE_24__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
