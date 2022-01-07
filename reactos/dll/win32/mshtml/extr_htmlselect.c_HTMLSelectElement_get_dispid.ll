; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlselect.c_HTMLSelectElement_get_dispid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlselect.c_HTMLSelectElement_get_dispid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSHTML_CUSTOM_DISPID_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"too big idx\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@DISPID_OPTIONCOL_0 = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i64*)* @HTMLSelectElement_get_dispid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLSelectElement_get_dispid(i32* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %10, align 8
  br label %13

13:                                               ; preds = %38, %4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @isdigitW(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i1 [ false, %13 ], [ %21, %17 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %25, 10
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 48
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MSHTML_CUSTOM_DISPID_CNT, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = call i32 @WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %36, i32* %5, align 4
  br label %54

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  br label %13

41:                                               ; preds = %22
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %41
  %48 = load i64, i64* @DISPID_OPTIONCOL_0, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %45, %34
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @isdigitW(i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
