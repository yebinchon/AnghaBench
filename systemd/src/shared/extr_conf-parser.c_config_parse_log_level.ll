; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_log_level.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_log_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to parse log level, ignoring: %s\00", align 1
@LOG_FACMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_log_level(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
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
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %20, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i32 @log_level_from_string(i8* %34)
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %23, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %10
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @log_syntax(i8* %39, i32 %40, i8* %41, i32 %42, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 0, i32* %11, align 4
  br label %61

45:                                               ; preds = %10
  %46 = load i32*, i32** %22, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %23, align 4
  %51 = load i32*, i32** %22, align 8
  store i32 %50, i32* %51, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load i32*, i32** %22, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LOG_FACMASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %23, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %22, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %49
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @log_level_from_string(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
