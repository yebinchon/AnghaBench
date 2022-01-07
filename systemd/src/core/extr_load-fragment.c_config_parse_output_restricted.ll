; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_output_restricted.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_output_restricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to parse output type, ignoring: %s\00", align 1
@EXEC_OUTPUT_SOCKET = common dso_local global i32 0, align 4
@EXEC_OUTPUT_NAMED_FD = common dso_local global i32 0, align 4
@EXEC_OUTPUT_FILE = common dso_local global i32 0, align 4
@EXEC_OUTPUT_FILE_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Standard output types socket, fd:, file:, append: are not supported as defaults, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_output_restricted(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %23, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %20, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i64 @exec_output_from_string(i8* %34)
  store i64 %35, i64* %22, align 8
  %36 = load i64, i64* %22, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %10
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @log_syntax(i8* %39, i32 %40, i8* %41, i32 %42, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 0, i32* %11, align 4
  br label %63

45:                                               ; preds = %10
  %46 = load i64, i64* %22, align 8
  %47 = load i32, i32* @EXEC_OUTPUT_SOCKET, align 4
  %48 = load i32, i32* @EXEC_OUTPUT_NAMED_FD, align 4
  %49 = load i32, i32* @EXEC_OUTPUT_FILE, align 4
  %50 = load i32, i32* @EXEC_OUTPUT_FILE_APPEND, align 4
  %51 = call i64 @IN_SET(i64 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %19, align 8
  %59 = call i32 @log_syntax(i8* %54, i32 %55, i8* %56, i32 %57, i32 0, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 0, i32* %11, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load i64, i64* %22, align 8
  %62 = load i64*, i64** %23, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %53, %38
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @exec_output_from_string(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @IN_SET(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
