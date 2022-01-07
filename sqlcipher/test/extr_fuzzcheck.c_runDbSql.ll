; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_runDbSql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_runDbSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@eVerbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RUNNING-SQL: [%s]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"SQL-ERROR: (%d) %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SQL-ERROR (%d): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @runDbSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runDbSql(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %15

15:                                               ; preds = %24, %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 127
  %21 = trunc i32 %20 to i8
  %22 = call i64 @isspace(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %181

35:                                               ; preds = %27
  %36 = load i32, i32* @eVerbosity, align 4
  %37 = icmp sge i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sqlite3_prepare_v2(i32* %44, i8* %45, i32 -1, i32** %7, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %167

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %151, %50
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @sqlite3_step(i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @SQLITE_ROW, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %152

56:                                               ; preds = %51
  %57 = load i32, i32* @eVerbosity, align 4
  %58 = icmp sge i32 %57, 5
  br i1 %58, label %59, label %151

59:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %144, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @sqlite3_column_count(i32* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @sqlite3_column_type(i32* %71, i32 %72)
  switch i32 %73, label %143 [
    i32 129, label %74
    i32 130, label %76
    i32 131, label %76
    i32 132, label %81
    i32 128, label %107
  ]

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %143

76:                                               ; preds = %70, %70
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @sqlite3_column_text(i32* %77, i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %143

81:                                               ; preds = %70
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @sqlite3_column_bytes(i32* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @sqlite3_column_blob(i32* %85, i32 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %11, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %102, %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %90

105:                                              ; preds = %90
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %143

107:                                              ; preds = %70
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @sqlite3_column_bytes(i32* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @sqlite3_column_blob(i32* %111, i32 %112)
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %14, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %138, %107
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 39
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %137

130:                                              ; preds = %120
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @putchar(i8 zeroext %135)
  br label %137

137:                                              ; preds = %130, %128
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %116

141:                                              ; preds = %116
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %70, %141, %105, %76, %74
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %60

147:                                              ; preds = %60
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %149 = load i32, i32* @stdout, align 4
  %150 = call i32 @fflush(i32 %149)
  br label %151

151:                                              ; preds = %147, %56
  br label %51

152:                                              ; preds = %51
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @SQLITE_DONE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* @eVerbosity, align 4
  %158 = icmp sge i32 %157, 4
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** %4, align 8
  %162 = call i8* @sqlite3_errmsg(i32* %161)
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %160, i8* %162)
  %164 = load i32, i32* @stdout, align 4
  %165 = call i32 @fflush(i32 %164)
  br label %166

166:                                              ; preds = %159, %156, %152
  br label %178

167:                                              ; preds = %43
  %168 = load i32, i32* @eVerbosity, align 4
  %169 = icmp sge i32 %168, 4
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %6, align 4
  %172 = load i32*, i32** %4, align 8
  %173 = call i8* @sqlite3_errmsg(i32* %172)
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %171, i8* %173)
  %175 = load i32, i32* @stdout, align 4
  %176 = call i32 @fflush(i32 %175)
  br label %177

177:                                              ; preds = %170, %167
  br label %178

178:                                              ; preds = %177, %166
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @sqlite3_finalize(i32* %179)
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %33
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @putchar(i8 zeroext) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
