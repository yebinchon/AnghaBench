; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_MonthName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_MonthName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_MonthName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_MonthName(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 2
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @to_int(i32* %24, i32* %10)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %57

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @to_int(i32* %36, i32* %11)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %57

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @VarMonthName(i32 %45, i32 %46, i32 0, i32* %12)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @return_bstr(i32* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %51, %41, %29
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @VarMonthName(i32, i32, i32, i32*) #1

declare dso_local i32 @return_bstr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
