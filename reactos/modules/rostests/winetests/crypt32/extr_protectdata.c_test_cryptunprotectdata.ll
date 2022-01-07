; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_cryptunprotectdata.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_cryptunprotectdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }

@key = common dso_local global i64 0, align 8
@protected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CryptProtectData failed to run\0A\00", align 1
@cipher = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Decrypting without destination\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Wrong (%u) GetLastError seen\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Decrypting without source\0A\00", align 1
@cipher_entropy = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Decrypting without needed entropy\0A\00", align 1
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Decrypting without entropy\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Plain DATA_BLOB missing data\0A\00", align 1
@secret = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Plain DATA_BLOB wrong length\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Plain does not match secret\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Description not allocated\0A\00", align 1
@desc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Description does not match\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Decrypting with wrong entropy\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Decrypting with entropy\0A\00", align 1
@cipher_no_desc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [44 x i8] c"Decrypting with entropy and no description\0A\00", align 1
@secret2 = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"Description not empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cryptunprotectdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cryptunprotectdata() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i64, i64* @key, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = load i64, i64* @key, align 8
  %10 = call i64 @strlen(i64 %9)
  %11 = add nsw i64 %10, 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = load i32, i32* @protected, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %209

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher, i8** null, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_8__* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i64 (...) @GetLastError()
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 @SetLastError(i32 -559038737)
  %35 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* null, i8** null, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher_entropy, i8** null, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i64 (...) @GetLastError()
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @ERROR_INVALID_DATA, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %65, align 8
  store i8* null, i8** %5, align 8
  %66 = call i32 @SetLastError(i32 -559038737)
  %67 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher, i8** %5, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @secret, align 8
  %78 = call i64 @strlen(i64 %77)
  %79 = add nsw i64 %78, 1
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* @secret, align 8
  %86 = call i32 @strcmp(i8* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i8*, i8** %5, align 8
  %92 = icmp ne i8* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* @desc, align 4
  %97 = call i32 @lstrcmpW(i8* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @LocalFree(i8* %103)
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @LocalFree(i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %108, align 8
  store i8* null, i8** %5, align 8
  %109 = call i32 @SetLastError(i32 -559038737)
  %110 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher_entropy, i8** %5, %struct.TYPE_8__* @cipher_entropy, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %116 = call i64 (...) @GetLastError()
  store i64 %116, i64* %1, align 8
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* @ERROR_INVALID_DATA, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %1, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher_entropy, i8** %5, %struct.TYPE_8__* %3, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @secret, align 8
  %135 = call i64 @strlen(i64 %134)
  %136 = add nsw i64 %135, 1
  %137 = icmp eq i64 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* @secret, align 8
  %143 = call i32 @strcmp(i8* %141, i64 %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %148 = load i8*, i8** %5, align 8
  %149 = icmp ne i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* @desc, align 4
  %154 = call i32 @lstrcmpW(i8* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @LocalFree(i8* %160)
  %162 = load i8*, i8** %5, align 8
  %163 = call i32 @LocalFree(i8* %162)
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %165, align 8
  store i8* null, i8** %5, align 8
  %166 = call i32 @SetLastError(i32 -559038737)
  %167 = call i32 @pCryptUnprotectData(%struct.TYPE_8__* @cipher_no_desc, i8** %5, %struct.TYPE_8__* %3, i32* null, i32* null, i32 0, %struct.TYPE_8__* %2)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @secret2, align 8
  %178 = call i64 @strlen(i64 %177)
  %179 = add nsw i64 %178, 1
  %180 = icmp eq i64 %176, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* @secret2, align 8
  %186 = call i32 @strcmp(i8* %184, i64 %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %191 = load i8*, i8** %5, align 8
  %192 = icmp ne i8* %191, null
  %193 = zext i1 %192 to i32
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 0
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @LocalFree(i8* %202)
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @LocalFree(i8* %205)
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* null, i8** %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i64 0, i64* %208, align 8
  br label %209

209:                                              ; preds = %17, %15
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pCryptUnprotectData(%struct.TYPE_8__*, i8**, %struct.TYPE_8__*, i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @lstrcmpW(i8*, i32) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
