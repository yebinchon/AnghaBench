; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_encodeEnumerated.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_encodeEnumerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@enumeratedTypes = common dso_local global %struct.TYPE_5__* null, align 8
@enums = common dso_local global %struct.TYPE_5__* null, align 8
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CryptEncodeObjectEx failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Got unexpected type %d for enumerated (expected 0xa)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Got length %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Encoded value of 0x%08x didn't match expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_encodeEnumerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encodeEnumerated(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %106, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enumeratedTypes, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %109

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %102, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %14
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enumeratedTypes, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %29 = bitcast %struct.TYPE_5__* %23 to { i32, i32* }*
  %30 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %29, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @pCryptEncodeObjectEx(i64 %20, i32 %31, i32* %33, i32* %27, i32 %28, i32* null, i32** %6, i64* %7)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %101

40:                                               ; preds = %19
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 10
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %52, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @memcmp(i32* %74, i32* %80, i32 %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @LocalFree(i32* %99)
  br label %101

101:                                              ; preds = %40, %19
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %4, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %4, align 8
  br label %14

105:                                              ; preds = %14
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  br label %8

109:                                              ; preds = %8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pCryptEncodeObjectEx(i64, i32, i32*, i32*, i32, i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
