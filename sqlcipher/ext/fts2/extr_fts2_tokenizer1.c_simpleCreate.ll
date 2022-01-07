; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_tokenizer1.c_simpleCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_tokenizer1.c_simpleCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32**)* @simpleCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpleCreate(i32 %0, i8** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = call i64 @sqlite3_malloc(i32 16)
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 16)
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 128
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = call i32 @sqlite3_free(%struct.TYPE_4__* %45)
  %47 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %102

48:                                               ; preds = %33
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %29
  br label %97

59:                                               ; preds = %19
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 128
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp sge i32 %64, 48
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = icmp sle i32 %67, 57
  br i1 %68, label %83, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 65
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp sle i32 %73, 90
  br i1 %74, label %83, label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %12, align 4
  %77 = icmp sge i32 %76, 97
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp sle i32 %79, 122
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ false, %75 ], [ %80, %78 ]
  br label %83

83:                                               ; preds = %81, %72, %66
  %84 = phi i1 [ true, %72 ], [ true, %66 ], [ %82, %81 ]
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %60

96:                                               ; preds = %60
  br label %97

97:                                               ; preds = %96, %58
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %7, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* @SQLITE_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %44, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
