; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_ReportLastError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_ReportLastError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ReportLastError() %d - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"ERROR: ReportLastError() %d - returned TRUE but with no msg string!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ReportLastError() %d - unknown error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ReportLastError() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 (...) @GetLastError()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @ERROR_SUCCESS, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %0
  store i32* null, i32** %2, align 8
  %8 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %9 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %10 = or i32 %8, %9
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* @LANG_NEUTRAL, align 4
  %13 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %14 = call i32 @MAKELANGID(i32 %12, i32 %13)
  %15 = bitcast i32** %2 to i32*
  %16 = call i64 @FormatMessageA(i32 %10, i32 0, i64 %11, i32 %14, i32* %15, i32 0, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %1, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %22, i32* %23)
  br label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %1, align 8
  %27 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %32

29:                                               ; preds = %7
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @LocalFree(i32* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %0
  %40 = load i64, i64* %1, align 8
  ret i64 %40
}

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @FormatMessageA(i32, i32, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
