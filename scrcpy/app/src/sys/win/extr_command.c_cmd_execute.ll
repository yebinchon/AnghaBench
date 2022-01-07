; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/sys/win/extr_command.c_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/sys/win/extr_command.c_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@PROCESS_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not allocate wide char string\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@PROCESS_ERROR_MISSING_BINARY = common dso_local global i32 0, align 4
@PROCESS_SUCCESS = common dso_local global i32 0, align 4
@CREATE_NO_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_execute(i8* %0, i8** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 4)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %16 = load i8**, i8*** %6, align 8
  %17 = call i64 @build_cmd(i8* %15, i32 256, i8** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32**, i32*** %7, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %24 = call i32* @utf8_to_wide_char(i8* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = call i32 @LOGC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @CreateProcessW(i32* null, i32* %31, i32* null, i32* null, i32 %32, i32 %33, i32* null, i32* null, %struct.TYPE_6__* %8, %struct.TYPE_7__* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @SDL_free(i32* %37)
  %39 = load i32**, i32*** %7, align 8
  store i32* null, i32** %39, align 8
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @PROCESS_ERROR_MISSING_BINARY, align 4
  store i32 %44, i32* %4, align 4
  br label %54

45:                                               ; preds = %36
  %46 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %30
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @SDL_free(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* @PROCESS_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %45, %43, %27, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @build_cmd(i8*, i32, i8**) #1

declare dso_local i32* @utf8_to_wide_char(i8*) #1

declare dso_local i32 @LOGC(i8*) #1

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @SDL_free(i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
