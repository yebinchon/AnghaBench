; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshSingleLine.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshSingleLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i32, i8*, i64, i64, i64 }
%struct.abuf = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D\1B[%dC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linenoiseState*)* @refreshSingleLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshSingleLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.abuf, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %10 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %11 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %15 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %21 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %24 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %34, %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %8, align 8
  br label %26

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  %46 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %47 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %7, align 8
  br label %42

53:                                               ; preds = %42
  %54 = call i32 @abInit(%struct.abuf* %9)
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %59 = call i64 @strlen(i8* %58)
  %60 = call i32 @abAppend(%struct.abuf* %9, i8* %57, i64 %59)
  %61 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %62 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %65 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = call i32 @abAppend(%struct.abuf* %9, i8* %63, i64 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @abAppend(%struct.abuf* %9, i8* %69, i64 %70)
  %72 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @refreshShowHints(%struct.abuf* %9, %struct.linenoiseState* %72, i64 %73)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %79 = call i64 @strlen(i8* %78)
  %80 = call i32 @abAppend(%struct.abuf* %9, i8* %77, i64 %79)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %89 = call i64 @strlen(i8* %88)
  %90 = call i32 @abAppend(%struct.abuf* %9, i8* %87, i64 %89)
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.abuf, %struct.abuf* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.abuf, %struct.abuf* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write(i32 %91, i32 %93, i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %53
  br label %99

99:                                               ; preds = %98, %53
  %100 = call i32 @abFree(%struct.abuf* %9)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @abInit(%struct.abuf*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i64) #1

declare dso_local i32 @refreshShowHints(%struct.abuf*, %struct.linenoiseState*, i64) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @abFree(%struct.abuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
