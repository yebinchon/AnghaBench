; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SetResponseError.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SetResponseError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INTERNET_CANNOT_CONNECT = common dso_local global i32 0, align 4
@ERROR_INTERNET_CONNECTION_ABORTED = common dso_local global i32 0, align 4
@ERROR_INTERNET_LOGIN_FAILURE = common dso_local global i32 0, align 4
@ERROR_INTERNET_EXTENDED_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @FTP_SetResponseError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTP_SetResponseError(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %12 [
    i32 425, label %5
    i32 426, label %7
    i32 530, label %9
    i32 421, label %11
    i32 450, label %11
    i32 451, label %11
    i32 452, label %11
    i32 500, label %11
    i32 501, label %11
    i32 502, label %11
    i32 503, label %11
    i32 504, label %11
    i32 532, label %11
    i32 550, label %11
    i32 551, label %11
    i32 552, label %11
    i32 553, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ERROR_INTERNET_CANNOT_CONNECT, align 4
  store i32 %6, i32* %3, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR_INTERNET_CONNECTION_ABORTED, align 4
  store i32 %8, i32* %3, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR_INTERNET_LOGIN_FAILURE, align 4
  store i32 %10, i32* %3, align 4
  br label %14

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, i32* @ERROR_INTERNET_EXTENDED_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %9, %7, %5
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @INTERNET_SetLastError(i32 %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @INTERNET_SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
