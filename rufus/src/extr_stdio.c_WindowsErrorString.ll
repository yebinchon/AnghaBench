; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_WindowsErrorString.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_WindowsErrorString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WindowsErrorString.err_string = internal global [256 x i8] zeroinitializer, align 16
@FACILITY_ITF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"[0x%08lX] %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[0x%08lX] \00", align 1
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Windows error code 0x%08lX (FormatMessage error code 0x%08lX)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown error 0x%08lX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @WindowsErrorString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i64 (...) @GetLastError()
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @SCODE_FACILITY(i64 %7)
  %9 = load i64, i64* @FACILITY_ITF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i64, i64* %4, align 8
  %13 = call i32* @GetVdsError(i64 %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @GetVdsError(i64 %17)
  %19 = call i32 (i8*, i8*, i64, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %16, i32* %18)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8** %1, align 8
  br label %91

20:                                               ; preds = %11, %0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i8*, i8*, i64, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0))
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %25 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @HRESULT_CODE(i64 %27)
  %29 = load i32, i32* @LANG_NEUTRAL, align 4
  %30 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %31 = call i32 @MAKELANGID(i32 %29, i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 %32
  %34 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0))
  %35 = sub i64 256, %34
  %36 = call i64 @FormatMessageU(i32 %26, i32* null, i32 %28, i32 %31, i8* %33, i64 %35, i32* null)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %20
  %40 = call i64 (...) @GetLastError()
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 317
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (i8*, i8*, i64, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %48)
  br label %53

50:                                               ; preds = %43, %39
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i8*, i8*, i64, ...) @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %88

54:                                               ; preds = %20
  %55 = load i64, i64* %3, align 8
  %56 = icmp ugt i64 %55, 2
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* %3, align 8
  %60 = sub i64 %59, 2
  %61 = load i64, i64* %2, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %83, %54
  %64 = load i64, i64* %2, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br label %81

81:                                               ; preds = %75, %69, %63
  %82 = phi i1 [ true, %69 ], [ true, %63 ], [ %80, %75 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = load i64, i64* %2, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %2, align 8
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 %84
  store i8 0, i8* %86, align 1
  br label %63

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @SetLastError(i64 %89)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WindowsErrorString.err_string, i64 0, i64 0), i8** %1, align 8
  br label %91

91:                                               ; preds = %88, %15
  %92 = load i8*, i8** %1, align 8
  ret i8* %92
}

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @SCODE_FACILITY(i64) #1

declare dso_local i32* @GetVdsError(i64) #1

declare dso_local i32 @static_sprintf(i8*, i8*, i64, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @FormatMessageU(i32, i32*, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @HRESULT_CODE(i64) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
