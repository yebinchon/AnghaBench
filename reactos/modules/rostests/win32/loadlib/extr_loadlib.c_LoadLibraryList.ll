; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_LoadLibraryList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_LoadLibraryList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Attempting to LoadLibrary\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"A(%s) - \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"W(%S) - \00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"\0AERROR: failed to obtain handle to module %s - %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"ERROR: failed to free module %s - %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"FreeLibrary(%x) - successfull.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LoadLibraryList(i8** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [500 x i8], align 16
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @LoadLibraryA(i8* %19)
  store i8* %20, i8** %8, align 8
  br label %42

21:                                               ; preds = %3
  %22 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 0
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @mbstowcs(i8* %22, i8* %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 0
  %36 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 0
  %38 = call i8* @LoadLibraryW(i8* %37)
  store i8* %38, i8** %8, align 8
  br label %41

39:                                               ; preds = %21
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %4, align 8
  br label %77

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %14
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %48)
  %50 = call i64 (...) @ReportLastError()
  store i64 %50, i64* %4, align 8
  br label %77

51:                                               ; preds = %42
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @LoadLibraryList(i8** %59, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @FreeLibrary(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %69, i8* %70)
  %72 = call i64 (...) @ReportLastError()
  store i64 %72, i64* %4, align 8
  br label %77

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73
  store i64 0, i64* %4, align 8
  br label %77

77:                                               ; preds = %76, %67, %45, %39
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i8* @LoadLibraryA(i8*) #1

declare dso_local i32 @mbstowcs(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @LoadLibraryW(i8*) #1

declare dso_local i64 @ReportLastError(...) #1

declare dso_local i32 @FreeLibrary(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
