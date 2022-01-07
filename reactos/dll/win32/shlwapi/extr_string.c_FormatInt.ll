; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_string.c_FormatInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_string.c_FormatInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @FormatInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatInt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca [8 x i8], align 1
  %10 = alloca [24 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %18 = call i32 @FillNumberFmt(i32* %7, i8* %16, i32 8, i8* %17, i32 8)
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 24
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %21, i8** %11, align 8
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %31, %3
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %23, 10
  %25 = add nsw i32 48, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %11, align 8
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %4, align 4
  %30 = sdiv i32 %29, 10
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %22, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %11, align 8
  store i8 45, i8* %39, align 1
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @GetNumberFormatW(i32 %41, i32 0, i8* %42, i32* %7, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @FillNumberFmt(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @GetNumberFormatW(i32, i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
