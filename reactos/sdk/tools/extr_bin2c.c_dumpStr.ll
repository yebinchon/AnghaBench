; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/extr_bin2c.c_dumpStr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/extr_bin2c.c_dumpStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\0A    \22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @dumpStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dumpStr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32*, i32** %3, align 8
  %11 = call zeroext i8 @fgetc(i32* %10)
  store i8 %11, i8* %6, align 1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @feof(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = urem i64 %19, 16
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %18, %15
  %28 = load i32*, i32** %4, align 8
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %9
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @feof(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %9, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local zeroext i8 @fgetc(i32*) #1

declare dso_local i32 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
