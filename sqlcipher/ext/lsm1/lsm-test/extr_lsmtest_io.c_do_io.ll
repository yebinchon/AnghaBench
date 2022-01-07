; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_io.c_do_io.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_io.c_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"FILE PGSZ ?CMD-1 ...?\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Ridiculous page size: %d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"open: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%dK written in %d ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_io(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 16)
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @testPrintUsage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @getNextSize(i8* %27, i32 0, i32* %11)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @testPrintError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %106

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_7__* @malloc(i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %14, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memset(%struct.TYPE_7__* %38, i32 119, i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @_O_BINARY, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @open(i8* %41, i32 %46, i32 420)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

54:                                               ; preds = %35
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = call i32 @readStdin(i8** %12)
  %59 = call i32 (...) @testTimeInit()
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %71, %57
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i1 [ false, %61 ], [ %68, %66 ]
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @doOneCmd(%struct.TYPE_7__* %6, %struct.TYPE_7__* %72, i32 %73, i8* %74, i8** %13)
  store i32 %75, i32* %11, align 4
  br label %61

76:                                               ; preds = %69
  br label %96

77:                                               ; preds = %54
  %78 = call i32 (...) @testTimeInit()
  store i32 2, i32* %10, align 4
  br label %79

79:                                               ; preds = %92, %77
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @doOneCmd(%struct.TYPE_7__* %6, %struct.TYPE_7__* %84, i32 %85, i8* %90, i8** null)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %79

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %76
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (...) @testTimeGet()
  %100 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @close(i64 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %52, %32, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @testPrintUsage(i8*) #1

declare dso_local i64 @getNextSize(i8*, i32, i32*) #1

declare dso_local i32 @testPrintError(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @readStdin(i8**) #1

declare dso_local i32 @testTimeInit(...) #1

declare dso_local i32 @doOneCmd(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i8**) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @testTimeGet(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
