; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_do_crypt_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_do_crypt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@zio_crypt_table = common dso_local global %struct.TYPE_9__* null, align 8
@MASTER_KEY_MAX_LEN = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i32 0, align 4
@DMU_OT_INTENT_LOG = common dso_local global i64 0, align 8
@DMU_OT_DNODE = common dso_local global i64 0, align 8
@QAT_ENCRYPT = common dso_local global i32 0, align 4
@QAT_DECRYPT = common dso_local global i32 0, align 4
@CPA_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_do_crypt_data(i64 %0, %struct.TYPE_7__* %1, i64 %2, i64 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8, i32* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_8__, align 8
  %35 = alloca %struct.TYPE_8__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  store i64 %0, i64* %13, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i64* %10, i64** %23, align 8
  %41 = load i64, i64* @B_FALSE, align 8
  store i64 %41, i64* %25, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %26, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @zio_crypt_table, align 8
  %46 = load i64, i64* %26, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %27, align 4
  %50 = load i32, i32* @MASTER_KEY_MAX_LEN, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %32, align 8
  %53 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %33, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %35, align 8
  store i32* null, i32** %37, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* @RW_READER, align 4
  %57 = call i32 @rw_enter(i32* %55, i32 %56)
  %58 = load i64, i64* @B_TRUE, align 8
  store i64 %58, i64* %25, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %64 = call i64 @bcmp(i32* %59, i32 %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %11
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %35, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %36, align 8
  br label %95

72:                                               ; preds = %11
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = call i32 @rw_exit(i32* %74)
  %76 = load i64, i64* @B_FALSE, align 8
  store i64 %76, i64* %25, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %27, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %83 = load i32, i32* %27, align 4
  %84 = call i32 @hkdf_sha512(i32 %79, i32 %80, i32* null, i32 0, i32* %81, i32 %82, i32* %53, i32 %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %205

88:                                               ; preds = %72
  %89 = load i32, i32* @CRYPTO_KEY_RAW, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32* %53, i32** %91, align 8
  %92 = load i32, i32* %27, align 4
  %93 = call i32 @CRYPTO_BYTES2BITS(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %35, align 8
  store i32* null, i32** %36, align 8
  br label %95

95:                                               ; preds = %88, %66
  %96 = load i32, i32* %20, align 4
  %97 = call i64 @qat_crypt_use_accel(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %95
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @DMU_OT_INTENT_LOG, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %148

103:                                              ; preds = %99
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @DMU_OT_DNODE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %21, align 8
  store i32* %111, i32** %38, align 8
  %112 = load i32*, i32** %22, align 8
  store i32* %112, i32** %39, align 8
  br label %116

113:                                              ; preds = %107
  %114 = load i32*, i32** %22, align 8
  store i32* %114, i32** %38, align 8
  %115 = load i32*, i32** %21, align 8
  store i32* %115, i32** %39, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @QAT_ENCRYPT, align 4
  br label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @QAT_DECRYPT, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32*, i32** %38, align 8
  %126 = load i32*, i32** %39, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @qat_crypt(i32 %124, i32* %125, i32* %126, i32* null, i32 0, i32* %127, i32* %128, %struct.TYPE_8__* %129, i64 %132, i32 %133)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* @CPA_STATUS_SUCCESS, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %123
  %139 = load i64, i64* %25, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = call i32 @rw_exit(i32* %143)
  %145 = load i64, i64* @B_FALSE, align 8
  store i64 %145, i64* %25, align 8
  br label %146

146:                                              ; preds = %141, %138
  store i32 0, i32* %12, align 4
  store i32 1, i32* %40, align 4
  br label %229

147:                                              ; preds = %123
  br label %148

148:                                              ; preds = %147, %103, %99, %95
  %149 = call i32 @bzero(i32* %30, i32 4)
  %150 = call i32 @bzero(i32* %31, i32 4)
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* %15, align 8
  %156 = load i32*, i32** %21, align 8
  %157 = load i32*, i32** %22, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i64, i64* %16, align 8
  %160 = load i32*, i32** %19, align 8
  %161 = load i64*, i64** %23, align 8
  %162 = call i32 @zio_crypt_init_uios(i64 %151, i32 %154, i64 %155, i32* %156, i32* %157, i32 %158, i64 %159, i32* %160, i32* %30, i32* %31, i32* %28, i32** %37, i32* %29, i64* %161)
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %148
  br label %205

166:                                              ; preds = %148
  %167 = load i64, i64* %13, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %172 = load i32*, i32** %36, align 8
  %173 = load i32*, i32** %18, align 8
  %174 = load i32, i32* %28, align 4
  %175 = load i32*, i32** %37, align 8
  %176 = load i32, i32* %29, align 4
  %177 = call i32 @zio_do_crypt_uio(i64 %167, i64 %170, %struct.TYPE_8__* %171, i32* %172, i32* %173, i32 %174, i32* %30, i32* %31, i32* %175, i32 %176)
  store i32 %177, i32* %24, align 4
  %178 = load i32, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %166
  br label %205

181:                                              ; preds = %166
  %182 = load i64, i64* %25, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = call i32 @rw_exit(i32* %186)
  %188 = load i64, i64* @B_FALSE, align 8
  store i64 %188, i64* %25, align 8
  br label %189

189:                                              ; preds = %184, %181
  %190 = load i32*, i32** %37, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32*, i32** %37, align 8
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @zio_buf_free(i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %189
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %198 = icmp eq %struct.TYPE_8__* %197, %34
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %27, align 4
  %201 = call i32 @bzero(i32* %53, i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = call i32 @zio_crypt_destroy_uio(i32* %30)
  %204 = call i32 @zio_crypt_destroy_uio(i32* %31)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %40, align 4
  br label %229

205:                                              ; preds = %180, %165, %87
  %206 = load i64, i64* %25, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = call i32 @rw_exit(i32* %210)
  br label %212

212:                                              ; preds = %208, %205
  %213 = load i32*, i32** %37, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32*, i32** %37, align 8
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @zio_buf_free(i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %212
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %221 = icmp eq %struct.TYPE_8__* %220, %34
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %27, align 4
  %224 = call i32 @bzero(i32* %53, i32 %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = call i32 @zio_crypt_destroy_uio(i32* %30)
  %227 = call i32 @zio_crypt_destroy_uio(i32* %31)
  %228 = load i32, i32* %24, align 4
  store i32 %228, i32* %12, align 4
  store i32 1, i32* %40, align 4
  br label %229

229:                                              ; preds = %225, %202, %146
  %230 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %12, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local i64 @bcmp(i32*, i32, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @hkdf_sha512(i32, i32, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @CRYPTO_BYTES2BITS(i32) #2

declare dso_local i64 @qat_crypt_use_accel(i32) #2

declare dso_local i32 @qat_crypt(i32, i32*, i32*, i32*, i32, i32*, i32*, %struct.TYPE_8__*, i64, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @zio_crypt_init_uios(i64, i32, i64, i32*, i32*, i32, i64, i32*, i32*, i32*, i32*, i32**, i32*, i64*) #2

declare dso_local i32 @zio_do_crypt_uio(i64, i64, %struct.TYPE_8__*, i32*, i32*, i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @zio_buf_free(i32*, i32) #2

declare dso_local i32 @zio_crypt_destroy_uio(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
