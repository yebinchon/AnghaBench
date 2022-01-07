; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_NtGdiAddFontResource.c_Test_NtGdiAddFontResourceW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_NtGdiAddFontResource.c_Test_NtGdiAddFontResourceW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 92, i32 70, i32 111, i32 110, i32 116, i32 115, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 42, i32 46, i32 116, i32 116, i32 102, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to find fonts in Font directory!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Expected 0 files added. Added: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected 0xdeaddead. Obtained: 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Expected 1 files added. Added: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Expected 0xdeadbeef. Obtained: 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtGdiAddFontResourceW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @GetWindowsDirectoryW(i32* %13, i32 %17)
  %19 = mul nuw i64 4, %11
  %20 = trunc i64 %19 to i32
  %21 = call i32 @StringCbCatW(i32* %13, i32 %20, i8* bitcast ([8 x i32]* @.str to i8*))
  %22 = mul nuw i64 4, %15
  %23 = trunc i64 %22 to i32
  %24 = call i32 @StringCbCopyW(i32* %16, i32 %23, i32* %13)
  %25 = mul nuw i64 4, %15
  %26 = trunc i64 %25 to i32
  %27 = call i32 @StringCbCatW(i32* %16, i32 %26, i8* bitcast ([6 x i32]* @.str.1 to i8*))
  %28 = call i64 @FindFirstFileW(i32* %16, %struct.TYPE_7__* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %117

34:                                               ; preds = %0
  %35 = mul nuw i64 4, %11
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @StringCbCatW(i32* %13, i32 %36, i8* %38)
  %40 = call i32 @SetLastError(i32 -559030611)
  %41 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %5, i32* null)
  %42 = call i32 @RtlDosPathNameToNtPathName_U(i32* %13, %struct.TYPE_8__* %5, i32* null, i32* null)
  store i32 0, i32* %8, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @NtGdiAddFontResourceW(i32 %44, i32 %45, i32 1, i32 0, i32 0, i32* null)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = call i32 (...) @GetLastError()
  %53 = icmp eq i32 %52, -559030611
  %54 = zext i1 %53 to i32
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %5)
  %58 = call i32 @SetLastError(i32 -559030611)
  %59 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %5, i32* null)
  %60 = call i32 @RtlDosPathNameToNtPathName_U(i32* %13, %struct.TYPE_8__* %5, i32* null, i32* null)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @NtGdiAddFontResourceW(i32 %67, i32 %68, i32 1, i32 0, i32 0, i32* null)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = call i32 (...) @GetLastError()
  %76 = icmp eq i32 %75, -559030611
  %77 = zext i1 %76 to i32
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %5)
  %81 = call i32 @SetLastError(i32 -559030611)
  %82 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %5, i32* null)
  %83 = call i32 @RtlDosPathNameToNtPathName_U(i32* %13, %struct.TYPE_8__* %5, i32* null, i32* null)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 4
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @NtGdiAddFontResourceW(i32 %91, i32 %92, i32 1, i32 0, i32 0, i32* null)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @GetLastError()
  %100 = icmp eq i32 %99, -559030611
  %101 = zext i1 %100 to i32
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %5)
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = call i32 @NtGdiAddFontResourceW(i32 -4, i32 123, i32 1, i32 0, i32 0, i32* null)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = call i32 (...) @GetLastError()
  %113 = icmp eq i32 %112, -559038737
  %114 = zext i1 %113 to i32
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %34, %32
  %118 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %9, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryW(i32*, i32) #2

declare dso_local i32 @StringCbCatW(i32*, i32, i8*) #2

declare dso_local i32 @StringCbCopyW(i32*, i32, i32*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i32*, %struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @NtGdiAddFontResourceW(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
