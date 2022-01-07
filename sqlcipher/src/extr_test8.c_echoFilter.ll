; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"xFilter\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i32, i32**)* @echoFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echoFilter(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = bitcast %struct.TYPE_7__* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %15, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %16, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %27 = call i64 @simulateVtabError(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %124

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @hashString(i8* %33)
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @appendToEchoModule(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @appendToEchoModule(i32 %44, i8* %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %63, %31
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32**, i32*** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @sqlite3_value_text(i32* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @appendToEchoModule(i32 %54, i8* %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @sqlite3_finalize(i64 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @sqlite3_prepare(i32* %73, i8* %74, i32 -1, i64* %76, i32 0)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br label %86

86:                                               ; preds = %82, %66
  %87 = phi i1 [ true, %66 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %112, %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %115

100:                                              ; preds = %98
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32**, i32*** %11, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @sqlite3_bind_value(i64 %103, i32 %105, i32* %110)
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %90

115:                                              ; preds = %98
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = call i32 @echoNext(%struct.TYPE_7__* %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %29
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i64 @simulateVtabError(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hashString(i8*) #1

declare dso_local i32 @appendToEchoModule(i32, i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i64*, i32) #1

declare dso_local i32 @sqlite3_bind_value(i64, i32, i32*) #1

declare dso_local i32 @echoNext(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
