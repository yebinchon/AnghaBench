; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_hkdf.c_hkdf_sha512_expand.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_hkdf.c_hkdf_sha512_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i64, i8* }
%struct.TYPE_9__ = type { i8*, i32 }

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN_CKM_SHA512_HMAC = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i32 0, align 4
@CRYPTO_DATA_RAW = common dso_local global i8* null, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32)* @hkdf_sha512_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkdf_sha512_expand(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %24, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %25, align 8
  %36 = load i32, i32* %23, align 4
  %37 = icmp sgt i32 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

41:                                               ; preds = %5
  %42 = load i32, i32* @SUN_CKM_SHA512_HMAC, align 4
  %43 = call i32 @crypto_mech2id(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @CRYPTO_KEY_RAW, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %50 = call i32 @CRYPTO_BYTES2BITS(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  %54 = load i8*, i8** @CRYPTO_DATA_RAW, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = bitcast i32* %35 to i8*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @CRYPTO_DATA_RAW, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = bitcast i32* %22 to i8*
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @CRYPTO_DATA_RAW, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  store i32 1, i32* %19, align 4
  br label %84

84:                                               ; preds = %166, %41
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %169

88:                                               ; preds = %84
  %89 = load i32, i32* %19, align 4
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %20, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = call i32 @crypto_mac_init(%struct.TYPE_10__* %13, %struct.TYPE_11__* %15, i32* null, i32* %14, i32* null)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* @EIO, align 4
  %102 = call i32 @SET_ERROR(i32 %101)
  store i32 %102, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

103:                                              ; preds = %88
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @crypto_mac_update(i32 %104, %struct.TYPE_12__* %16, i32* null)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EIO, align 4
  %111 = call i32 @SET_ERROR(i32 %110)
  store i32 %111, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

112:                                              ; preds = %103
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @crypto_mac_update(i32 %113, %struct.TYPE_12__* %17, i32* null)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EIO, align 4
  %120 = call i32 @SET_ERROR(i32 %119)
  store i32 %120, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

121:                                              ; preds = %112
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @crypto_mac_update(i32 %122, %struct.TYPE_12__* %18, i32* null)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EIO, align 4
  %129 = call i32 @SET_ERROR(i32 %128)
  store i32 %129, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

130:                                              ; preds = %121
  %131 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @crypto_mac_final(i32 %138, %struct.TYPE_12__* %16, i32* null)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load i32, i32* @EIO, align 4
  %145 = call i32 @SET_ERROR(i32 %144)
  store i32 %145, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

146:                                              ; preds = %130
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  br label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %21, align 4
  %159 = sub nsw i32 %157, %158
  br label %160

160:                                              ; preds = %156, %154
  %161 = phi i32 [ %155, %154 ], [ %159, %156 ]
  %162 = call i32 @bcopy(i32* %35, i32* %150, i32 %161)
  %163 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %21, align 4
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %84

169:                                              ; preds = %84
  store i32 0, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %170

170:                                              ; preds = %169, %143, %127, %118, %109, %100, %38
  %171 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @crypto_mech2id(i32) #2

declare dso_local i32 @CRYPTO_BYTES2BITS(i32) #2

declare dso_local i32 @crypto_mac_init(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32*) #2

declare dso_local i32 @crypto_mac_update(i32, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @crypto_mac_final(i32, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
