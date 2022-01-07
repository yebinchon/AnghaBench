; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_can_resubmit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_can_resubmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_24__, %struct.TYPE_26__, %struct.TYPE_16__, %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_21__, %struct.TYPE_23__, %struct.TYPE_27__ }
%struct.TYPE_24__ = type { %struct.TYPE_18__, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_18__, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_18__, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_FG_DIGEST = common dso_local global i32 0, align 4
@CRYPTO_FG_DIGEST_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_SIGN = common dso_local global i32 0, align 4
@CRYPTO_FG_SIGN_ATOMIC = common dso_local global i32 0, align 4
@KCF_OP_SIGN_RECOVER_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_SIGN_RECOVER_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_VERIFY = common dso_local global i32 0, align 4
@CRYPTO_FG_VERIFY_ATOMIC = common dso_local global i32 0, align 4
@KCF_OP_VERIFY_RECOVER_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_VERIFY_RECOVER_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_ENCRYPT = common dso_local global i32 0, align 4
@CRYPTO_FG_ENCRYPT_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_DECRYPT = common dso_local global i32 0, align 4
@CRYPTO_FG_DECRYPT_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_ENCRYPT_MAC = common dso_local global i32 0, align 4
@CRYPTO_FG_ENCRYPT_MAC_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC_DECRYPT = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC_DECRYPT_ATOMIC = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**, i32*)* @can_resubmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_resubmit(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @IS_INIT_OP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @IS_ATOMIC_OP(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @B_FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %250

34:                                               ; preds = %28, %4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %246 [
    i32 136, label %38
    i32 133, label %60
    i32 131, label %82
    i32 130, label %111
    i32 135, label %140
    i32 137, label %162
    i32 134, label %184
    i32 132, label %215
  ]

38:                                               ; preds = %34
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 7
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %12, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @CRYPTO_FG_DIGEST, align 4
  br label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @CRYPTO_FG_DIGEST_ATOMIC, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %248

60:                                               ; preds = %34
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 6
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %13, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* @CRYPTO_FG_MAC, align 4
  br label %79

77:                                               ; preds = %60
  %78 = load i32, i32* @CRYPTO_FG_MAC_ATOMIC, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %248

82:                                               ; preds = %34
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %14, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %94, align 8
  %95 = load i32, i32* %11, align 4
  switch i32 %95, label %102 [
    i32 128, label %96
    i32 129, label %99
  ]

96:                                               ; preds = %82
  %97 = load i32, i32* @CRYPTO_FG_SIGN, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %110

99:                                               ; preds = %82
  %100 = load i32, i32* @CRYPTO_FG_SIGN_ATOMIC, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  br label %110

102:                                              ; preds = %82
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @KCF_OP_SIGN_RECOVER_ATOMIC, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i32, i32* @CRYPTO_FG_SIGN_RECOVER_ATOMIC, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %99, %96
  br label %248

111:                                              ; preds = %34
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  store %struct.TYPE_20__* %114, %struct.TYPE_20__** %15, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %122, %struct.TYPE_18__** %123, align 8
  %124 = load i32, i32* %11, align 4
  switch i32 %124, label %131 [
    i32 128, label %125
    i32 129, label %128
  ]

125:                                              ; preds = %111
  %126 = load i32, i32* @CRYPTO_FG_VERIFY, align 4
  %127 = load i32*, i32** %9, align 8
  store i32 %126, i32* %127, align 4
  br label %139

128:                                              ; preds = %111
  %129 = load i32, i32* @CRYPTO_FG_VERIFY_ATOMIC, align 4
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %139

131:                                              ; preds = %111
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @KCF_OP_VERIFY_RECOVER_ATOMIC, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ASSERT(i32 %135)
  %137 = load i32, i32* @CRYPTO_FG_VERIFY_RECOVER_ATOMIC, align 4
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %128, %125
  br label %248

140:                                              ; preds = %34
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  store %struct.TYPE_25__* %143, %struct.TYPE_25__** %16, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 128
  br i1 %154, label %155, label %157

155:                                              ; preds = %140
  %156 = load i32, i32* @CRYPTO_FG_ENCRYPT, align 4
  br label %159

157:                                              ; preds = %140
  %158 = load i32, i32* @CRYPTO_FG_ENCRYPT_ATOMIC, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  br label %248

162:                                              ; preds = %34
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %17, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %179

177:                                              ; preds = %162
  %178 = load i32, i32* @CRYPTO_FG_DECRYPT, align 4
  br label %181

179:                                              ; preds = %162
  %180 = load i32, i32* @CRYPTO_FG_DECRYPT_ATOMIC, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  br label %248

184:                                              ; preds = %34
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  store %struct.TYPE_26__* %187, %struct.TYPE_26__** %18, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %196, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %204, %struct.TYPE_18__** %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 128
  br i1 %207, label %208, label %210

208:                                              ; preds = %184
  %209 = load i32, i32* @CRYPTO_FG_ENCRYPT_MAC, align 4
  br label %212

210:                                              ; preds = %184
  %211 = load i32, i32* @CRYPTO_FG_ENCRYPT_MAC_ATOMIC, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = load i32*, i32** %9, align 8
  store i32 %213, i32* %214, align 4
  br label %248

215:                                              ; preds = %34
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  store %struct.TYPE_24__* %218, %struct.TYPE_24__** %19, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %226, %struct.TYPE_18__** %227, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %236, align 8
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %237, 128
  br i1 %238, label %239, label %241

239:                                              ; preds = %215
  %240 = load i32, i32* @CRYPTO_FG_MAC_DECRYPT, align 4
  br label %243

241:                                              ; preds = %215
  %242 = load i32, i32* @CRYPTO_FG_MAC_DECRYPT_ATOMIC, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  %245 = load i32*, i32** %9, align 8
  store i32 %244, i32* %245, align 4
  br label %248

246:                                              ; preds = %34
  %247 = load i32, i32* @B_FALSE, align 4
  store i32 %247, i32* %5, align 4
  br label %250

248:                                              ; preds = %243, %212, %181, %159, %139, %110, %79, %57
  %249 = load i32, i32* @B_TRUE, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %246, %32
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i64 @IS_INIT_OP(i32) #1

declare dso_local i64 @IS_ATOMIC_OP(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
