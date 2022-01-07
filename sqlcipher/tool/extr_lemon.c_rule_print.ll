; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_rule_print.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_rule_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, %struct.symbol**, %struct.TYPE_3__* }
%struct.symbol = type { i64, i32, i8*, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" ::=\00", align 1
@MULTITERMINAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rule_print(i32* %0, %struct.rule* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rule* %1, %struct.rule** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.rule*, %struct.rule** %4, align 8
  %10 = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %75, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rule*, %struct.rule** %4, align 8
  %20 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.rule*, %struct.rule** %4, align 8
  %25 = getelementptr inbounds %struct.rule, %struct.rule* %24, i32 0, i32 1
  %26 = load %struct.symbol**, %struct.symbol*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.symbol*, %struct.symbol** %26, i64 %28
  %30 = load %struct.symbol*, %struct.symbol** %29, align 8
  store %struct.symbol* %30, %struct.symbol** %7, align 8
  %31 = load %struct.symbol*, %struct.symbol** %7, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MULTITERMINAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %23
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.symbol*, %struct.symbol** %7, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %64, %36
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.symbol*, %struct.symbol** %7, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.symbol*, %struct.symbol** %7, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %46

67:                                               ; preds = %46
  br label %74

68:                                               ; preds = %23
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.symbol*, %struct.symbol** %7, align 8
  %71 = getelementptr inbounds %struct.symbol, %struct.symbol* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %68, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %17

78:                                               ; preds = %17
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
