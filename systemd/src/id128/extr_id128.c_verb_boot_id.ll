; ModuleID = '/home/carl/AnghaBench/systemd/src/id128/extr_id128.c_verb_boot_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/id128/extr_id128.c_verb_boot_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_app = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get %sboot-ID: %m\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"app-specific \00", align 1
@arg_pretty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @verb_boot_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verb_boot_id(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @arg_app, align 4
  %11 = call i64 @sd_id128_is_null(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @sd_id128_get_boot(i32* %8)
  store i32 %14, i32* %9, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @arg_app, align 4
  %17 = call i32 @sd_id128_get_boot_app_specific(i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @arg_app, align 4
  %24 = call i64 @sd_id128_is_null(i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @log_error_errno(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @arg_pretty, align 4
  %32 = call i32 @id128_pretty_print(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @sd_id128_is_null(i32) #1

declare dso_local i32 @sd_id128_get_boot(i32*) #1

declare dso_local i32 @sd_id128_get_boot_app_specific(i32, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @id128_pretty_print(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
