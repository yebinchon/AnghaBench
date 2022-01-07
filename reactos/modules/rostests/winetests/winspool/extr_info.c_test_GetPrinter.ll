; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@default_printer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"There is no default printer installed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to open the default printer (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wrong hprn %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Level %d is not supported on Win9x/WinMe\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"wrong error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"level %d: GetPrinter should fail\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Level %d not supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"not expected needed buffer size %d\0A\00", align 1
@on_win9x = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"level %d: GetPrinter error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"level %d: GetPrinterA returned different size %d than GetPrinterW (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"needed %d != filled %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"not expected NULL ptr\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"pPrinterName %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"pDriverName %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ClosePrinter error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetPrinter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetPrinter() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = load i32, i32* @default_printer, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %171

13:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  %14 = load i32, i32* @default_printer, align 4
  %15 = call i32 @OpenPrinterA(i32 %14, i64* %1, i32* null)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @default_printer, align 4
  %20 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %171

21:                                               ; preds = %13
  %22 = load i64, i64* %1, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %161, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 9
  br i1 %29, label %30, label %164

30:                                               ; preds = %27
  %31 = call i32 @SetLastError(i32 -559038737)
  store i32 -1, i32* %5, align 4
  %32 = load i64, i64* %1, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GetPrinterA(i64 %32, i32 %33, i32* null, i32 0, i32* %5)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @win_skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = call i32 (...) @GetLastError()
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %161

51:                                               ; preds = %30
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = call i32 (...) @GetLastError()
  %59 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %51
  %62 = call i32 (...) @GetLastError()
  %63 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  br label %161

68:                                               ; preds = %61
  %69 = call i32 (...) @GetLastError()
  %70 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @on_win9x, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %82
  br i1 true, label %86, label %111

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 6
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 7
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i64, i64* %1, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @pGetPrinterW(i64 %93, i32 %94, i32* null, i32 0, i32* %7)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %92, %89, %86, %85, %82, %68
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load i32, i32* %5, align 4
  %114 = call i32* @HeapAlloc(i32 %112, i32 0, i32 %113)
  store i32* %114, i32** %3, align 8
  %115 = call i32 @SetLastError(i32 -559038737)
  store i32 -1, i32* %6, align 4
  %116 = load i64, i64* %1, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @GetPrinterA(i64 %116, i32 %117, i32* %118, i32 %119, i32* %6)
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %157

134:                                              ; preds = %111
  %135 = load i32*, i32** %3, align 8
  %136 = bitcast i32* %135 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %136, %struct.TYPE_2__** %8, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* %151)
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32* %155)
  br label %157

157:                                              ; preds = %134, %111
  %158 = call i32 (...) @GetProcessHeap()
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @HeapFree(i32 %158, i32 0, i32* %159)
  br label %161

161:                                              ; preds = %157, %65, %37
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %27

164:                                              ; preds = %27
  %165 = call i32 @SetLastError(i32 -559038737)
  %166 = load i64, i64* %1, align 8
  %167 = call i32 @ClosePrinter(i64 %166)
  store i32 %167, i32* %2, align 4
  %168 = load i32, i32* %2, align 4
  %169 = call i32 (...) @GetLastError()
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %164, %18, %11
  ret void
}

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @OpenPrinterA(i32, i64*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetPrinterA(i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @win_skip(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pGetPrinterW(i64, i32, i32*, i32, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ClosePrinter(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
