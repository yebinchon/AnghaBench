; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_disabled_mode.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_disabled_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Mode %s%s%s is not enabled. I have enabled it for now.\0A\00", align 1
@color_red = common dso_local global i8* null, align 8
@color_reset = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"Please consider adding %s%s%s to the list of enabled modi: %smodi: %s%s%s,%s%s.\0A\00", align 1
@color_green = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @help_print_disabled_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_print_disabled_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @fileno(i32 %4)
  %6 = call i32 @isatty(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @color_red, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** @color_reset, align 8
  %14 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12, i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @color_red, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i8*, i8** @color_reset, align 8
  %19 = load i8*, i8** @color_green, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %21 = load i8*, i8** @color_reset, align 8
  %22 = load i8*, i8** @color_red, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i8*, i8** @color_reset, align 8
  %25 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17, i8* %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
