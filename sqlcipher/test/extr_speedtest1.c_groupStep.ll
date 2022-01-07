; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_groupStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_groupStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.groupConcat = type { i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @groupStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @groupStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.groupConcat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_type(i32* %24)
  %26 = load i64, i64* @SQLITE_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %84

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @sqlite3_aggregate_context(i32* %30, i32 8)
  %32 = inttoptr i64 %31 to %struct.groupConcat*
  store %struct.groupConcat* %32, %struct.groupConcat** %8, align 8
  %33 = load %struct.groupConcat*, %struct.groupConcat** %8, align 8
  %34 = icmp ne %struct.groupConcat* %33, null
  br i1 %34, label %35, label %84

35:                                               ; preds = %29
  %36 = load %struct.groupConcat*, %struct.groupConcat** %8, align 8
  %37 = getelementptr inbounds %struct.groupConcat, %struct.groupConcat* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sqlite3_value_text(i32* %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %9, align 8
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @sqlite3_value_bytes(i32* %54)
  store i32 %55, i32* %11, align 4
  br label %57

56:                                               ; preds = %43
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.groupConcat*, %struct.groupConcat** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @groupAppend(%struct.groupConcat* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32**, i32*** %6, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @sqlite3_value_text(i32* %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %7, align 8
  %72 = load i32**, i32*** %6, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @sqlite3_value_bytes(i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.groupConcat*, %struct.groupConcat** %8, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @groupAppend(%struct.groupConcat* %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %66
  br label %84

84:                                               ; preds = %28, %83, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @groupAppend(%struct.groupConcat*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
