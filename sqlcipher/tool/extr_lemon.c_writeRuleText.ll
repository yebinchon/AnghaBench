; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_writeRuleText.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_writeRuleText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, %struct.symbol**, %struct.TYPE_3__* }
%struct.symbol = type { i64, i8*, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s ::=\00", align 1
@MULTITERMINAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rule*)* @writeRuleText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeRuleText(i32* %0, %struct.rule* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.rule* %1, %struct.rule** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.rule*, %struct.rule** %4, align 8
  %10 = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @fprintf(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %73, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rule*, %struct.rule** %4, align 8
  %18 = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %15
  %22 = load %struct.rule*, %struct.rule** %4, align 8
  %23 = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 1
  %24 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.symbol*, %struct.symbol** %24, i64 %26
  %28 = load %struct.symbol*, %struct.symbol** %27, align 8
  store %struct.symbol* %28, %struct.symbol** %6, align 8
  %29 = load %struct.symbol*, %struct.symbol** %6, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MULTITERMINAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.symbol*, %struct.symbol** %6, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %72

40:                                               ; preds = %21
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.symbol*, %struct.symbol** %6, align 8
  %43 = getelementptr inbounds %struct.symbol, %struct.symbol* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @fprintf(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %68, %40
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.symbol*, %struct.symbol** %6, align 8
  %53 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.symbol*, %struct.symbol** %6, align 8
  %59 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %50

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %34
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %15

76:                                               ; preds = %15
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
