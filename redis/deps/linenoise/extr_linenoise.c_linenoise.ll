; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoise.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINENOISE_MAX_LINE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linenoise(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i32 @isatty(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i8* (...) @linenoiseNoTTY()
  store i8* %17, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %70

18:                                               ; preds = %1
  %19 = call i64 (...) @isUnsupportedTerm()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fflush(i32 %24)
  %26 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %27 = load i32, i32* @stdin, align 4
  %28 = call i32* @fgets(i8* %12, i32 %26, i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %70

31:                                               ; preds = %21
  %32 = call i64 @strlen(i8* %12)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %54, %31
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %12, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %12, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i1 [ true, %36 ], [ %49, %43 ]
  br label %52

52:                                               ; preds = %50, %33
  %53 = phi i1 [ false, %33 ], [ %51, %50 ]
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %12, i64 %57
  store i8 0, i8* %58, align 1
  br label %33

59:                                               ; preds = %52
  %60 = call i8* @strdup(i8* %12)
  store i8* %60, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %70

61:                                               ; preds = %18
  %62 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @linenoiseRaw(i8* %12, i32 %62, i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i8* null, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %70

68:                                               ; preds = %61
  %69 = call i8* @strdup(i8* %12)
  store i8* %69, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %67, %59, %30, %16
  %71 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isatty(i32) #2

declare dso_local i8* @linenoiseNoTTY(...) #2

declare dso_local i64 @isUnsupportedTerm(...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @linenoiseRaw(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
