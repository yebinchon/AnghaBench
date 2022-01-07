; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_WeekdayName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_WeekdayName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_WeekdayName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_WeekdayName(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  %17 = icmp ule i32 1, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %19, 3
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @to_int(i32* %25, i32* %10)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %72

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @to_int(i32* %37, i32* %12)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = call i32 @to_int(i32* %49, i32* %11)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %72

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @VarWeekdayName(i32 %59, i32 %60, i32 %61, i32 0, i32* %13)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @return_bstr(i32* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %66, %54, %42, %30
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @VarWeekdayName(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @return_bstr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
