; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_parse_column.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_parse_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*)* }
%union.ext_column = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't find column %s.%s\0A\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %union.ext_column*, i32*)* @parse_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_column(%struct.TYPE_12__* %0, %union.ext_column* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %union.ext_column*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %union.ext_column* %1, %union.ext_column** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  br label %16

16:                                               ; preds = %98, %3
  %17 = load %union.ext_column*, %union.ext_column** %6, align 8
  %18 = bitcast %union.ext_column* %17 to %struct.TYPE_11__*
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*)** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_14__* %32, i32 1, i32* null, i32* null, i32* null, i32* %11)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %116

39:                                               ; preds = %22
  %40 = load i32, i32* %11, align 4
  %41 = load %union.ext_column*, %union.ext_column** %6, align 8
  %42 = bitcast %union.ext_column* %41 to %struct.TYPE_11__*
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strcmpW(i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %98

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %16
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %94, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*)** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 %63(%struct.TYPE_14__* %66, i32 %67, i32* %12, i32* %68, i32* null, i32* null)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ERROR_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %116

75:                                               ; preds = %56
  %76 = load i32, i32* %12, align 4
  %77 = load %union.ext_column*, %union.ext_column** %6, align 8
  %78 = bitcast %union.ext_column* %77 to %struct.TYPE_11__*
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @strcmpW(i32 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %94

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = load %union.ext_column*, %union.ext_column** %6, align 8
  %87 = bitcast %union.ext_column* %86 to %struct.TYPE_10__*
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = load %union.ext_column*, %union.ext_column** %6, align 8
  %91 = bitcast %union.ext_column* %90 to %struct.TYPE_10__*
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %92, align 8
  %93 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %93, i32* %4, align 4
  br label %116

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %50

97:                                               ; preds = %50
  br label %98

98:                                               ; preds = %97, %47
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %8, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %16, label %103

103:                                              ; preds = %98
  %104 = load %union.ext_column*, %union.ext_column** %6, align 8
  %105 = bitcast %union.ext_column* %104 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @debugstr_w(i32 %107)
  %109 = load %union.ext_column*, %union.ext_column** %6, align 8
  %110 = bitcast %union.ext_column* %109 to %struct.TYPE_11__*
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @debugstr_w(i32 %112)
  %114 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %113)
  %115 = load i32, i32* @ERROR_BAD_QUERY_SYNTAX, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %103, %84, %73, %37
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @strcmpW(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
