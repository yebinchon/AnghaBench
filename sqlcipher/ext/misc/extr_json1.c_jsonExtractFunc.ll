; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonExtractFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonExtractFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@JSON_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonExtractFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonExtractFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %88

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_4__* @jsonParseCached(i32* %16, i32** %17, i32* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %88

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @jsonInit(i32* %10, i32* %24)
  %26 = call i32 @jsonAppendChar(i32* %10, i8 signext 91)
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %70, %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @sqlite3_value_text(i32* %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @jsonLookup(%struct.TYPE_4__* %39, i8* %40, i32 0, i32* %41)
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %73

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = call i32 @jsonAppendSeparator(i32* %10)
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @jsonRenderNode(i32* %56, i32* %10, i32 0)
  br label %60

58:                                               ; preds = %51
  %59 = call i32 @jsonAppendRaw(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %60

60:                                               ; preds = %58, %55
  br label %69

61:                                               ; preds = %48
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @jsonReturn(i32* %65, i32* %66, i32 0)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %27

73:                                               ; preds = %47, %27
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = call i32 @jsonAppendChar(i32* %10, i8 signext 93)
  %82 = call i32 @jsonResult(i32* %10)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @JSON_SUBTYPE, align 4
  %85 = call i32 @sqlite3_result_subtype(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %76, %73
  %87 = call i32 @jsonReset(i32* %10)
  br label %88

88:                                               ; preds = %86, %22, %14
  ret void
}

declare dso_local %struct.TYPE_4__* @jsonParseCached(i32*, i32**, i32*) #1

declare dso_local i32 @jsonInit(i32*, i32*) #1

declare dso_local i32 @jsonAppendChar(i32*, i8 signext) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32* @jsonLookup(%struct.TYPE_4__*, i8*, i32, i32*) #1

declare dso_local i32 @jsonAppendSeparator(i32*) #1

declare dso_local i32 @jsonRenderNode(i32*, i32*, i32) #1

declare dso_local i32 @jsonAppendRaw(i32*, i8*, i32) #1

declare dso_local i32 @jsonReturn(i32*, i32*, i32) #1

declare dso_local i32 @jsonResult(i32*) #1

declare dso_local i32 @sqlite3_result_subtype(i32*, i32) #1

declare dso_local i32 @jsonReset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
