; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_parse_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Failed to parse %s=%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @bus_append_parse_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_parse_size(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @parse_size(i8* %12, i32 %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @log_error_errno(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @sd_bus_message_append(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @bus_log_create_error(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @parse_size(i8*, i32, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @bus_log_create_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
