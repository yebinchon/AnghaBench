; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerLoadOneRule.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerLoadOneRule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FUZZER_MX_COST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: cost must be between 1 and %d\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@FUZZER_MX_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: maximum string length is %d\00", align 1
@FUZZER_MX_RULEID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: ruleset must be between 0 and %d\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_8__**, i8**)* @fuzzerLoadOneRule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerLoadOneRule(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @sqlite3_column_int64(i32* %18, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @sqlite3_column_text(i32* %20, i32 1)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @sqlite3_column_text(i32* %23, i32 2)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sqlite3_column_int(i32* %26, i32 3)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %14, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %17, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %48, align 8
  %49 = load i32, i32* @SQLITE_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %163

50:                                               ; preds = %36
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @FUZZER_MX_COST, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FUZZER_MX_COST, align 4
  %62 = sext i32 %61 to i64
  %63 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %62)
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %65, i32* %14, align 4
  br label %159

66:                                               ; preds = %53
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @FUZZER_MX_LENGTH, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @FUZZER_MX_LENGTH, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70, %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FUZZER_MX_LENGTH, align 4
  %79 = sext i32 %78 to i64
  %80 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %77, i64 %79)
  %81 = load i8**, i8*** %9, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %82, i32* %14, align 4
  br label %158

83:                                               ; preds = %70
  %84 = load i64, i64* %10, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @FUZZER_MX_RULEID, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86, %83
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @FUZZER_MX_RULEID, align 8
  %95 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %93, i64 %94)
  %96 = load i8**, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %97, i32* %14, align 4
  br label %157

98:                                               ; preds = %86
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 32, %100
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %101, %103
  %105 = trunc i64 %104 to i32
  %106 = call %struct.TYPE_8__* @sqlite3_malloc64(i32 %105)
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %17, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %108 = icmp eq %struct.TYPE_8__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %110, i32* %14, align 4
  br label %156

111:                                              ; preds = %98
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %113 = call i32 @memset(%struct.TYPE_8__* %112, i32 0, i32 32)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i32 @memcpy(i32 %132, i8* %133, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @memcpy(i32 %139, i8* %140, i32 %142)
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %111, %109
  br label %157

157:                                              ; preds = %156, %90
  br label %158

158:                                              ; preds = %157, %74
  br label %159

159:                                              ; preds = %158, %57
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %161, align 8
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %159, %47
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i64) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
