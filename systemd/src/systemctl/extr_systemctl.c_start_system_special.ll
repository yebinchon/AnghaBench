; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_start_system_special.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_start_system_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_scope = common dso_local global i64 0, align 8
@UNIT_FILE_SYSTEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bad action for %s mode.\00", align 1
@UNIT_FILE_GLOBAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"--global\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @start_system_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_system_special(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* @arg_scope, align 8
  %9 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @SYNTHETIC_ERRNO(i32 %12)
  %14 = load i64, i64* @arg_scope, align 8
  %15 = load i64, i64* @UNIT_FILE_GLOBAL, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @log_error_errno(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @start_special(i32 %21, i8** %22, i8* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %11
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @start_special(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
