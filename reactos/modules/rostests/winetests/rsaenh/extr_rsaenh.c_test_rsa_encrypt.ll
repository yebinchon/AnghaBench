; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_rsa_encrypt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_rsa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_rsa_encrypt.abData = private unnamed_addr constant [2048 x i8] c"Wine rocks!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@hProv = common dso_local global i32 0, align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ENHANCED_PROV = common dso_local global i32 0, align 4
@NTE_BAD_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CryptEncrypt failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unexpected length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Wine rocks!\00", align 1
@CRYPT_OAEP = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@NTE_BAD_LEN = common dso_local global i32 0, align 4
@NTE_BAD_DATA = common dso_local global i32 0, align 4
@NTE_DOUBLE_ENCRYPT = common dso_local global i32 0, align 4
@ERROR_NO_TOKEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%08x %d %08x\0A\00", align 1
@KP_PERMISSIONS = common dso_local global i32 0, align 4
@CRYPT_MAC = common dso_local global i32 0, align 4
@CRYPT_WRITE = common dso_local global i32 0, align 4
@CRYPT_READ = common dso_local global i32 0, align 4
@CRYPT_DECRYPT = common dso_local global i32 0, align 4
@CRYPT_ENCRYPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT, got %08x\0A\00", align 1
@KP_SALT = common dso_local global i32 0, align 4
@NTE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"expected NTE_BAD_KEY or NTE_NOT_FOUND, got %08x\0A\00", align 1
@PUBLICKEYBLOB = common dso_local global i32 0, align 4
@PRIVATEKEYBLOB = common dso_local global i32 0, align 4
@NTE_BAD_KEY_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"expected NTE_BAD_KEY_STATE, got %08x\0A\00", align 1
@CRYPT_EXPORT = common dso_local global i32 0, align 4
@NTE_BAD_FLAGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"expected NTE_BAD_DATA or NTE_BAD_FLAGS, got %08x\0A\00", align 1
@AT_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rsa_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rsa_encrypt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2048 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [2048 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([2048 x i8], [2048 x i8]* @__const.test_rsa_encrypt.abData, i32 0, i32 0), i64 2048, i1 false)
  %8 = load i32, i32* @hProv, align 4
  %9 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %10 = call i32 @CryptGetUserKey(i32 %8, i32 %9, i32* %1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 (i32, i8*, i32, ...) @ok(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %425

17:                                               ; preds = %0
  store i32 12, i32* %5, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @CryptEncrypt(i32 %18, i32 0, i32 %19, i32 0, i8* null, i32* %5, i32 2048)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @ENHANCED_PROV, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @GetLastError()
  %28 = load i32, i32* @NTE_BAD_KEY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @CryptDestroyKey(i32 %31)
  br label %425

33:                                               ; preds = %26, %23, %17
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 128
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 12, i32* %5, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %45 = call i32 @CryptEncrypt(i32 %42, i32 0, i32 %43, i32 0, i8* %44, i32* %5, i32 2048)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %33
  br label %425

52:                                               ; preds = %33
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %56 = call i32 @CryptDecrypt(i32 %53, i32 0, i32 %54, i32 0, i8* %55, i32* %5)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %64 = call i32 @memcmp(i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %62, %59, %52
  %68 = phi i1 [ false, %59 ], [ false, %52 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 1, i32* %5, align 4
  %72 = call i32 @SetLastError(i32 -559038737)
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32, i32* @CRYPT_OAEP, align 4
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %77 = call i32 @CryptEncrypt(i32 %73, i32 0, i32 %74, i32 %75, i8* %76, i32* %5, i32 42)
  store i32 %77, i32* %3, align 4
  %78 = call i32 (...) @GetLastError()
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ERROR_MORE_DATA, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %67
  %86 = phi i1 [ false, %67 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 2007, i32* %5, align 4
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32, i32* @CRYPT_OAEP, align 4
  %93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %94 = call i32 @CryptEncrypt(i32 %90, i32 0, i32 %91, i32 %92, i8* %93, i32* %5, i32 2048)
  store i32 %94, i32* %3, align 4
  %95 = call i32 (...) @GetLastError()
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @NTE_BAD_LEN, align 4
  %101 = icmp eq i32 %99, %100
  br label %102

102:                                              ; preds = %98, %85
  %103 = phi i1 [ false, %85 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %105)
  store i32 12, i32* %5, align 4
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @memcpy(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i32, i32* @CRYPT_OAEP, align 4
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %115 = call i32 @CryptDecrypt(i32 %111, i32 0, i32 %112, i32 %113, i8* %114, i32* %5)
  store i32 %115, i32* %3, align 4
  %116 = call i32 (...) @GetLastError()
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @NTE_BAD_DATA, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @NTE_DOUBLE_ENCRYPT, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @broken(i32 %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %123, %119
  %131 = phi i1 [ true, %119 ], [ %129, %123 ]
  br label %132

132:                                              ; preds = %130, %102
  %133 = phi i1 [ false, %102 ], [ %131, %130 ]
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %135)
  store i32 12, i32* %5, align 4
  %137 = call i32 @SetLastError(i32 -559038737)
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %139 = call i32 @memcpy(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* @TRUE, align 4
  %142 = load i32, i32* @CRYPT_OAEP, align 4
  %143 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %144 = call i32 @CryptEncrypt(i32 %140, i32 0, i32 %141, i32 %142, i8* %143, i32* %5, i32 2048)
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 (...) @GetLastError()
  %147 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %146)
  store i32 11, i32* %5, align 4
  %148 = call i32 @SetLastError(i32 -559038737)
  %149 = load i32, i32* %1, align 4
  %150 = load i32, i32* @TRUE, align 4
  %151 = load i32, i32* @CRYPT_OAEP, align 4
  %152 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %153 = call i32 @CryptDecrypt(i32 %149, i32 0, i32 %150, i32 %151, i8* %152, i32* %5)
  store i32 %153, i32* %3, align 4
  %154 = call i32 (...) @GetLastError()
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %132
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 11
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @NTE_BAD_DATA, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %180, label %164

164:                                              ; preds = %160, %157, %132
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @TRUE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = icmp eq i32 %169, 12
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @ERROR_NO_TOKEN, align 4
  %174 = icmp eq i32 %172, %173
  br label %175

175:                                              ; preds = %171, %168, %164
  %176 = phi i1 [ false, %168 ], [ false, %164 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = call i64 @broken(i32 %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %175, %160
  %181 = phi i1 [ true, %160 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 (i32, i8*, i32, ...) @ok(i32 %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %183, i32 %184, i32 %185)
  store i32 12, i32* %5, align 4
  %187 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @memcpy(i8* %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %1, align 4
  %191 = load i32, i32* @TRUE, align 4
  %192 = load i32, i32* @CRYPT_OAEP, align 4
  %193 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %194 = call i32 @CryptEncrypt(i32 %190, i32 0, i32 %191, i32 %192, i8* %193, i32* %5, i32 2048)
  store i32 %194, i32* %3, align 4
  %195 = load i32, i32* %3, align 4
  %196 = call i32 (...) @GetLastError()
  %197 = call i32 (i32, i8*, i32, ...) @ok(i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* @TRUE, align 4
  %200 = load i32, i32* @CRYPT_OAEP, align 4
  %201 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %202 = call i32 @CryptDecrypt(i32 %198, i32 0, i32 %199, i32 %200, i8* %201, i32* %5)
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %180
  %206 = load i32, i32* %5, align 4
  %207 = icmp eq i32 %206, 12
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %210 = call i32 @memcmp(i8* %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  br label %213

213:                                              ; preds = %208, %205, %180
  %214 = phi i1 [ false, %205 ], [ false, %180 ], [ %212, %208 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, i32, ...) @ok(i32 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %216)
  store i32 -559038737, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %218 = load i32, i32* %1, align 4
  %219 = load i32, i32* @KP_PERMISSIONS, align 4
  %220 = bitcast i32* %4 to i8*
  %221 = call i32 @CryptGetKeyParam(i32 %218, i32 %219, i8* %220, i32* %5, i32 0)
  store i32 %221, i32* %3, align 4
  %222 = load i32, i32* %3, align 4
  %223 = call i32 (...) @GetLastError()
  %224 = call i32 (i32, i8*, i32, ...) @ok(i32 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @CRYPT_MAC, align 4
  %227 = load i32, i32* @CRYPT_WRITE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @CRYPT_READ, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @CRYPT_DECRYPT, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @CRYPT_ENCRYPT, align 4
  %234 = or i32 %232, %233
  %235 = icmp eq i32 %225, %234
  br i1 %235, label %242, label %236

236:                                              ; preds = %213
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, -1
  %239 = zext i1 %238 to i32
  %240 = call i64 @broken(i32 %239)
  %241 = icmp ne i64 %240, 0
  br label %242

242:                                              ; preds = %236, %213
  %243 = phi i1 [ true, %213 ], [ %241, %236 ]
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %4, align 4
  %246 = call i32 (i32, i8*, i32, ...) @ok(i32 %244, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %1, align 4
  %248 = load i32, i32* @KP_SALT, align 4
  %249 = call i32 @CryptGetKeyParam(i32 %247, i32 %248, i8* null, i32* %5, i32 0)
  store i32 %249, i32* %3, align 4
  %250 = load i32, i32* %3, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %242
  %253 = call i32 (...) @GetLastError()
  %254 = load i32, i32* @NTE_BAD_KEY, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = call i32 (...) @GetLastError()
  %258 = load i32, i32* @NTE_NOT_FOUND, align 4
  %259 = icmp eq i32 %257, %258
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i1 [ true, %252 ], [ %259, %256 ]
  br label %262

262:                                              ; preds = %260, %242
  %263 = phi i1 [ false, %242 ], [ %261, %260 ]
  %264 = zext i1 %263 to i32
  %265 = call i32 (...) @GetLastError()
  %266 = call i32 (i32, i8*, i32, ...) @ok(i32 %264, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %1, align 4
  %268 = load i32, i32* @PUBLICKEYBLOB, align 4
  %269 = call i32 @CryptExportKey(i32 %267, i32 0, i32 %268, i32 0, i32* null, i32* %5)
  store i32 %269, i32* %3, align 4
  %270 = load i32, i32* %3, align 4
  %271 = call i32 (...) @GetLastError()
  %272 = call i32 (i32, i8*, i32, ...) @ok(i32 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %271)
  %273 = call i32 @SetLastError(i32 -559038737)
  %274 = load i32, i32* %1, align 4
  %275 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %276 = call i32 @CryptExportKey(i32 %274, i32 0, i32 %275, i32 0, i32* null, i32* %5)
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* %3, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %262
  %280 = call i32 (...) @GetLastError()
  %281 = load i32, i32* @NTE_BAD_KEY_STATE, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %279, %262
  %284 = load i32, i32* %3, align 4
  %285 = call i64 @broken(i32 %284)
  %286 = icmp ne i64 %285, 0
  br label %287

287:                                              ; preds = %283, %279
  %288 = phi i1 [ true, %279 ], [ %286, %283 ]
  %289 = zext i1 %288 to i32
  %290 = call i32 (...) @GetLastError()
  %291 = call i32 (i32, i8*, i32, ...) @ok(i32 %289, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @CRYPT_EXPORT, align 4
  %293 = load i32, i32* %4, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %4, align 4
  %295 = call i32 @SetLastError(i32 -559038737)
  %296 = load i32, i32* %1, align 4
  %297 = load i32, i32* @KP_PERMISSIONS, align 4
  %298 = bitcast i32* %4 to i8*
  %299 = call i32 @CryptSetKeyParam(i32 %296, i32 %297, i8* %298, i32 0)
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %3, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %312, label %302

302:                                              ; preds = %287
  %303 = call i32 (...) @GetLastError()
  %304 = load i32, i32* @NTE_BAD_DATA, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = call i32 (...) @GetLastError()
  %308 = load i32, i32* @NTE_BAD_FLAGS, align 4
  %309 = icmp eq i32 %307, %308
  br label %310

310:                                              ; preds = %306, %302
  %311 = phi i1 [ true, %302 ], [ %309, %306 ]
  br label %312

312:                                              ; preds = %310, %287
  %313 = phi i1 [ false, %287 ], [ %311, %310 ]
  %314 = zext i1 %313 to i32
  %315 = call i32 (...) @GetLastError()
  %316 = call i32 (i32, i8*, i32, ...) @ok(i32 %314, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* %1, align 4
  %318 = call i32 @CryptDestroyKey(i32 %317)
  %319 = load i32, i32* @hProv, align 4
  %320 = load i32, i32* @AT_SIGNATURE, align 4
  %321 = call i32 @CryptGetUserKey(i32 %319, i32 %320, i32* %1)
  store i32 %321, i32* %3, align 4
  %322 = load i32, i32* %3, align 4
  %323 = call i32 (...) @GetLastError()
  %324 = call i32 (i32, i8*, i32, ...) @ok(i32 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %3, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %312
  br label %425

328:                                              ; preds = %312
  store i32 -559038737, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %329 = load i32, i32* %1, align 4
  %330 = load i32, i32* @KP_PERMISSIONS, align 4
  %331 = bitcast i32* %4 to i8*
  %332 = call i32 @CryptGetKeyParam(i32 %329, i32 %330, i8* %331, i32* %5, i32 0)
  store i32 %332, i32* %3, align 4
  %333 = load i32, i32* %3, align 4
  %334 = call i32 (...) @GetLastError()
  %335 = call i32 (i32, i8*, i32, ...) @ok(i32 %333, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* @CRYPT_MAC, align 4
  %338 = load i32, i32* @CRYPT_WRITE, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @CRYPT_READ, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @CRYPT_DECRYPT, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @CRYPT_ENCRYPT, align 4
  %345 = or i32 %343, %344
  %346 = icmp eq i32 %336, %345
  br i1 %346, label %353, label %347

347:                                              ; preds = %328
  %348 = load i32, i32* %4, align 4
  %349 = icmp eq i32 %348, -1
  %350 = zext i1 %349 to i32
  %351 = call i64 @broken(i32 %350)
  %352 = icmp ne i64 %351, 0
  br label %353

353:                                              ; preds = %347, %328
  %354 = phi i1 [ true, %328 ], [ %352, %347 ]
  %355 = zext i1 %354 to i32
  %356 = load i32, i32* %4, align 4
  %357 = call i32 (i32, i8*, i32, ...) @ok(i32 %355, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* %1, align 4
  %359 = load i32, i32* @PUBLICKEYBLOB, align 4
  %360 = call i32 @CryptExportKey(i32 %358, i32 0, i32 %359, i32 0, i32* null, i32* %5)
  store i32 %360, i32* %3, align 4
  %361 = load i32, i32* %3, align 4
  %362 = call i32 (...) @GetLastError()
  %363 = call i32 (i32, i8*, i32, ...) @ok(i32 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %362)
  %364 = call i32 @SetLastError(i32 -559038737)
  %365 = load i32, i32* %1, align 4
  %366 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %367 = call i32 @CryptExportKey(i32 %365, i32 0, i32 %366, i32 0, i32* null, i32* %5)
  store i32 %367, i32* %3, align 4
  %368 = load i32, i32* %3, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %353
  %371 = call i32 (...) @GetLastError()
  %372 = load i32, i32* @NTE_BAD_KEY_STATE, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %378, label %374

374:                                              ; preds = %370, %353
  %375 = load i32, i32* %3, align 4
  %376 = call i64 @broken(i32 %375)
  %377 = icmp ne i64 %376, 0
  br label %378

378:                                              ; preds = %374, %370
  %379 = phi i1 [ true, %370 ], [ %377, %374 ]
  %380 = zext i1 %379 to i32
  %381 = call i32 (...) @GetLastError()
  %382 = call i32 (i32, i8*, i32, ...) @ok(i32 %380, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %381)
  %383 = load i32, i32* @CRYPT_EXPORT, align 4
  %384 = load i32, i32* %4, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %4, align 4
  %386 = call i32 @SetLastError(i32 -559038737)
  %387 = load i32, i32* %1, align 4
  %388 = load i32, i32* @KP_PERMISSIONS, align 4
  %389 = bitcast i32* %4 to i8*
  %390 = call i32 @CryptSetKeyParam(i32 %387, i32 %388, i8* %389, i32 0)
  store i32 %390, i32* %3, align 4
  %391 = load i32, i32* %3, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %378
  %394 = call i32 (...) @GetLastError()
  %395 = load i32, i32* @NTE_BAD_DATA, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %401, label %397

397:                                              ; preds = %393
  %398 = call i32 (...) @GetLastError()
  %399 = load i32, i32* @NTE_BAD_FLAGS, align 4
  %400 = icmp eq i32 %398, %399
  br label %401

401:                                              ; preds = %397, %393
  %402 = phi i1 [ true, %393 ], [ %400, %397 ]
  br label %403

403:                                              ; preds = %401, %378
  %404 = phi i1 [ false, %378 ], [ %402, %401 ]
  %405 = zext i1 %404 to i32
  %406 = call i32 (...) @GetLastError()
  %407 = call i32 (i32, i8*, i32, ...) @ok(i32 %405, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %406)
  store i32 12, i32* %5, align 4
  %408 = load i32, i32* %1, align 4
  %409 = load i32, i32* @TRUE, align 4
  %410 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %411 = call i32 @CryptEncrypt(i32 %408, i32 0, i32 %409, i32 0, i8* %410, i32* %5, i32 2048)
  store i32 %411, i32* %3, align 4
  %412 = load i32, i32* %3, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %403
  %415 = call i32 (...) @GetLastError()
  %416 = load i32, i32* @NTE_BAD_KEY, align 4
  %417 = icmp eq i32 %415, %416
  br label %418

418:                                              ; preds = %414, %403
  %419 = phi i1 [ false, %403 ], [ %417, %414 ]
  %420 = zext i1 %419 to i32
  %421 = call i32 (...) @GetLastError()
  %422 = call i32 (i32, i8*, i32, ...) @ok(i32 %420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %421)
  %423 = load i32, i32* %1, align 4
  %424 = call i32 @CryptDestroyKey(i32 %423)
  br label %425

425:                                              ; preds = %418, %327, %51, %30, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CryptGetUserKey(i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i8*, i32*, i32) #2

declare dso_local i32 @CryptDestroyKey(i32) #2

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i8*, i32*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @CryptGetKeyParam(i32, i32, i8*, i32*, i32) #2

declare dso_local i32 @CryptExportKey(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @CryptSetKeyParam(i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
