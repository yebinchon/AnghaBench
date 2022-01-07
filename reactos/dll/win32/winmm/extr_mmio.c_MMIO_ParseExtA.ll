; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_ParseExtA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_ParseExtA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No . in szFileName: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Extension length > 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Got extension: %s\0A\00", align 1
@MMIO_TOUPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @MMIO_ParseExtA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMIO_ParseExtA(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @debugstr_a(i32* %8)
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @strrchr(i32* %16, i8 signext 46)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @debugstr_a(i32* %21)
  %23 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %64

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @strchr(i32 %25, i8 signext 43)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @min(i32 %43, i32 5)
  %45 = call i32 @lstrcpynA(i32* %38, i32 %40, i32 %44)
  br label %57

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @lstrcpynA(i32* %53, i32 %55, i32 5)
  br label %57

57:                                               ; preds = %52, %37
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %59 = call i32 @debugstr_a(i32* %58)
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* @MMIO_TOUPPER, align 4
  %63 = call i32 @mmioStringToFOURCCA(i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %20
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32*) #1

declare dso_local i32 @strrchr(i32*, i8 signext) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @lstrcpynA(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mmioStringToFOURCCA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
