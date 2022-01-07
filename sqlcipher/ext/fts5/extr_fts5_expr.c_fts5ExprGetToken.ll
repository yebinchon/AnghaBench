; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprGetToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprGetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@FTS5_LP = common dso_local global i32 0, align 4
@FTS5_RP = common dso_local global i32 0, align 4
@FTS5_LCP = common dso_local global i32 0, align 4
@FTS5_RCP = common dso_local global i32 0, align 4
@FTS5_COLON = common dso_local global i32 0, align 4
@FTS5_COMMA = common dso_local global i32 0, align 4
@FTS5_PLUS = common dso_local global i32 0, align 4
@FTS5_STAR = common dso_local global i32 0, align 4
@FTS5_MINUS = common dso_local global i32 0, align 4
@FTS5_CARET = common dso_local global i32 0, align 4
@FTS5_EOF = common dso_local global i32 0, align 4
@FTS5_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fts5: syntax error near \22%.1s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@FTS5_OR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@FTS5_NOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@FTS5_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, %struct.TYPE_3__*)* @fts5ExprGetToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprGetToken(i32* %0, i8** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %19, %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @fts5ExprIsspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %97 [
    i32 40, label %31
    i32 41, label %33
    i32 123, label %35
    i32 125, label %37
    i32 58, label %39
    i32 44, label %41
    i32 43, label %43
    i32 42, label %45
    i32 45, label %47
    i32 94, label %49
    i32 0, label %51
    i32 34, label %53
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* @FTS5_LP, align 4
  store i32 %32, i32* %9, align 4
  br label %169

33:                                               ; preds = %22
  %34 = load i32, i32* @FTS5_RP, align 4
  store i32 %34, i32* %9, align 4
  br label %169

35:                                               ; preds = %22
  %36 = load i32, i32* @FTS5_LCP, align 4
  store i32 %36, i32* %9, align 4
  br label %169

37:                                               ; preds = %22
  %38 = load i32, i32* @FTS5_RCP, align 4
  store i32 %38, i32* %9, align 4
  br label %169

39:                                               ; preds = %22
  %40 = load i32, i32* @FTS5_COLON, align 4
  store i32 %40, i32* %9, align 4
  br label %169

41:                                               ; preds = %22
  %42 = load i32, i32* @FTS5_COMMA, align 4
  store i32 %42, i32* %9, align 4
  br label %169

43:                                               ; preds = %22
  %44 = load i32, i32* @FTS5_PLUS, align 4
  store i32 %44, i32* %9, align 4
  br label %169

45:                                               ; preds = %22
  %46 = load i32, i32* @FTS5_STAR, align 4
  store i32 %46, i32* %9, align 4
  br label %169

47:                                               ; preds = %22
  %48 = load i32, i32* @FTS5_MINUS, align 4
  store i32 %48, i32* %9, align 4
  br label %169

49:                                               ; preds = %22
  %50 = load i32, i32* @FTS5_CARET, align 4
  store i32 %50, i32* %9, align 4
  br label %169

51:                                               ; preds = %22
  %52 = load i32, i32* @FTS5_EOF, align 4
  store i32 %52, i32* %9, align 4
  br label %169

53:                                               ; preds = %22
  %54 = load i32, i32* @FTS5_STRING, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %85, %53
  br i1 true, label %58, label %88

58:                                               ; preds = %57
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 34
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %88

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 (i32*, i8*, ...) @sqlite3Fts5ParseError(i32* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @FTS5_EOF, align 4
  store i32 %83, i32* %4, align 4
  br label %180

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  br label %57

88:                                               ; preds = %72, %57
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %169

97:                                               ; preds = %22
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @sqlite3Fts5IsBareword(i8 signext %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32*, i32** %5, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 (i32*, i8*, ...) @sqlite3Fts5ParseError(i32* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @FTS5_EOF, align 4
  store i32 %107, i32* %4, align 4
  br label %180

108:                                              ; preds = %97
  %109 = load i32, i32* @FTS5_STRING, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %11, align 8
  br label %112

112:                                              ; preds = %118, %108
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @sqlite3Fts5IsBareword(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  br label %112

121:                                              ; preds = %112
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %142

134:                                              ; preds = %121
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @memcmp(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @FTS5_OR, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %134, %121
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @memcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @FTS5_NOT, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %147, %142
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @memcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* @FTS5_AND, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %160, %155
  br label %169

169:                                              ; preds = %168, %88, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = load i8**, i8*** %6, align 8
  store i8* %177, i8** %178, align 8
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %169, %103, %80
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @fts5ExprIsspace(i8 signext) #1

declare dso_local i32 @sqlite3Fts5ParseError(i32*, i8*, ...) #1

declare dso_local i32 @sqlite3Fts5IsBareword(i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
