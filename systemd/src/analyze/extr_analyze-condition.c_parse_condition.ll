; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-condition.c_parse_condition.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-condition.c_parse_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 (i32*, i8*, i32, i32*, i32, i8*, i32, i8*, i32**, %struct.TYPE_8__*)*, i32 }
%struct.TYPE_8__ = type { i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"Condition\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Assert\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Cannot parse \22%s\22.\00", align 1
@condition_definitions = common dso_local global %struct.TYPE_7__* null, align 8
@WHITESPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Expected \22=\22 in \22%s\22.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @parse_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_condition(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @startswith(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32** %15, i32*** %7, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @startswith(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32** %22, i32*** %7, align 8
  br label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SYNTHETIC_ERRNO(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @log_error_errno(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %13
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %83, %29
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @condition_definitions, align 8
  %33 = call i64 @ELEMENTSOF(%struct.TYPE_7__* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @condition_definitions, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @startswith(i8* %39, i8* %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %83

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @WHITESPACE, align 4
  %50 = call i64 @strspn(i8* %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 61
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SYNTHETIC_ERRNO(i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @log_error_errno(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %47
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i32, i32* @WHITESPACE, align 4
  %66 = call i64 @strspn(i8* %64, i32 %65)
  %67 = add nsw i64 1, %66
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32 (i32*, i8*, i32, i32*, i32, i8*, i32, i8*, i32**, %struct.TYPE_8__*)*, i32 (i32*, i8*, i32, i32*, i32, i8*, i32, i8*, i32**, %struct.TYPE_8__*)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32**, i32*** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = call i32 %72(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32 0, i8* %75, i32 %78, i8* %79, i32** %80, %struct.TYPE_8__* %81)
  store i32 %82, i32* %3, align 4
  br label %91

83:                                               ; preds = %46
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %30

86:                                               ; preds = %30
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @SYNTHETIC_ERRNO(i32 %87)
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @log_error_errno(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %62, %57, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @ELEMENTSOF(%struct.TYPE_7__*) #1

declare dso_local i64 @strspn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
