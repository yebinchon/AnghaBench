; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_patch_var_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_patch_var_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/var/run/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/run/\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [117 x i8] c"%s= references a path below legacy directory /var/run/, updating %s \E2\86\92 %s; please update the unit file accordingly.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i8**)* @patch_var_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_var_run(i8* %0, i8* %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8**, i8*** %11, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @path_startswith(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %41

20:                                               ; preds = %5
  %21 = load i8*, i8** %12, align 8
  %22 = call i8* @path_join(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (...) @log_oom()
  store i32 %26, i32* %6, align 4
  br label %41

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @LOG_NOTICE, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i8**, i8*** %11, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @log_syntax(i8* %28, i32 %29, i8* %30, i32 %31, i32 0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %34, i8* %35)
  %37 = load i8**, i8*** %11, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @free_and_replace(i8* %38, i8* %39)
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %27, %25, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i8* @path_startswith(i8*, i8*) #1

declare dso_local i8* @path_join(i8*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free_and_replace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
