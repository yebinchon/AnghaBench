; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_getenv_harder.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_getenv_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @getenv_harder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getenv_harder(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @pam_getenv(i8* %13, i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @isempty(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %4, align 8
  br label %31

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @secure_getenv(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @isempty(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %4, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %27, %19
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @pam_getenv(i8*, i8*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i8* @secure_getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
