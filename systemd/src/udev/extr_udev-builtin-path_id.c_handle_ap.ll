; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_ap.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ap_functions\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ap-%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ap-%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8**)* @handle_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @handle_ap(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = call i32 @assert(i8** %8)
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @assert(i8** %10)
  %12 = load i8**, i8*** %3, align 8
  %13 = call i64 @sd_device_get_sysattr_value(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i8**, i8*** %3, align 8
  %17 = call i64 @sd_device_get_sysattr_value(i8** %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8**, i8*, i8*, ...) @path_prepend(i8** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %22)
  br label %33

24:                                               ; preds = %15, %2
  %25 = load i8**, i8*** %3, align 8
  %26 = call i64 @sd_device_get_sysname(i8** %25, i8** %7)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8**, i8*** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i8**, i8*, i8*, ...) @path_prepend(i8** %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i8**, i8*** %3, align 8
  %35 = call i8** @skip_subsystem(i8** %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret i8** %35
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @sd_device_get_sysattr_value(i8**, i8*, i8**) #1

declare dso_local i32 @path_prepend(i8**, i8*, i8*, ...) #1

declare dso_local i64 @sd_device_get_sysname(i8**, i8**) #1

declare dso_local i8** @skip_subsystem(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
