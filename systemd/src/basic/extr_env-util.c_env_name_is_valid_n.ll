; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_env-util.c_env_name_is_valid_n.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_env-util.c_env_name_is_valid_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_ARG_MAX = common dso_local global i32 0, align 4
@VALID_CHARS_ENV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @env_name_is_valid_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_name_is_valid_n(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ule i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %54

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 57
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %54

27:                                               ; preds = %20, %14
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @_SC_ARG_MAX, align 4
  %30 = call i64 @sysconf(i32 %29)
  %31 = sub i64 %30, 2
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %54

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %50, %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = icmp ult i8* %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* @VALID_CHARS_ENV_NAME, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @strchr(i32 %43, i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %54

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %36

53:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %33, %26, %13, %9
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
