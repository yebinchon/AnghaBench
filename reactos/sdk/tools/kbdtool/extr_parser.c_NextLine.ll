; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/kbdtool/extr_parser.c_NextLine.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/kbdtool/extr_parser.c_NextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gLineCount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NextLine(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %57, %47, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @fgets(i8* %11, i32 %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load i32, i32* @gLineCount, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @gLineCount, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %39, %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 9
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %20
  %38 = phi i1 [ false, %20 ], [ %36, %35 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %20

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 59
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %10

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %10

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  store i8 0, i8* %59, align 1
  br label %68

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 10)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %60
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %10
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
