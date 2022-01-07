; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetDateFormatW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetDateFormatW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@DATE_LONGDATE = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"GetDateFormatW is not implemented\0A\00", align 1
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_FLAGS, got %d\0A\00", align 1
@EXPECT_EQW = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Expected ret != 0, got %d, error %d\0A\00", align 1
@EXPECT_LENW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"dddd d MMMM yyyy\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Wednesday 23 October 2002\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Monday 1 January 1601\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Friday 31 December 1600\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDateFormatW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDateFormatW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @BUFFER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @BUFFER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @BUFFER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @LANG_ENGLISH, align 4
  %20 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %21 = call i32 @MAKELANGID(i32 %19, i32 %20)
  %22 = load i32, i32* @SORT_DEFAULT, align 4
  %23 = call i32 @MAKELCID(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %26 = load i32, i32* @DATE_LONGDATE, align 4
  %27 = call i32 @COUNTOF(i32* %12)
  %28 = call i32 @GetDateFormatW(i32 %25, i32 %26, %struct.TYPE_3__* null, i32* %15, i32* %12, i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %133

34:                                               ; preds = %0
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = call i32 (...) @GetLastError()
  %39 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EXPECT_EQW, align 4
  %47 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @COUNTOF(i32* %12)
  %51 = call i32 @GetDateFormatW(i32 %49, i32 0, %struct.TYPE_3__* null, i32* %15, i32* null, i32 %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = call i32 (...) @GetLastError()
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %41
  %59 = phi i1 [ false, %41 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @GetDateFormatW(i32 %64, i32 0, %struct.TYPE_3__* null, i32* %15, i32* null, i32 0)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, i32, ...) @ok(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @EXPECT_LENW, align 4
  %71 = load i32, i32* @EXPECT_EQW, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 2002, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 10, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 23, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 45612, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 65432, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 34512, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 65535, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 12345, i32* %79, align 4
  %80 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @COUNTOF(i32* %12)
  %83 = call i32 @GetDateFormatW(i32 %81, i32 0, %struct.TYPE_3__* %2, i32* %15, i32* %12, i32 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EXPECT_LENW, align 4
  %89 = load i32, i32* @EXPECT_EQW, align 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1601, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 0, i32* %97, align 4
  %98 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i32 @SetLastError(i32 -559038737)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @COUNTOF(i32* %12)
  %102 = call i32 @GetDateFormatW(i32 %100, i32 0, %struct.TYPE_3__* %2, i32* %15, i32* %12, i32 %101)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @EXPECT_LENW, align 4
  %108 = load i32, i32* @EXPECT_EQW, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1600, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 12, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 31, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 23, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 59, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 59, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 999, i32* %116, align 4
  %117 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %118 = call i32 @SetLastError(i32 -559038737)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @COUNTOF(i32* %12)
  %121 = call i32 @GetDateFormatW(i32 %119, i32 0, %struct.TYPE_3__* %2, i32* %15, i32* %12, i32 %120)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* %1, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %58
  %125 = call i32 (...) @GetLastError()
  %126 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %127 = icmp eq i32 %125, %126
  br label %128

128:                                              ; preds = %124, %58
  %129 = phi i1 [ false, %58 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %128, %32
  %134 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %8, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133
  ret void

137:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MAKELCID(i32, i32) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @STRINGSW(i8*, i8*) #2

declare dso_local i32 @GetDateFormatW(i32, i32, %struct.TYPE_3__*, i32*, i32*, i32) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @SetLastError(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
