; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshShowHints.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshShowHints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abuf = type { i32 }
%struct.linenoiseState = type { i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"\1B[%d;%d;49m\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refreshShowHints(%struct.abuf* %0, %struct.linenoiseState* %1, i32 %2) #0 {
  %4 = alloca %struct.abuf*, align 8
  %5 = alloca %struct.linenoiseState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.abuf* %0, %struct.abuf** %4, align 8
  store %struct.linenoiseState* %1, %struct.linenoiseState** %5, align 8
  store i32 %2, i32* %6, align 4
  br i1 true, label %13, label %92

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.linenoiseState*, %struct.linenoiseState** %5, align 8
  %17 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.linenoiseState*, %struct.linenoiseState** %5, align 8
  %21 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %13
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.linenoiseState*, %struct.linenoiseState** %5, align 8
  %26 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @hintsCallback(i32 %27, i32* %8, i32* %9)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %91

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.linenoiseState*, %struct.linenoiseState** %5, align 8
  %35 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.linenoiseState*, %struct.linenoiseState** %5, align 8
  %40 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = sub nsw i64 %36, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 37, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %53, %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @snprintf(i8* %64, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.abuf*, %struct.abuf** %4, align 8
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @abAppend(%struct.abuf* %69, i8* %70, i32 %72)
  %74 = load %struct.abuf*, %struct.abuf** %4, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @abAppend(%struct.abuf* %74, i8* %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %83, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %68
  %84 = load %struct.abuf*, %struct.abuf** %4, align 8
  %85 = call i32 @abAppend(%struct.abuf* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %86

86:                                               ; preds = %83, %80
  br i1 true, label %87, label %90

87:                                               ; preds = %86
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @freeHintsCallback(i8* %88)
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %24
  br label %92

92:                                               ; preds = %91, %13, %3
  ret void
}

declare dso_local i8* @hintsCallback(i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i32) #1

declare dso_local i32 @freeHintsCallback(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
