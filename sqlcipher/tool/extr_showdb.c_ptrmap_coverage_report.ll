; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_ptrmap_coverage_report.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_ptrmap_coverage_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"empty database\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"database does not use PTRMAP pages\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%5d: root of sqlite_master\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%5d: PTRMAP page covering %d..%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"b-tree root page\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"freelist page\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"first page of overflow\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"later page of overflow\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"b-tree non-root page\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%5d: %s, parent=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ptrmap_coverage_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrmap_coverage_report(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %107

15:                                               ; preds = %1
  %16 = call i8* @fileRead(i32 0, i32 100)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 55
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %107

24:                                               ; preds = %15
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 20
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %25, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 5
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sqlite3_free(i8* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 2, i32* %3, align 4
  br label %36

36:                                               ; preds = %102, %24
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %43, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @fileRead(i32 %51, i32 %52)
  store i8* %53, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %96, %40
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 5
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 5
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %66 = icmp sle i32 %64, %65
  br label %67

67:                                               ; preds = %59, %54
  %68 = phi i1 [ false, %54 ], [ %66, %59 ]
  br i1 %68, label %69, label %99

69:                                               ; preds = %67
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = call i32 @decodeInt32(i8* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  switch i32 %81, label %87 [
    i32 1, label %82
    i32 2, label %83
    i32 3, label %84
    i32 4, label %85
    i32 5, label %86
  ]

82:                                               ; preds = %69
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %87

83:                                               ; preds = %69
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %87

84:                                               ; preds = %69
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %87

85:                                               ; preds = %69
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %87

86:                                               ; preds = %69
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %87

87:                                               ; preds = %69, %86, %85, %84, %83, %82
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %8, align 4
  %91 = sdiv i32 %90, 5
  %92 = add nsw i32 %89, %91
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %92, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 5
  store i32 %98, i32* %8, align 4
  br label %54

99:                                               ; preds = %67
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @sqlite3_free(i8* %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %36

107:                                              ; preds = %13, %22, %36
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @decodeInt32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
