; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@JSON_FORMAT_COLOR_AUTO = common dso_local global i32 0, align 4
@JSON_FORMAT_COLOR = common dso_local global i32 0, align 4
@JSON_FORMAT_SSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@JSON_FORMAT_SEQ = common dso_local global i32 0, align 4
@JSON_FORMAT_PRETTY = common dso_local global i32 0, align 4
@JSON_FORMAT_NEWLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_variant_dump(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %79

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** @stdout, align 8
  store i32* %16, i32** %7, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @print_source(i32* %18, i32* %19, i32 %20, i32 0)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @JSON_FORMAT_COLOR_AUTO, align 4
  %24 = load i32, i32* @JSON_FORMAT_COLOR, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @JSON_FORMAT_COLOR_AUTO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = call i64 (...) @colors_enabled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @JSON_FORMAT_COLOR, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %29, %17
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @JSON_FORMAT_SSE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @JSON_FORMAT_SEQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fputc(i8 signext 30, i32* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @json_format(i32* %53, i32* %54, i32 %55, i8* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @JSON_FORMAT_PRETTY, align 4
  %60 = load i32, i32* @JSON_FORMAT_SEQ, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @JSON_FORMAT_SSE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @JSON_FORMAT_NEWLINE, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %58, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fputc(i8 signext 10, i32* %69)
  br label %71

71:                                               ; preds = %68, %52
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @JSON_FORMAT_SSE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @fputc(i8 signext 10, i32* %77)
  br label %79

79:                                               ; preds = %11, %76, %71
  ret void
}

declare dso_local i32 @print_source(i32*, i32*, i32, i32) #1

declare dso_local i64 @colors_enabled(...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @json_format(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
