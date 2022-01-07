; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_file.c_hresult_from_http_response.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_file.c_hresult_from_http_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_400 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_401 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_404 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_407 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_414 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_501 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_503 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_504 = common dso_local global i32 0, align 4
@BG_E_HTTP_ERROR_505 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unhandled response code %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hresult_from_http_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hresult_from_http_response(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 200, label %5
    i32 400, label %7
    i32 401, label %9
    i32 404, label %11
    i32 407, label %13
    i32 414, label %15
    i32 501, label %17
    i32 503, label %19
    i32 504, label %21
    i32 505, label %23
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @S_OK, align 4
  store i32 %6, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load i32, i32* @BG_E_HTTP_ERROR_400, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @BG_E_HTTP_ERROR_401, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @BG_E_HTTP_ERROR_404, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @BG_E_HTTP_ERROR_407, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @BG_E_HTTP_ERROR_414, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @BG_E_HTTP_ERROR_501, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @BG_E_HTTP_ERROR_503, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @BG_E_HTTP_ERROR_504, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @BG_E_HTTP_ERROR_505, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
