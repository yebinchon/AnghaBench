; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_show_table.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_show_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to sort table: %m\00", align 1
@arg_legend = common dso_local global i64 0, align 8
@JSON_FORMAT_COLOR_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to show table: %m\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0A%zu %s listed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"No %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @show_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_table(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @table_get_rows(i8* %11)
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @arg_output, align 4
  %16 = call i64 @OUTPUT_MODE_IS_JSON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @table_set_sort(i8* %19, i64 0, i64 -1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @log_error_errno(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* @arg_legend, align 8
  %29 = call i32 @table_set_header(i8* %27, i64 %28)
  %30 = load i32, i32* @arg_output, align 4
  %31 = call i64 @OUTPUT_MODE_IS_JSON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @arg_output, align 4
  %36 = call i32 @output_mode_to_json_format_flags(i32 %35)
  %37 = load i32, i32* @JSON_FORMAT_COLOR_AUTO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @table_print_json(i8* %34, i32* null, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @table_print(i8* %41, i32* null)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @log_error_errno(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i64, i64* @arg_legend, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @table_get_rows(i8* %54)
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @table_get_rows(i8* %58)
  %60 = sub nsw i32 %59, 1
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %61)
  br label %66

63:                                               ; preds = %53
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %50
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %46, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @table_get_rows(i8*) #1

declare dso_local i64 @OUTPUT_MODE_IS_JSON(i32) #1

declare dso_local i32 @table_set_sort(i8*, i64, i64) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @table_set_header(i8*, i64) #1

declare dso_local i32 @table_print_json(i8*, i32*, i32) #1

declare dso_local i32 @output_mode_to_json_format_flags(i32) #1

declare dso_local i32 @table_print(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
