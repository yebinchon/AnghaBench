; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-recv.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-recv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.key = internal constant [33 x i8] c"123456789ABCDEF0123456789ABCDEF0\00", align 16
@main.salt = internal constant [29 x i8] c"1234567890123456789012345678\00", align 16
@SRTP_ENCR_AES_CM = common dso_local global i32 0, align 4
@SRTP_AUTH_HMAC_SHA1 = common dso_local global i32 0, align 4
@SRTP_PRF_AES_CM = common dso_local global i32 0, align 4
@SRTP_RCC_MODE1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\80\00\00\03\00\00\00\00\00\00\00\00\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1500 x i32], align 16
  %6 = alloca [1500 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @SRTP_ENCR_AES_CM, align 4
  %11 = load i32, i32* @SRTP_AUTH_HMAC_SHA1, align 4
  %12 = load i32, i32* @SRTP_PRF_AES_CM, align 4
  %13 = call i32* @srtp_create(i32 %10, i32 %11, i32 21, i32 %12, i32 0)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @SRTP_ENCR_AES_CM, align 4
  %19 = load i32, i32* @SRTP_AUTH_HMAC_SHA1, align 4
  %20 = load i32, i32* @SRTP_PRF_AES_CM, align 4
  %21 = load i32, i32* @SRTP_RCC_MODE1, align 4
  %22 = call i32* @srtp_create(i32 %18, i32 %19, i32 3, i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @SRTP_ENCR_AES_CM, align 4
  %28 = load i32, i32* @SRTP_AUTH_HMAC_SHA1, align 4
  %29 = load i32, i32* @SRTP_PRF_AES_CM, align 4
  %30 = load i32, i32* @SRTP_RCC_MODE1, align 4
  %31 = call i32* @srtp_create(i32 %27, i32 %28, i32 20, i32 %29, i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @SRTP_ENCR_AES_CM, align 4
  %37 = load i32, i32* @SRTP_AUTH_HMAC_SHA1, align 4
  %38 = load i32, i32* @SRTP_PRF_AES_CM, align 4
  %39 = load i32, i32* @SRTP_RCC_MODE1, align 4
  %40 = call i32* @srtp_create(i32 %36, i32 %37, i32 20, i32 %38, i32 %39)
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @srtp_setrcc_rate(i32* %45, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @srtp_setrcc_rate(i32* %47, i32 1)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @srtp_setkeystring(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @main.key, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @main.salt, i64 0, i64 0))
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @srtp_setkeystring(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @main.key, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @main.salt, i64 0, i64 0))
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i64 12, i64* %7, align 8
  %61 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @memset(i32* %61, i32 0, i64 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %66 = call i32 @srtp_send(i32* %64, i32* %65, i64* %7, i32 6000)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @EINVAL, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i64 32, i64* %7, align 8
  %72 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @memset(i32* %72, i32 0, i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %77 = call i32 @srtp_recv(i32* %75, i32* %76, i64* %7)
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @EINVAL, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i64 11, i64* %7, align 8
  %83 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 128, i32* %83, align 16
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %86 = call i32 @srtp_send(i32* %84, i32* %85, i64* %7, i32 6000)
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  store i64 11, i64* %7, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %94 = call i32 @srtp_recv(i32* %92, i32* %93, i64* %7)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @EINVAL, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  store i64 31, i64* %7, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %102 = call i32 @srtp_recv(i32* %100, i32* %101, i64* %7)
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @EINVAL, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  store i64 15, i64* %7, align 8
  %108 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 144, i32* %108, align 16
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %111 = call i32 @srtp_send(i32* %109, i32* %110, i64* %7, i32 6000)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @EINVAL, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  store i64 16, i64* %7, align 8
  %117 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 144, i32* %117, align 16
  %118 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 15
  store i32 1, i32* %118, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %121 = call i32 @srtp_send(i32* %119, i32* %120, i64* %7, i32 6000)
  store i32 %121, i32* %2, align 4
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @EINVAL, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i64 20, i64* %7, align 8
  %127 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @memset(i32* %127, i32 0, i64 %128)
  %130 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 128, i32* %130, align 16
  %131 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %131, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %134 = call i32 @srtp_send(i32* %132, i32* %133, i64* %7, i32 39)
  store i32 %134, i32* %2, align 4
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* @ENOSPC, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %140, 40
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  store i64 31, i64* %7, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %146 = call i32 @srtp_recv(i32* %144, i32* %145, i64* %7)
  store i32 %146, i32* %2, align 4
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @EINVAL, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 128, i32* %152, align 16
  %153 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 3
  store i32 3, i32* %153, align 4
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %163, %0
  %155 = load i32, i32* %8, align 4
  %156 = icmp ult i32 %155, 256
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, 12
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %154

166:                                              ; preds = %154
  store i64 268, i64* %7, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %169 = call i32 @srtp_send(i32* %167, i32* %168, i64* %7, i32 288)
  store i32 %169, i32* %2, align 4
  %170 = load i32, i32* %2, align 4
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i64, i64* %7, align 8
  %175 = icmp eq i64 %174, 288
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 0
  %179 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @memcpy(i32* %178, i32* %179, i64 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 0
  %184 = call i32 @srtp_recv(i32* %182, i32* %183, i64* %7)
  store i32 %184, i32* %2, align 4
  %185 = load i32, i32* %2, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i64, i64* %7, align 8
  %190 = icmp eq i64 %189, 268
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 0
  %194 = call i32 @memcmp(i32* %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %212, %166
  %200 = load i32, i32* %9, align 4
  %201 = icmp ult i32 %200, 256
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load i32, i32* %9, align 4
  %204 = add i32 %203, 12
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  br label %212

212:                                              ; preds = %202
  %213 = load i32, i32* %9, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %199

215:                                              ; preds = %199
  store i64 288, i64* %7, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %218 = call i32 @srtp_recv(i32* %216, i32* %217, i64* %7)
  store i32 %218, i32* %2, align 4
  %219 = load i32, i32* %2, align 4
  %220 = load i32, i32* @EACCES, align 4
  %221 = icmp eq i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load i64, i64* %7, align 8
  %225 = icmp eq i64 %224, 268
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  store i32 128, i32* %228, align 16
  %229 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 3
  store i32 2, i32* %229, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %232 = call i32 @srtp_send(i32* %230, i32* %231, i64* %7, i32 288)
  store i32 %232, i32* %2, align 4
  %233 = load i32, i32* %2, align 4
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load i64, i64* %7, align 8
  %238 = icmp eq i64 %237, 288
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 0
  %242 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %243 = load i64, i64* %7, align 8
  %244 = call i32 @memcpy(i32* %241, i32* %242, i64 %243)
  %245 = load i32*, i32** %3, align 8
  %246 = getelementptr inbounds [1500 x i32], [1500 x i32]* %6, i64 0, i64 0
  %247 = call i32 @srtp_recv(i32* %245, i32* %246, i64* %7)
  store i32 %247, i32* %2, align 4
  %248 = load i32, i32* %2, align 4
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = load i64, i64* %7, align 8
  %253 = icmp eq i64 %252, 268
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  store i64 288, i64* %7, align 8
  %256 = load i32*, i32** %3, align 8
  %257 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %258 = call i32 @srtp_recv(i32* %256, i32* %257, i64* %7)
  store i32 %258, i32* %2, align 4
  %259 = load i32, i32* %2, align 4
  %260 = load i32, i32* @EACCES, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load i64, i64* %7, align 8
  %265 = icmp eq i64 %264, 268
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i32*, i32** %4, align 8
  %269 = call i32 @srtp_destroy(i32* %268)
  %270 = load i32*, i32** %3, align 8
  %271 = call i32 @srtp_destroy(i32* %270)
  ret i32 0
}

declare dso_local i32* @srtp_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @srtp_setrcc_rate(i32*, i32) #1

declare dso_local i32 @srtp_setkeystring(i32*, i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @srtp_send(i32*, i32*, i64*, i32) #1

declare dso_local i32 @srtp_recv(i32*, i32*, i64*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @srtp_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
