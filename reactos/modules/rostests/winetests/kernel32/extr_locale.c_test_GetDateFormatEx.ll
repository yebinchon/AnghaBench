; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetDateFormatEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetDateFormatEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@localeW = common dso_local global i32 0, align 4
@DATE_LONGDATE = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_FLAGS, got %d\0A\00", align 1
@EXPECT_EQW = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Expected ret != 0, got %d, error %d\0A\00", align 1
@EXPECT_LENW = common dso_local global i32 0, align 4
@DATE_SHORTDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"dddd d MMMM yyyy\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Wednesday 23 October 2002\00", align 1
@emptyW = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"Monday 1 January 1601\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Friday 31 December 1600\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDateFormatEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDateFormatEx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @BUFFER_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = load i32, i32* @localeW, align 4
  %20 = load i32, i32* @DATE_LONGDATE, align 4
  %21 = call i32 @COUNTOF(i32* %10)
  %22 = call i32 @pGetDateFormatEx(i32 %19, i32 %20, %struct.TYPE_3__* null, i32* %13, i32* %10, i32 %21, i32* null)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = call i32 (...) @GetLastError()
  %27 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ false, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EXPECT_EQW, align 4
  %35 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = load i32, i32* @localeW, align 4
  %38 = call i32 @COUNTOF(i32* %10)
  %39 = call i32 @pGetDateFormatEx(i32 %37, i32 0, %struct.TYPE_3__* null, i32* %13, i32* null, i32 %38, i32* null)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = call i32 (...) @GetLastError()
  %44 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %29
  %47 = phi i1 [ false, %29 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @localeW, align 4
  %53 = call i32 @pGetDateFormatEx(i32 %52, i32 0, %struct.TYPE_3__* null, i32* %13, i32* null, i32 0, i32* null)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @EXPECT_LENW, align 4
  %59 = load i32, i32* @EXPECT_EQW, align 4
  %60 = call i32 @STRINGSW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = load i32, i32* @localeW, align 4
  %63 = load i32, i32* @DATE_LONGDATE, align 4
  %64 = load i32, i32* @DATE_SHORTDATE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @pGetDateFormatEx(i32 %62, i32 %65, %struct.TYPE_3__* null, i32* %13, i32* null, i32 0, i32* null)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %46
  %70 = call i32 (...) @GetLastError()
  %71 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %72 = icmp eq i32 %70, %71
  br label %73

73:                                               ; preds = %69, %46
  %74 = phi i1 [ false, %46 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EXPECT_EQW, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 2002, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 10, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 23, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 45612, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 65432, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 34512, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 65535, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 12345, i32* %86, align 4
  %87 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @localeW, align 4
  %89 = call i32 @COUNTOF(i32* %10)
  %90 = call i32 @pGetDateFormatEx(i32 %88, i32 0, %struct.TYPE_3__* %2, i32* %13, i32* %10, i32 %89, i32* null)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 (...) @GetLastError()
  %94 = call i32 (i32, i8*, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @EXPECT_LENW, align 4
  %96 = load i32, i32* @EXPECT_EQW, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 2002, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 10, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 23, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 45612, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 65432, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 34512, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 65535, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 12345, i32* %104, align 4
  %105 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @localeW, align 4
  %107 = call i32 @COUNTOF(i32* %10)
  %108 = load i32*, i32** @emptyW, align 8
  %109 = call i32 @pGetDateFormatEx(i32 %106, i32 0, %struct.TYPE_3__* %2, i32* %13, i32* %10, i32 %107, i32* %108)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %73
  %113 = call i32 (...) @GetLastError()
  %114 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %115 = icmp eq i32 %113, %114
  br label %116

116:                                              ; preds = %112, %73
  %117 = phi i1 [ false, %73 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1601, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 1, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 0, i32* %128, align 4
  %129 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %130 = call i32 @SetLastError(i32 -559038737)
  %131 = load i32, i32* @localeW, align 4
  %132 = call i32 @COUNTOF(i32* %10)
  %133 = call i32 @pGetDateFormatEx(i32 %131, i32 0, %struct.TYPE_3__* %2, i32* %13, i32* %10, i32 %132, i32* null)
  store i32 %133, i32* %1, align 4
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* %1, align 4
  %136 = call i32 (...) @GetLastError()
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32, i32* @EXPECT_LENW, align 4
  %139 = load i32, i32* @EXPECT_EQW, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1600, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 12, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 31, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32 23, i32* %144, align 4
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 59, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32 59, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 7
  store i32 999, i32* %147, align 4
  %148 = call i32 @STRINGSW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %149 = call i32 @SetLastError(i32 -559038737)
  %150 = load i32, i32* @localeW, align 4
  %151 = call i32 @COUNTOF(i32* %10)
  %152 = call i32 @pGetDateFormatEx(i32 %150, i32 0, %struct.TYPE_3__* %2, i32* %13, i32* %10, i32 %151, i32* null)
  store i32 %152, i32* %1, align 4
  %153 = load i32, i32* %1, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %116
  %156 = call i32 (...) @GetLastError()
  %157 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %158 = icmp eq i32 %156, %157
  br label %159

159:                                              ; preds = %155, %116
  %160 = phi i1 [ false, %116 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 (...) @GetLastError()
  %163 = call i32 (i32, i8*, i32, ...) @ok(i32 %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %164)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STRINGSW(i8*, i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetDateFormatEx(i32, i32, %struct.TYPE_3__*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
