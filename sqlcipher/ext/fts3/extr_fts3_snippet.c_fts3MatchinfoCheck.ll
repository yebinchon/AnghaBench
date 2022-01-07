; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoCheck.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@FTS3_MATCHINFO_NPHRASE = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_NCOL = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_NDOC = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_AVGLENGTH = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_LENGTH = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_LCS = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_HITS = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_LHITS = common dso_local global i8 0, align 1
@FTS3_MATCHINFO_LHITS_BM = common dso_local global i8 0, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unrecognized matchinfo request: %c\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8, i8**)* @fts3MatchinfoCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3MatchinfoCheck(%struct.TYPE_3__* %0, i8 signext %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8** %2, i8*** %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* @FTS3_MATCHINFO_NPHRASE, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %76, label %13

13:                                               ; preds = %3
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @FTS3_MATCHINFO_NCOL, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %76, label %19

19:                                               ; preds = %13
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @FTS3_MATCHINFO_NDOC, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %25, %19
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @FTS3_MATCHINFO_AVGLENGTH, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %36, %30
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @FTS3_MATCHINFO_LENGTH, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %47, %41
  %53 = load i8, i8* %6, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @FTS3_MATCHINFO_LCS, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @FTS3_MATCHINFO_HITS, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @FTS3_MATCHINFO_LHITS, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @FTS3_MATCHINFO_LHITS_BM, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %64, %58, %52, %47, %36, %25, %13, %3
  %77 = load i32, i32* @SQLITE_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load i8**, i8*** %7, align 8
  %80 = load i8, i8* %6, align 1
  %81 = call i32 @sqlite3Fts3ErrMsg(i8** %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %80)
  %82 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @sqlite3Fts3ErrMsg(i8**, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
