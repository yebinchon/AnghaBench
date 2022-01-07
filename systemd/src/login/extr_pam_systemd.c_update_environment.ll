; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_update_environment.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_update_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_SUCCESS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to set environment variable %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @update_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_environment(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @isempty(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @pam_misc_setenv(i8* %19, i8* %20, i8* %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAM_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @pam_syslog(i8* %27, i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @pam_misc_setenv(i8*, i8*, i8*, i32) #1

declare dso_local i32 @pam_syslog(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
