; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error while processing changeset: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @usage(i8* %24)
  br label %26

26:                                               ; preds = %21, %18, %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @fuzzReadFile(i8* %30, i32* %10, i8** %9)
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @fuzzParseChangeset(i8* %32, i32 %33, %struct.TYPE_5__* %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %26
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fuzzPrintGroup(%struct.TYPE_5__* %12, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %42

58:                                               ; preds = %42
  br label %106

59:                                               ; preds = %38
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %61, 1024
  %63 = call i64 @fuzzMalloc(i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %68, i32* %13, align 4
  br label %105

69:                                               ; preds = %59
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @atoi(i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @fuzzRandomSeed(i32 %78)
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %99, %69
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %102

90:                                               ; preds = %88
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %91, i32 %92)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @fuzzDoOneFuzz(i8* %94, i32* %95, %struct.TYPE_5__* %12)
  store i32 %96, i32* %13, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @sqlite3_free(i8* %97)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %80

102:                                              ; preds = %88
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @fuzzFree(i32* %103)
  br label %105

105:                                              ; preds = %102, %67
  br label %106

106:                                              ; preds = %105, %58
  br label %107

107:                                              ; preds = %106, %26
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @stderr, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %13, align 4
  ret i32 %116
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @fuzzReadFile(i8*, i32*, i8**) #1

declare dso_local i32 @fuzzParseChangeset(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fuzzPrintGroup(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @fuzzMalloc(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fuzzRandomSeed(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i32) #1

declare dso_local i32 @fuzzDoOneFuzz(i8*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fuzzFree(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
