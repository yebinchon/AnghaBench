; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-nss.c_nss_status_to_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-nss.c_nss_status_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"NSS_STATUS_TRYAGAIN\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"NSS_STATUS_UNAVAIL\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"NSS_STATUS_NOTFOUND\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"NSS_STATUS_SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NSS_STATUS_RETURN\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i64)* @nss_status_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nss_status_to_string(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %14 [
    i32 129, label %9
    i32 128, label %10
    i32 132, label %11
    i32 130, label %12
    i32 131, label %13
  ]

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %20

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %20

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %20

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %20

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %14, %13, %12, %11, %10, %9
  %21 = load i8*, i8** %4, align 8
  ret i8* %21
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
