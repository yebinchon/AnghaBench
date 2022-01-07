; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testTimeEncoding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testTimeEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encodedFiletime = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"SystemTimeToFileTime failed: %d\0A\00", align 1
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@X509_CHOICE_OF_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"CryptEncodeObjectEx failed: %d (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected an allocated buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Expected type 0x%02x, got 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Expected %d bytes, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Got unexpected value for time encoding\0A\00", align 1
@CRYPT_E_BAD_ENCODE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Expected CRYPT_E_BAD_ENCODE, got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.encodedFiletime*)* @testTimeEncoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testTimeEncoding(i64 %0, i64 %1, %struct.encodedFiletime* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.encodedFiletime*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.encodedFiletime* %2, %struct.encodedFiletime** %6, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %13 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %12, i32 0, i32 1
  %14 = call i32 @SystemTimeToFileTime(%struct.TYPE_6__* %13, %struct.TYPE_5__* %7)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %21 = call i32 @pCryptEncodeObjectEx(i64 %18, i64 %19, %struct.TYPE_5__* %7, i32 %20, i32* null, i32** %8, i64* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @X509_CHOICE_OF_TIME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %3
  %26 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %27 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 1950
  br i1 %30, label %31, label %104

31:                                               ; preds = %25
  %32 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %33 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 2050
  br i1 %36, label %37, label %104

37:                                               ; preds = %31, %3
  %38 = load i32, i32* %10, align 4
  %39 = call i64 (...) @GetLastError()
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %37
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %53 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %51, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %60 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %72 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %70, %75
  %77 = zext i1 %76 to i32
  %78 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %79 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %82, i64 %83)
  %85 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %86 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load %struct.encodedFiletime*, %struct.encodedFiletime** %6, align 8
  %92 = getelementptr inbounds %struct.encodedFiletime, %struct.encodedFiletime* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcmp(i32* %88, i32* %90, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @LocalFree(i32* %101)
  br label %103

103:                                              ; preds = %48, %37
  br label %123

104:                                              ; preds = %31, %25
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call i64 (...) @GetLastError()
  %109 = load i64, i64* @CRYPT_E_BAD_ENCODE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %107, %104
  %112 = call i64 (...) @GetLastError()
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @broken(i32 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %111, %107
  %119 = phi i1 [ true, %107 ], [ %117, %111 ]
  %120 = zext i1 %119 to i32
  %121 = call i64 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %118, %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_6__*, %struct.TYPE_5__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @pCryptEncodeObjectEx(i64, i64, %struct.TYPE_5__*, i32, i32*, i32**, i64*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i64 @broken(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
