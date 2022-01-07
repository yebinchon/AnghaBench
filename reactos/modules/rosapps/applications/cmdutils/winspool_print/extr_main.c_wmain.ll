; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/winspool_print/extr_main.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/winspool_print/extr_main.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CreateFileW failed, last error is %lu!\0A\00", align 1
@INVALID_FILE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"File is too big, or GetFileSize failed; last error is %lu!\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i32] [i32 68, i32 117, i32 109, i32 109, i32 121, i32 32, i32 80, i32 114, i32 105, i32 110, i32 116, i32 101, i32 114, i32 32, i32 79, i32 110, i32 32, i32 76, i32 80, i32 84, i32 49, i32 0], align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"OpenPrinterW failed, last error is %lu!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i32] [i32 119, i32 105, i32 110, i32 115, i32 112, i32 111, i32 111, i32 108, i32 95, i32 112, i32 114, i32 105, i32 110, i32 116, i32 0], align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"StartDocPrinterW failed, last error is %lu!\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"StartPagePrinter failed, last error is %lu!\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ReadFile failed, last error is %lu!\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"WritePrinter failed, last error is %lu!\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"EndPagePrinter failed, last error is %lu!\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"EndDocPrinter failed, last error is %lu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca [4096 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %14, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32**, i32*** %5, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @Usage(i32* %20)
  store i32 0, i32* %3, align 4
  br label %125

22:                                               ; preds = %2
  %23 = load i32**, i32*** %5, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @GENERIC_READ, align 4
  %27 = load i32, i32* @OPEN_EXISTING, align 4
  %28 = call i64 @CreateFileW(i32* %25, i32 %26, i32 0, i32* null, i32 %27, i32 0, i32* null)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %110

35:                                               ; preds = %22
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @GetFileSize(i64 %36, i32* null)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @INVALID_FILE_SIZE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %110

44:                                               ; preds = %35
  %45 = call i32 @OpenPrinterW(i8* bitcast ([22 x i32]* @.str.2 to i8*), i64* %11, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %110

50:                                               ; preds = %44
  %51 = call i32 @ZeroMemory(%struct.TYPE_3__* %12, i32 8)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* bitcast ([15 x i32]* @.str.4 to i8*), i8** %52, align 8
  %53 = load i64, i64* %11, align 8
  %54 = ptrtoint %struct.TYPE_3__* %12 to i32
  %55 = call i32 @StartDocPrinterW(i64 %53, i32 1, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %110

60:                                               ; preds = %50
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @StartPagePrinter(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %110

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %94, %67
  %69 = load i64, i64* %7, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @min(i32 16384, i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @ReadFile(i64 %74, i32* %75, i64 %76, i64* %8, i32* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = call i32 (...) @GetLastError()
  %81 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  br label %110

82:                                               ; preds = %71
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 0
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @WritePrinter(i64 %86, i32* %87, i64 %88, i64* %9)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = call i32 (...) @GetLastError()
  %93 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  br label %110

94:                                               ; preds = %82
  br label %68

95:                                               ; preds = %68
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @EndPagePrinter(i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  br label %110

102:                                              ; preds = %95
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @EndDocPrinter(i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = call i32 (...) @GetLastError()
  %108 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  br label %110

109:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %106, %99, %91, %79, %64, %57, %47, %41, %32
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @ClosePrinter(i64 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @CloseHandle(i64 %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %17
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @Usage(i32*) #1

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetFileSize(i64, i32*) #1

declare dso_local i32 @OpenPrinterW(i8*, i64*, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @StartDocPrinterW(i64, i32, i32) #1

declare dso_local i32 @StartPagePrinter(i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @ReadFile(i64, i32*, i64, i64*, i32*) #1

declare dso_local i32 @WritePrinter(i64, i32*, i64, i64*) #1

declare dso_local i32 @EndPagePrinter(i64) #1

declare dso_local i32 @EndDocPrinter(i64) #1

declare dso_local i32 @ClosePrinter(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
