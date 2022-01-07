; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SpecialInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3SpecialInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"integrity-check\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"merge=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"automerge=\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @fts3SpecialInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SpecialInsert(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @sqlite3_value_text(i32* %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @sqlite3_value_bytes(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @sqlite3_strnicmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %24 = icmp eq i64 0, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @fts3DoOptimize(%struct.TYPE_8__* %26, i32 0)
  store i32 %27, i32* %6, align 4
  br label %78

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @sqlite3_strnicmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @fts3DoRebuild(%struct.TYPE_8__* %36)
  store i32 %37, i32* %6, align 4
  br label %77

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @sqlite3_strnicmp(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @fts3DoIntegrityCheck(%struct.TYPE_8__* %46)
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 6
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @sqlite3_strnicmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %54 = icmp eq i64 0, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = call i32 @fts3DoIncrmerge(%struct.TYPE_8__* %56, i8* %58)
  store i32 %59, i32* %6, align 4
  br label %75

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 10
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @sqlite3_strnicmp(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 10
  %71 = call i32 @fts3DoAutoincrmerge(%struct.TYPE_8__* %68, i8* %70)
  store i32 %71, i32* %6, align 4
  br label %74

72:                                               ; preds = %63, %60
  %73 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77, %25
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @fts3DoOptimize(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fts3DoRebuild(%struct.TYPE_8__*) #1

declare dso_local i32 @fts3DoIntegrityCheck(%struct.TYPE_8__*) #1

declare dso_local i32 @fts3DoIncrmerge(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @fts3DoAutoincrmerge(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
