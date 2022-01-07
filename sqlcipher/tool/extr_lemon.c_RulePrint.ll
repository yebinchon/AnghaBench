; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_RulePrint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_RulePrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, %struct.symbol**, %struct.TYPE_3__* }
%struct.symbol = type { i64, i32, i8*, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s ::=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@MULTITERMINAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RulePrint(i32* %0, %struct.rule* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.rule* %1, %struct.rule** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.rule*, %struct.rule** %5, align 8
  %12 = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %89, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.rule*, %struct.rule** %5, align 8
  %20 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rule*, %struct.rule** %5, align 8
  %33 = getelementptr inbounds %struct.rule, %struct.rule* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %92

37:                                               ; preds = %30
  %38 = load %struct.rule*, %struct.rule** %5, align 8
  %39 = getelementptr inbounds %struct.rule, %struct.rule* %38, i32 0, i32 1
  %40 = load %struct.symbol**, %struct.symbol*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.symbol*, %struct.symbol** %40, i64 %42
  %44 = load %struct.symbol*, %struct.symbol** %43, align 8
  store %struct.symbol* %44, %struct.symbol** %7, align 8
  %45 = load %struct.symbol*, %struct.symbol** %7, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MULTITERMINAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %37
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.symbol*, %struct.symbol** %7, align 8
  %53 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %78, %50
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.symbol*, %struct.symbol** %7, align 8
  %63 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.symbol*, %struct.symbol** %7, align 8
  %69 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %60

81:                                               ; preds = %60
  br label %88

82:                                               ; preds = %37
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.symbol*, %struct.symbol** %7, align 8
  %85 = getelementptr inbounds %struct.symbol, %struct.symbol* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %82, %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %17

92:                                               ; preds = %36, %17
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
