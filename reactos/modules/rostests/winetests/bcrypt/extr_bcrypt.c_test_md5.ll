; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_md5.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/bcrypt/extr_bcrypt.c_test_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_md5.expected = internal constant [33 x i8] c"e2a3e68d23ce348b8f68b3079de3d4c9\00", align 16
@test_md5.expected_hmac = internal constant [33 x i8] c"7bda029b93fa8d817fcc9e13d6bdf092\00", align 16
@BCRYPT_MD5_ALGORITHM = common dso_local global i32 0, align 4
@MS_PRIMITIVE_PROVIDER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"alg not set\0A\00", align 1
@BCRYPT_OBJECT_LENGTH = common dso_local global i32* null, align 8
@STATUS_INVALID_HANDLE = common dso_local global i8* null, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"len not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"hash not set\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@BCRYPT_ALG_HANDLE_HMAC_FLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md5() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [512 x i32], align 16
  %4 = alloca [1024 x i32], align 16
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [65 x i8], align 16
  %10 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  %11 = load i32, i32* @BCRYPT_MD5_ALGORITHM, align 4
  %12 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %13 = call i8* @BCryptOpenAlgorithmProvider(i32** %1, i32 %11, i32 %12, i32 0)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i8*, i8** @STATUS_SUCCESS, align 8
  %16 = icmp eq i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %24 = load i32*, i32** @BCRYPT_OBJECT_LENGTH, align 8
  %25 = call i8* @BCryptGetProperty(i32* null, i32* %24, i32* %8, i32 4, i32* %7, i32 0)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** @STATUS_INVALID_HANDLE, align 8
  %28 = icmp eq i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %32 = load i32*, i32** %1, align 8
  %33 = call i8* @BCryptGetProperty(i32* %32, i32* null, i32* %8, i32 4, i32* %7, i32 0)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %36 = icmp eq i8* %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** @BCRYPT_OBJECT_LENGTH, align 8
  %42 = call i8* @BCryptGetProperty(i32* %40, i32* %41, i32* %8, i32 4, i32* null, i32 0)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %45 = icmp eq i8* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** @BCRYPT_OBJECT_LENGTH, align 8
  %51 = call i8* @BCryptGetProperty(i32* %49, i32* %50, i32* null, i32 4, i32* %7, i32 0)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** @STATUS_SUCCESS, align 8
  %54 = icmp eq i8* %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %59, 4
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** @BCRYPT_OBJECT_LENGTH, align 8
  %66 = call i8* @BCryptGetProperty(i32* %64, i32* %65, i32* %8, i32 0, i32* %7, i32 0)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** @STATUS_BUFFER_TOO_SMALL, align 8
  %69 = icmp eq i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, -559038737
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 4
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %8, align 4
  %84 = load i32*, i32** %1, align 8
  %85 = load i32*, i32** @BCRYPT_OBJECT_LENGTH, align 8
  %86 = call i8* @BCryptGetProperty(i32* %84, i32* %85, i32* %8, i32 4, i32* %7, i32 0)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** @STATUS_SUCCESS, align 8
  %89 = icmp eq i8* %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, -559038737
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %98, 4
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @test_hash_length(i32* %103, i32 16)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @test_alg_name(i32* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 2048, i32* %8, align 4
  %107 = load i32*, i32** %1, align 8
  %108 = getelementptr inbounds [512 x i32], [512 x i32]* %3, i64 0, i64 0
  %109 = load i32, i32* %8, align 4
  %110 = call i8* @BCryptCreateHash(i32* %107, i32** %2, i32* %108, i32 %109, i32* null, i32 0, i32 0)
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** @STATUS_SUCCESS, align 8
  %113 = icmp eq i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %2, align 8
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32*, i32** %2, align 8
  %122 = call i8* @BCryptHashData(i32* %121, i32* null, i32 0, i32 0)
  store i8* %122, i8** %10, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** @STATUS_SUCCESS, align 8
  %125 = icmp eq i8* %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i8* @BCryptHashData(i32* %129, i32* bitcast ([5 x i8]* @.str.6 to i32*), i32 5, i32 0)
  store i8* %130, i8** %10, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** @STATUS_SUCCESS, align 8
  %133 = icmp eq i8* %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @test_hash_length(i32* %137, i32 16)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @test_alg_name(i32* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %142 = call i32 @memset(i32* %141, i32 0, i32 64)
  %143 = load i32*, i32** %2, align 8
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %145 = call i8* @BCryptFinishHash(i32* %143, i32* %144, i32 64, i32 0)
  store i8* %145, i8** %10, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i8*, i8** @STATUS_SUCCESS, align 8
  %148 = icmp eq i8* %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %150)
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %153 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %154 = call i32 @format_hash(i32* %152, i32 64, i8* %153)
  %155 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_md5.expected, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i8* @BCryptDestroyHash(i32* %162)
  store i8* %163, i8** %10, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** @STATUS_SUCCESS, align 8
  %166 = icmp eq i8* %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %168)
  %170 = load i32*, i32** %1, align 8
  %171 = call i8* @BCryptCloseAlgorithmProvider(i32* %170, i32 0)
  store i8* %171, i8** %10, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = load i8*, i8** @STATUS_SUCCESS, align 8
  %174 = icmp eq i8* %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %176)
  store i32* null, i32** %1, align 8
  %178 = load i32, i32* @BCRYPT_MD5_ALGORITHM, align 4
  %179 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %180 = load i32, i32* @BCRYPT_ALG_HANDLE_HMAC_FLAG, align 4
  %181 = call i8* @BCryptOpenAlgorithmProvider(i32** %1, i32 %178, i32 %179, i32 %180)
  store i8* %181, i8** %10, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i8*, i8** @STATUS_SUCCESS, align 8
  %184 = icmp eq i8* %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %186)
  %188 = load i32*, i32** %1, align 8
  %189 = icmp ne i32* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 4096, i32* %8, align 4
  %192 = load i32*, i32** %1, align 8
  %193 = getelementptr inbounds [1024 x i32], [1024 x i32]* %4, i64 0, i64 0
  %194 = load i32, i32* %8, align 4
  %195 = call i8* @BCryptCreateHash(i32* %192, i32** %2, i32* %193, i32 %194, i32* bitcast ([4 x i8]* @.str.8 to i32*), i32 4, i32 0)
  store i8* %195, i8** %10, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = load i8*, i8** @STATUS_SUCCESS, align 8
  %198 = icmp eq i8* %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %200)
  %202 = load i32*, i32** %2, align 8
  %203 = icmp ne i32* %202, null
  %204 = zext i1 %203 to i32
  %205 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32*, i32** %2, align 8
  %207 = call i8* @BCryptHashData(i32* %206, i32* bitcast ([5 x i8]* @.str.6 to i32*), i32 5, i32 0)
  store i8* %207, i8** %10, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = load i8*, i8** @STATUS_SUCCESS, align 8
  %210 = icmp eq i8* %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %212)
  %214 = load i32*, i32** %2, align 8
  %215 = call i32 @test_hash_length(i32* %214, i32 16)
  %216 = load i32*, i32** %2, align 8
  %217 = call i32 @test_alg_name(i32* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %219 = call i32 @memset(i32* %218, i32 0, i32 64)
  %220 = load i32*, i32** %2, align 8
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %222 = call i8* @BCryptFinishHash(i32* %220, i32* %221, i32 64, i32 0)
  store i8* %222, i8** %10, align 8
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** @STATUS_SUCCESS, align 8
  %225 = icmp eq i8* %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %227)
  %229 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %230 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %231 = call i32 @format_hash(i32* %229, i32 64, i8* %230)
  %232 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_md5.expected_hmac, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %238 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %237)
  %239 = load i32*, i32** %2, align 8
  %240 = call i8* @BCryptDestroyHash(i32* %239)
  store i8* %240, i8** %10, align 8
  %241 = load i8*, i8** %10, align 8
  %242 = load i8*, i8** @STATUS_SUCCESS, align 8
  %243 = icmp eq i8* %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %245)
  %247 = load i32*, i32** %1, align 8
  %248 = call i8* @BCryptCloseAlgorithmProvider(i32* %247, i32 0)
  store i8* %248, i8** %10, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = load i8*, i8** @STATUS_SUCCESS, align 8
  %251 = icmp eq i8* %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i8*, i8** %10, align 8
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %253)
  ret void
}

declare dso_local i8* @BCryptOpenAlgorithmProvider(i32**, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @BCryptGetProperty(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @test_hash_length(i32*, i32) #1

declare dso_local i32 @test_alg_name(i32*, i8*) #1

declare dso_local i8* @BCryptCreateHash(i32*, i32**, i32*, i32, i32*, i32, i32) #1

declare dso_local i8* @BCryptHashData(i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @BCryptFinishHash(i32*, i32*, i32, i32) #1

declare dso_local i32 @format_hash(i32*, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @BCryptDestroyHash(i32*) #1

declare dso_local i8* @BCryptCloseAlgorithmProvider(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
