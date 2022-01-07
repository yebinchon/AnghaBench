; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_strv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_strv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTRACT_UNQUOTE = common dso_local global i32 0, align 4
@EXTRACT_RETAIN_ESCAPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid syntax, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_strv(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i8***, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
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
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to i8***
  store i8*** %26, i8**** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i64 @isempty(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %10
  %39 = load i8***, i8**** %22, align 8
  %40 = load i8**, i8*** %39, align 8
  %41 = call i8** @strv_free(i8** %40)
  %42 = load i8***, i8**** %22, align 8
  store i8** %41, i8*** %42, align 8
  store i32 0, i32* %11, align 4
  br label %80

43:                                               ; preds = %10
  br label %44

44:                                               ; preds = %78, %43
  store i8* null, i8** %24, align 8
  %45 = load i32, i32* @EXTRACT_UNQUOTE, align 4
  %46 = load i32, i32* @EXTRACT_RETAIN_ESCAPE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @extract_first_word(i8** %19, i8** %24, i32* null, i32 %47)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %79

52:                                               ; preds = %44
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @log_oom()
  store i32 %58, i32* %11, align 4
  br label %80

59:                                               ; preds = %52
  %60 = load i32, i32* %23, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i8*, i8** %19, align 8
  %69 = call i32 @log_syntax(i8* %63, i32 %64, i8* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %79

70:                                               ; preds = %59
  %71 = load i8***, i8**** %22, align 8
  %72 = load i8*, i8** %24, align 8
  %73 = call i32 @strv_consume(i8*** %71, i8* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (...) @log_oom()
  store i32 %77, i32* %11, align 4
  br label %80

78:                                               ; preds = %70
  br label %44

79:                                               ; preds = %62, %51
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %76, %57, %38
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i8** @strv_free(i8**) #1

declare dso_local i32 @extract_first_word(i8**, i8**, i32*, i32) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @strv_consume(i8***, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
