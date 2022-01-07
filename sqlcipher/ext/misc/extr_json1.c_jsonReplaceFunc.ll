; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonReplaceFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonReplaceFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@JNODE_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonReplaceFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonReplaceFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %102

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @jsonWrongNumArgs(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %102

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_text(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @jsonParse(%struct.TYPE_12__* %7, i32* %22, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %102

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @assert(i32 %33)
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %69, %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @sqlite3_value_text(i32* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call %struct.TYPE_13__* @jsonLookup(%struct.TYPE_12__* %7, i8* %47, i32 0, i32* %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %100

54:                                               ; preds = %39
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @JNODE_REPLACE, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %10, align 4
  br label %35

72:                                               ; preds = %35
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @JNODE_REPLACE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load i32*, i32** %4, align 8
  %83 = load i32**, i32*** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %83, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @sqlite3_result_value(i32* %82, i32* %91)
  br label %99

93:                                               ; preds = %72
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32**, i32*** %6, align 8
  %98 = call i32 @jsonReturnJson(%struct.TYPE_14__* %95, i32* %96, i32** %97)
  br label %99

99:                                               ; preds = %93, %81
  br label %100

100:                                              ; preds = %99, %53
  %101 = call i32 @jsonParseReset(%struct.TYPE_12__* %7)
  br label %102

102:                                              ; preds = %100, %30, %18, %13
  ret void
}

declare dso_local i32 @jsonWrongNumArgs(i32*, i8*) #1

declare dso_local i64 @jsonParse(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @jsonLookup(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i32 @jsonReturnJson(%struct.TYPE_14__*, i32*, i32**) #1

declare dso_local i32 @jsonParseReset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
