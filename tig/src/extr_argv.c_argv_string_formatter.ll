; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_argv_string_formatter.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_argv_string_formatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_context = type { i32, i32 }
%struct.format_var = type { i8**, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.format_context*, %struct.format_var*)* @argv_string_formatter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argv_string_formatter(%struct.format_context* %0, %struct.format_var* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.format_context*, align 8
  %5 = alloca %struct.format_var*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.format_context* %0, %struct.format_context** %4, align 8
  store %struct.format_var* %1, %struct.format_var** %5, align 8
  %8 = load %struct.format_var*, %struct.format_var** %5, align 8
  %9 = getelementptr inbounds %struct.format_var, %struct.format_var* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %6, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.format_var*, %struct.format_var** %5, align 8
  %18 = getelementptr inbounds %struct.format_var, %struct.format_var* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %33

25:                                               ; preds = %20
  %26 = load %struct.format_context*, %struct.format_context** %4, align 8
  %27 = getelementptr inbounds %struct.format_context, %struct.format_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.format_context*, %struct.format_context** %4, align 8
  %30 = getelementptr inbounds %struct.format_context, %struct.format_context* %29, i32 0, i32 0
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @string_format_from(i32 %28, i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @string_format_from(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
