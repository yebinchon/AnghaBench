; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showVocabulary.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showVocabulary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"viewer_%llx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SELECT count(*) FROM %Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Number of documents...................... %9d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"CREATE VIRTUAL TABLE %s USING fts4aux(%Q)\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"SELECT count(*), sum(occurrences) FROM %s WHERE col='*'\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Total tokens in all documents............ %9d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Total number of distinct tokens.......... %9d\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"SELECT count(*) FROM %s WHERE col='*' AND occurrences==1\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Tokens used exactly once................. %9d %5.2f%%\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"SELECT count(*) FROM %s WHERE col='*' AND documents==1\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Tokens used in only one document......... %9d %5.2f%%\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"SELECT count(*) FROM %s WHERE col='*' AND occurrences<=%d\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Tokens used in 0.1%% or less of docs...... %9d %5.2f%%\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Tokens used in 1%% or less of docs........ %9d %5.2f%%\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"The %d most common tokens:\0A\00", align 1
@.str.18 = private unnamed_addr constant [84 x i8] c"SELECT term, documents FROM %s WHERE col='*' ORDER BY documents DESC, term LIMIT %d\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"  %2d. %-30s %9d docs %5.2f%%\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showVocabulary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showVocabulary(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 @sqlite3_randomness(i32 4, i32* %6)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @runSql(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @sqlite3_step(i32* %24)
  %26 = load i64, i64* @SQLITE_ROW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @sqlite3_column_int(i32* %29, i32 0)
  store i32 %30, i32* %8, align 4
  br label %23

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sqlite3_finalize(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @runSql(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  store i32* %42, i32** %7, align 8
  br label %43

43:                                               ; preds = %48, %31
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @sqlite3_step(i32* %44)
  %46 = load i64, i64* @SQLITE_ROW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @sqlite3_column_int(i32* %49, i32 0)
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sqlite3_column_int(i32* %51, i32 1)
  store i32 %52, i32* %10, align 4
  br label %43

53:                                               ; preds = %43
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @sqlite3_finalize(i32* %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %196

63:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %65)
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %72, %63
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @sqlite3_step(i32* %68)
  %70 = load i64, i64* @SQLITE_ROW, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @sqlite3_column_int(i32* %73, i32 0)
  store i32 %74, i32* %12, align 4
  br label %67

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @sqlite3_finalize(i32* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sitofp i32 %79 to double
  %81 = fmul double %80, 1.000000e+02
  %82 = load i32, i32* %9, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %81, %83
  %85 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %78, double %84)
  store i32 0, i32* %12, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %86, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  store i32* %88, i32** %7, align 8
  br label %89

89:                                               ; preds = %94, %75
  %90 = load i32*, i32** %7, align 8
  %91 = call i64 @sqlite3_step(i32* %90)
  %92 = load i64, i64* @SQLITE_ROW, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @sqlite3_column_int(i32* %95, i32 0)
  store i32 %96, i32* %12, align 4
  br label %89

97:                                               ; preds = %89
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @sqlite3_finalize(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sitofp i32 %101 to double
  %103 = fmul double %102, 1.000000e+02
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to double
  %106 = fdiv double %103, %105
  %107 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %100, double %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 2000
  br i1 %109, label %110, label %135

110:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  %111 = load i32*, i32** %3, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %113, 1000
  %115 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* %112, i32 %114)
  store i32* %115, i32** %7, align 8
  br label %116

116:                                              ; preds = %121, %110
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @sqlite3_step(i32* %117)
  %119 = load i64, i64* @SQLITE_ROW, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @sqlite3_column_int(i32* %122, i32 0)
  store i32 %123, i32* %12, align 4
  br label %116

124:                                              ; preds = %116
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @sqlite3_finalize(i32* %125)
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sitofp i32 %128 to double
  %130 = fmul double %129, 1.000000e+02
  %131 = load i32, i32* %9, align 4
  %132 = sitofp i32 %131 to double
  %133 = fdiv double %130, %132
  %134 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %127, double %133)
  br label %135

135:                                              ; preds = %124, %97
  %136 = load i32, i32* %8, align 4
  %137 = icmp sge i32 %136, 200
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  %139 = load i32*, i32** %3, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sdiv i32 %141, 100
  %143 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %139, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* %140, i32 %142)
  store i32* %143, i32** %7, align 8
  br label %144

144:                                              ; preds = %149, %138
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @sqlite3_step(i32* %145)
  %147 = load i64, i64* @SQLITE_ROW, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @sqlite3_column_int(i32* %150, i32 0)
  store i32 %151, i32* %12, align 4
  br label %144

152:                                              ; preds = %144
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @sqlite3_finalize(i32* %153)
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sitofp i32 %156 to double
  %158 = fmul double %157, 1.000000e+02
  %159 = load i32, i32* %9, align 4
  %160 = sitofp i32 %159 to double
  %161 = fdiv double %158, %160
  %162 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 %155, double %161)
  br label %163

163:                                              ; preds = %152, %135
  %164 = call i32 @findOption(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %165 = call i32 @atoi(i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %166)
  %168 = load i32*, i32** %3, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32* (i32*, i8*, i8*, ...) @prepare(i32* %168, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.18, i64 0, i64 0), i8* %169, i32 %170)
  store i32* %171, i32** %7, align 8
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %177, %163
  %173 = load i32*, i32** %7, align 8
  %174 = call i64 @sqlite3_step(i32* %173)
  %175 = load i64, i64* @SQLITE_ROW, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @sqlite3_column_int(i32* %180, i32 1)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = call i8* @sqlite3_column_text(i32* %183, i32 0)
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = sitofp i32 %186 to double
  %188 = fmul double %187, 1.000000e+02
  %189 = load i32, i32* %8, align 4
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %188, %190
  %192 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %182, i8* %184, i32 %185, double %191)
  br label %172

193:                                              ; preds = %172
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @sqlite3_finalize(i32* %194)
  br label %196

196:                                              ; preds = %193, %62
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 (i32*, i8*, ...) @runSql(i32* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %199 = load i8*, i8** %5, align 8
  %200 = call i32 @sqlite3_free(i8* %199)
  ret void
}

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i32) #1

declare dso_local i32 @runSql(i32*, i8*, ...) #1

declare dso_local i32* @prepare(i32*, i8*, i8*, ...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @findOption(i8*, i32, i8*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
