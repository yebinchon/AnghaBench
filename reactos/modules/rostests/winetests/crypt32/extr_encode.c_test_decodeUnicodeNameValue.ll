; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeUnicodeNameValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeUnicodeNameValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@unicodeResults = common dso_local global %struct.TYPE_9__* null, align 8
@X509_UNICODE_NAME_VALUE = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_E_NOT_CHAR_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"CryptDecodeObjectEx failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected value type %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Unexpected decoded value for index %d (value type %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_decodeUnicodeNameValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decodeUnicodeNameValue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %102, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_9__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %105

13:                                               ; preds = %8
  store i32* null, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* @X509_UNICODE_NAME_VALUE, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %29 = call i64 @pCryptDecodeObjectEx(i64 %14, i32 %15, i32 %21, i32 %27, i32 %28, i32* null, i32** %4, i64* %6)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %13
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @CRYPT_E_NOT_CHAR_STRING, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @broken(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %32, %13
  %40 = phi i1 [ true, %13 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %101

49:                                               ; preds = %46
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32* %50 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  %61 = zext i1 %60 to i32
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %77 = load i64, i64* %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @strncmpW(i32 %75, i32 %80, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @unicodeResults, align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @LocalFree(i32* %99)
  br label %101

101:                                              ; preds = %49, %46, %39
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %3, align 8
  br label %8

105:                                              ; preds = %8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i64 @pCryptDecodeObjectEx(i64, i32, i32, i32, i32, i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @strncmpW(i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
