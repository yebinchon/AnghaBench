; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredMarshalCredentialA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredMarshalCredentialA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i8* }

@test_CredMarshalCredentialA.emptyW = internal global [1 x i8] zeroinitializer, align 1
@test_CredMarshalCredentialA.tW = internal global [2 x i8] c"t\00", align 1
@test_CredMarshalCredentialA.teW = internal global [3 x i8] c"te\00", align 1
@test_CredMarshalCredentialA.tesW = internal global [4 x i8] c"tes\00", align 1
@test_CredMarshalCredentialA.testW = internal global [5 x i8] c"test\00", align 1
@test_CredMarshalCredentialA.test1W = internal global [6 x i8] c"test1\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"unexpected success\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@CertCredential = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected failure %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"str not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"@@BCAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"@@B-DAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"@@BBEAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"@@BBEQAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"@@BXlmblBAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"@@B--------------------------P\00", align 1
@UsernameTargetCredential = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"@@CCAAAAA0BA\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"@@CEAAAAA0BQZAA\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"@@CGAAAAA0BQZAMHA\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"@@CIAAAAA0BQZAMHA0BA\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"@@CKAAAAA0BQZAMHA0BQMAA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredMarshalCredentialA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredMarshalCredentialA() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = call i32 @pCredMarshalCredentialA(i32 0, %struct.TYPE_4__* null, i8** null)
  store i32 %7, i32* %5, align 4
  %8 = call i8* (...) @GetLastError()
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %16 = icmp eq i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 24, i32* %23, align 8
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = call i32 @pCredMarshalCredentialA(i32 0, %struct.TYPE_4__* %1, i8** null)
  store i32 %25, i32* %5, align 4
  %26 = call i8* (...) @GetLastError()
  store i8* %26, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %34 = icmp eq i8* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = call i32 @pCredMarshalCredentialA(i32 0, %struct.TYPE_4__* %1, i8** %4)
  store i32 %39, i32* %5, align 4
  %40 = call i8* (...) @GetLastError()
  store i8* %40, i8** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = icmp eq i8* %52, inttoptr (i64 3735928559 to i8*)
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = load i32, i32* @CertCredential, align 4
  %59 = call i32 @pCredMarshalCredentialA(i32 %58, %struct.TYPE_4__* null, i8** null)
  store i32 %59, i32* %5, align 4
  %60 = call i8* (...) @GetLastError()
  store i8* %60, i8** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %68 = icmp eq i8* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 0, i32* %72, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* @CertCredential, align 4
  %75 = call i32 @pCredMarshalCredentialA(i32 %74, %struct.TYPE_4__* %1, i8** %4)
  store i32 %75, i32* %5, align 4
  %76 = call i8* (...) @GetLastError()
  store i8* %76, i8** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %84 = icmp eq i8* %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = icmp eq i8* %88, inttoptr (i64 3735928559 to i8*)
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 28, i32* %93, align 8
  store i8* null, i8** %4, align 8
  %94 = load i32, i32* @CertCredential, align 4
  %95 = call i32 @pCredMarshalCredentialA(i32 %94, %struct.TYPE_4__* %1, i8** %4)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i8* (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = load i8*, i8** %4, align 8
  %100 = icmp ne i8* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @lstrcmpA(i8* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @pCredFree(i8* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 24, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 2, i32* %115, align 4
  store i8* null, i8** %4, align 8
  %116 = load i32, i32* @CertCredential, align 4
  %117 = call i32 @pCredMarshalCredentialA(i32 %116, %struct.TYPE_4__* %1, i8** %4)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i8* (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %4, align 8
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @lstrcmpA(i8* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @pCredFree(i8* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 255, i32* %136, align 4
  store i8* null, i8** %4, align 8
  %137 = load i32, i32* @CertCredential, align 4
  %138 = call i32 @pCredMarshalCredentialA(i32 %137, %struct.TYPE_4__* %1, i8** %4)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i8* (...) @GetLastError()
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  %142 = load i8*, i8** %4, align 8
  %143 = icmp ne i8* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @lstrcmpA(i8* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %151)
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @pCredFree(i8* %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 1, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 1, i32* %160, align 4
  store i8* null, i8** %4, align 8
  %161 = load i32, i32* @CertCredential, align 4
  %162 = call i32 @pCredMarshalCredentialA(i32 %161, %struct.TYPE_4__* %1, i8** %4)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i8* (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  %166 = load i8*, i8** %4, align 8
  %167 = icmp ne i8* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @lstrcmpA(i8* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %175)
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @pCredFree(i8* %177)
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 1, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 1, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  store i32 1, i32* %187, align 4
  store i8* null, i8** %4, align 8
  %188 = load i32, i32* @CertCredential, align 4
  %189 = call i32 @pCredMarshalCredentialA(i32 %188, %struct.TYPE_4__* %1, i8** %4)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i8* (...) @GetLastError()
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %191)
  %193 = load i8*, i8** %4, align 8
  %194 = icmp ne i8* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 @lstrcmpA(i8* %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = load i8*, i8** %4, align 8
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %202)
  %204 = load i8*, i8** %4, align 8
  %205 = call i32 @pCredFree(i8* %204)
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @memset(i32* %207, i32 0, i32 8)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  store i32 87, i32* %211, align 4
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 105, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  store i32 110, i32* %217, align 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  store i32 101, i32* %220, align 4
  store i8* null, i8** %4, align 8
  %221 = load i32, i32* @CertCredential, align 4
  %222 = call i32 @pCredMarshalCredentialA(i32 %221, %struct.TYPE_4__* %1, i8** %4)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i8* (...) @GetLastError()
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %224)
  %226 = load i8*, i8** %4, align 8
  %227 = icmp ne i8* %226, null
  %228 = zext i1 %227 to i32
  %229 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i8*, i8** %4, align 8
  %231 = call i32 @lstrcmpA(i8* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = load i8*, i8** %4, align 8
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %235)
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @pCredFree(i8* %237)
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @memset(i32* %240, i32 255, i32 8)
  store i8* null, i8** %4, align 8
  %242 = load i32, i32* @CertCredential, align 4
  %243 = call i32 @pCredMarshalCredentialA(i32 %242, %struct.TYPE_4__* %1, i8** %4)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = call i8* (...) @GetLastError()
  %246 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %245)
  %247 = load i8*, i8** %4, align 8
  %248 = icmp ne i8* %247, null
  %249 = zext i1 %248 to i32
  %250 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %251 = load i8*, i8** %4, align 8
  %252 = call i32 @lstrcmpA(i8* %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load i8*, i8** %4, align 8
  %257 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %256)
  %258 = load i8*, i8** %4, align 8
  %259 = call i32 @pCredFree(i8* %258)
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* null, i8** %260, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %261 = call i32 @SetLastError(i32 -559038737)
  %262 = load i32, i32* @UsernameTargetCredential, align 4
  %263 = call i32 @pCredMarshalCredentialA(i32 %262, %struct.TYPE_4__* %2, i8** %4)
  store i32 %263, i32* %5, align 4
  %264 = call i8* (...) @GetLastError()
  store i8* %264, i8** %3, align 8
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %270 = load i8*, i8** %3, align 8
  %271 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %272 = icmp eq i8* %270, %271
  %273 = zext i1 %272 to i32
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %274)
  %276 = load i8*, i8** %4, align 8
  %277 = icmp eq i8* %276, inttoptr (i64 3735928559 to i8*)
  %278 = zext i1 %277 to i32
  %279 = load i8*, i8** %4, align 8
  %280 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %279)
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_CredMarshalCredentialA.emptyW, i64 0, i64 0), i8** %281, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %282 = call i32 @SetLastError(i32 -559038737)
  %283 = load i32, i32* @UsernameTargetCredential, align 4
  %284 = call i32 @pCredMarshalCredentialA(i32 %283, %struct.TYPE_4__* %2, i8** %4)
  store i32 %284, i32* %5, align 4
  %285 = call i8* (...) @GetLastError()
  store i8* %285, i8** %3, align 8
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %291 = load i8*, i8** %3, align 8
  %292 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %293 = icmp eq i8* %291, %292
  %294 = zext i1 %293 to i32
  %295 = load i8*, i8** %3, align 8
  %296 = call i32 (i32, i8*, ...) @ok(i32 %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %295)
  %297 = load i8*, i8** %4, align 8
  %298 = icmp eq i8* %297, inttoptr (i64 3735928559 to i8*)
  %299 = zext i1 %298 to i32
  %300 = load i8*, i8** %4, align 8
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %300)
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_CredMarshalCredentialA.tW, i64 0, i64 0), i8** %302, align 8
  store i8* null, i8** %4, align 8
  %303 = load i32, i32* @UsernameTargetCredential, align 4
  %304 = call i32 @pCredMarshalCredentialA(i32 %303, %struct.TYPE_4__* %2, i8** %4)
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %5, align 4
  %306 = call i8* (...) @GetLastError()
  %307 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %306)
  %308 = load i8*, i8** %4, align 8
  %309 = icmp ne i8* %308, null
  %310 = zext i1 %309 to i32
  %311 = call i32 (i32, i8*, ...) @ok(i32 %310, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %312 = load i8*, i8** %4, align 8
  %313 = call i32 @lstrcmpA(i8* %312, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %314 = icmp ne i32 %313, 0
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = load i8*, i8** %4, align 8
  %318 = call i32 (i32, i8*, ...) @ok(i32 %316, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %317)
  %319 = load i8*, i8** %4, align 8
  %320 = call i32 @pCredFree(i8* %319)
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_CredMarshalCredentialA.teW, i64 0, i64 0), i8** %321, align 8
  store i8* null, i8** %4, align 8
  %322 = load i32, i32* @UsernameTargetCredential, align 4
  %323 = call i32 @pCredMarshalCredentialA(i32 %322, %struct.TYPE_4__* %2, i8** %4)
  store i32 %323, i32* %5, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i8* (...) @GetLastError()
  %326 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %325)
  %327 = load i8*, i8** %4, align 8
  %328 = icmp ne i8* %327, null
  %329 = zext i1 %328 to i32
  %330 = call i32 (i32, i8*, ...) @ok(i32 %329, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %331 = load i8*, i8** %4, align 8
  %332 = call i32 @lstrcmpA(i8* %331, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %333 = icmp ne i32 %332, 0
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = load i8*, i8** %4, align 8
  %337 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %336)
  %338 = load i8*, i8** %4, align 8
  %339 = call i32 @pCredFree(i8* %338)
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_CredMarshalCredentialA.tesW, i64 0, i64 0), i8** %340, align 8
  store i8* null, i8** %4, align 8
  %341 = load i32, i32* @UsernameTargetCredential, align 4
  %342 = call i32 @pCredMarshalCredentialA(i32 %341, %struct.TYPE_4__* %2, i8** %4)
  store i32 %342, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = call i8* (...) @GetLastError()
  %345 = call i32 (i32, i8*, ...) @ok(i32 %343, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %344)
  %346 = load i8*, i8** %4, align 8
  %347 = icmp ne i8* %346, null
  %348 = zext i1 %347 to i32
  %349 = call i32 (i32, i8*, ...) @ok(i32 %348, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %350 = load i8*, i8** %4, align 8
  %351 = call i32 @lstrcmpA(i8* %350, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %352 = icmp ne i32 %351, 0
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = load i8*, i8** %4, align 8
  %356 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %355)
  %357 = load i8*, i8** %4, align 8
  %358 = call i32 @pCredFree(i8* %357)
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_CredMarshalCredentialA.testW, i64 0, i64 0), i8** %359, align 8
  store i8* null, i8** %4, align 8
  %360 = load i32, i32* @UsernameTargetCredential, align 4
  %361 = call i32 @pCredMarshalCredentialA(i32 %360, %struct.TYPE_4__* %2, i8** %4)
  store i32 %361, i32* %5, align 4
  %362 = load i32, i32* %5, align 4
  %363 = call i8* (...) @GetLastError()
  %364 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %363)
  %365 = load i8*, i8** %4, align 8
  %366 = icmp ne i8* %365, null
  %367 = zext i1 %366 to i32
  %368 = call i32 (i32, i8*, ...) @ok(i32 %367, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %369 = load i8*, i8** %4, align 8
  %370 = call i32 @lstrcmpA(i8* %369, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %371 = icmp ne i32 %370, 0
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = load i8*, i8** %4, align 8
  %375 = call i32 (i32, i8*, ...) @ok(i32 %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %374)
  %376 = load i8*, i8** %4, align 8
  %377 = call i32 @pCredFree(i8* %376)
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_CredMarshalCredentialA.test1W, i64 0, i64 0), i8** %378, align 8
  store i8* null, i8** %4, align 8
  %379 = load i32, i32* @UsernameTargetCredential, align 4
  %380 = call i32 @pCredMarshalCredentialA(i32 %379, %struct.TYPE_4__* %2, i8** %4)
  store i32 %380, i32* %5, align 4
  %381 = load i32, i32* %5, align 4
  %382 = call i8* (...) @GetLastError()
  %383 = call i32 (i32, i8*, ...) @ok(i32 %381, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %382)
  %384 = load i8*, i8** %4, align 8
  %385 = icmp ne i8* %384, null
  %386 = zext i1 %385 to i32
  %387 = call i32 (i32, i8*, ...) @ok(i32 %386, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %388 = load i8*, i8** %4, align 8
  %389 = call i32 @lstrcmpA(i8* %388, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %390 = icmp ne i32 %389, 0
  %391 = xor i1 %390, true
  %392 = zext i1 %391 to i32
  %393 = load i8*, i8** %4, align 8
  %394 = call i32 (i32, i8*, ...) @ok(i32 %392, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %393)
  %395 = load i8*, i8** %4, align 8
  %396 = call i32 @pCredFree(i8* %395)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pCredMarshalCredentialA(i32, %struct.TYPE_4__*, i8**) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @pCredFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
