; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/chklib/extr_chklib.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/chklib/extr_chklib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"ReactOS System Tools\0ACheck a Dynamic Link Library (DLL) for loading\0ACopyright (c) 1998, 1999 Emanuele Aliberti\0A\0Ausage: %s module [symbol [, ...]]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 76, i32 111, i32 97, i32 100, i32 76, i32 105, i32 98, i32 114, i32 97, i32 114, i32 121, i32 0], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: loading %s failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s loaded.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s unloaded.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @_MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = call i32 @exit(i32 %23) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @LoadLibraryA(i8* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %25
  %33 = call i32 (...) @GetLastError()
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @PrintWin32Error(i8* bitcast ([12 x i32]* @.str.1 to i8*), i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %42, i32 %43)
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #4
  unreachable

47:                                               ; preds = %25
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = trunc i64 %12 to i32
  %51 = call i32 @GetModuleFileName(i32 %49, i8* %14, i32 %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @DisplayEntryPoint(i64 %61, i8* %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %56

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @FreeLibrary(i64 %73)
  %75 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @LoadLibraryA(i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @PrintWin32Error(i8*, i32) #2

declare dso_local i32 @GetModuleFileName(i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @DisplayEntryPoint(i64, i8*) #2

declare dso_local i32 @FreeLibrary(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
