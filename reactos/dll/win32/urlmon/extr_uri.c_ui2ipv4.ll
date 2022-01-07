; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_ui2ipv4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_ui2ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui2ipv4.formatW = internal constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ui2ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui2ipv4(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 24
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintfW(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @ui2ipv4.formatW, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %47

36:                                               ; preds = %2
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintfW(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @ui2ipv4.formatW, i64 0, i64 0), i32 %39, i32 %41, i32 %43, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %36, %25
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
