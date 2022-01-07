; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_luac.c_PrintDebug.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_luac.c_PrintDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"constants (%d) for %p:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%d\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"locals (%d) for %p:\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09%d\09%s\09%d\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"upvalues (%d) for %p:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @PrintDebug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintDebug(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call i32 @VOID(%struct.TYPE_9__* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @PrintConstant(%struct.TYPE_9__* %20, i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @VOID(%struct.TYPE_9__* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %69, %27
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @getstr(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %40, i8* %49, i32 %58, i32 %67)
  br label %69

69:                                               ; preds = %39
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %35

72:                                               ; preds = %35
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = call i32 @VOID(%struct.TYPE_9__* %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %105, %72
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i8* @UPVALNAME(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %85, i8* %87, i32 %95, i32 %103)
  br label %105

105:                                              ; preds = %84
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %80

108:                                              ; preds = %80
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @VOID(%struct.TYPE_9__*) #1

declare dso_local i32 @PrintConstant(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @getstr(i32) #1

declare dso_local i8* @UPVALNAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
