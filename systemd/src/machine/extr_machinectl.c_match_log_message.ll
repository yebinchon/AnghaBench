; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_match_log_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_match_log_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"us\00", align 1
@arg_quiet = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @match_log_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_log_message(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @assert(i8** %14)
  %16 = load i8**, i8*** %8, align 8
  %17 = call i32 @assert(i8** %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @sd_bus_message_read(i8** %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10, i8** %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @bus_log_parse_error(i32 %23)
  store i32 0, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @sd_bus_message_get_path(i8** %28)
  %30 = call i32 @streq_ptr(i8* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i64, i64* @arg_quiet, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @LOG_PRI(i32 %37)
  %39 = load i64, i64* @LOG_INFO, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %46

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @log_full(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %41, %32, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @sd_bus_message_read(i8**, i8*, i32*, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @streq_ptr(i8*, i32) #1

declare dso_local i32 @sd_bus_message_get_path(i8**) #1

declare dso_local i64 @LOG_PRI(i32) #1

declare dso_local i32 @log_full(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
