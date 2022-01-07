; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [139 x i8] c"SELECT b.sql  FROM sqlite_master a, sqlite_master b WHERE a.name GLOB '*_segdir'   AND b.name=substr(a.name,1,length(a.name)-7) ORDER BY 1\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"/* No FTS3/4 tables found in database %s */\0A\00", align 1
@nExtra = common dso_local global i32 0, align 4
@azExtra = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"big-segments\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"doclist\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"segdir\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"segment-stats\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"vocabulary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @usage(i8* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @sqlite3_open(i8* %22, i32** %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @prepare(i32* %37, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %44, %36
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @sqlite3_step(i32* %40)
  %42 = load i64, i64* @SQLITE_ROW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i8* @sqlite3_column_text(i32* %47, i32 0)
  %49 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %39

50:                                               ; preds = %39
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @sqlite3_finalize(i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %172

61:                                               ; preds = %33
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @usage(i8* %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 3
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %9, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, 4
  store i32 %77, i32* @nExtra, align 4
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 4
  store i8** %79, i8*** @azExtra, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load i32*, i32** %6, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @listBigSegments(i32* %84, i8* %85)
  br label %171

87:                                               ; preds = %69
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @usage(i8* %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32*, i32** %6, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @showDoclist(i32* %100, i8* %101)
  br label %170

103:                                              ; preds = %87
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @showSchema(i32* %108, i8* %109)
  br label %169

111:                                              ; preds = %103
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @showSegdirMap(i32* %116, i8* %117)
  br label %168

119:                                              ; preds = %111
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 5
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @usage(i8* %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32*, i32** %6, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @showSegment(i32* %132, i8* %133)
  br label %167

135:                                              ; preds = %119
  %136 = load i8*, i8** %9, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @showSegmentStats(i32* %140, i8* %141)
  br label %166

143:                                              ; preds = %135
  %144 = load i8*, i8** %9, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32*, i32** %6, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @showStat(i32* %148, i8* %149)
  br label %165

151:                                              ; preds = %143
  %152 = load i8*, i8** %9, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32*, i32** %6, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @showVocabulary(i32* %156, i8* %157)
  br label %164

159:                                              ; preds = %151
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @usage(i8* %162)
  br label %164

164:                                              ; preds = %159, %155
  br label %165

165:                                              ; preds = %164, %147
  br label %166

166:                                              ; preds = %165, %139
  br label %167

167:                                              ; preds = %166, %131
  br label %168

168:                                              ; preds = %167, %115
  br label %169

169:                                              ; preds = %168, %107
  br label %170

170:                                              ; preds = %169, %99
  br label %171

171:                                              ; preds = %170, %83
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %60
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @prepare(i32*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @listBigSegments(i32*, i8*) #1

declare dso_local i32 @showDoclist(i32*, i8*) #1

declare dso_local i32 @showSchema(i32*, i8*) #1

declare dso_local i32 @showSegdirMap(i32*, i8*) #1

declare dso_local i32 @showSegment(i32*, i8*) #1

declare dso_local i32 @showSegmentStats(i32*, i8*) #1

declare dso_local i32 @showStat(i32*, i8*) #1

declare dso_local i32 @showVocabulary(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
