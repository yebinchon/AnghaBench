; ModuleID = '/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_compileShader.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_compileShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Shader compilation error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @compileShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compileShader(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @glCreateShader(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @glShaderSource(i64 %15, i32 1, i8** %5, i32* null)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @glCompileShader(i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %21 = call i32 @glGetShaderiv(i64 %19, i32 %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %48

26:                                               ; preds = %14
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %29 = call i32 @glGetShaderiv(i64 %27, i32 %28, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @glGetShaderInfoLog(i64 %35, i32 %36, i32* null, i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %32, %26
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @glDeleteShader(i64 %44)
  br label %46

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %2
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i64, i32, i8**, i32*) #1

declare dso_local i32 @glCompileShader(i64) #1

declare dso_local i32 @glGetShaderiv(i64, i32, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @glGetShaderInfoLog(i64, i32, i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @glDeleteShader(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
