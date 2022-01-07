; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3InitTokenizer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3InitTokenizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i8**, %struct.TYPE_6__**)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown tokenizer: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"unknown tokenizer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3InitTokenizer(i32* %0, i8* %1, %struct.TYPE_6__** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %26, i32* %5, align 4
  br label %159

27:                                               ; preds = %4
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @sqlite3Fts3NextToken(i8* %32, i32* %12)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %13, align 8
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %37, %27
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @sqlite3Fts3Dequote(i8* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = trunc i64 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = call i64 @sqlite3Fts3HashFind(i32* %50, i8* %51, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %15, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %43
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (i8**, i8*, ...) @sqlite3Fts3ErrMsg(i8** %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %64, i32* %10, align 4
  br label %155

65:                                               ; preds = %43
  store i8** null, i8*** %16, align 8
  store i32 0, i32* %17, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %102, %65
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8
  %77 = call i64 @sqlite3Fts3NextToken(i8* %76, i32* %12)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %11, align 8
  %79 = icmp ne i8* null, %78
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i1 [ false, %71 ], [ %79, %75 ]
  br i1 %81, label %82, label %121

82:                                               ; preds = %80
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i8**, i8*** %16, align 8
  %89 = bitcast i8** %88 to i8*
  %90 = load i32, i32* %18, align 4
  %91 = call i64 @sqlite3_realloc64(i8* %89, i32 %90)
  %92 = inttoptr i64 %91 to i8**
  store i8** %92, i8*** %19, align 8
  %93 = load i8**, i8*** %19, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %82
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @sqlite3_free(i8* %96)
  %98 = load i8**, i8*** %16, align 8
  %99 = bitcast i8** %98 to i8*
  %100 = call i32 @sqlite3_free(i8* %99)
  %101 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %101, i32* %5, align 4
  br label %159

102:                                              ; preds = %82
  %103 = load i8**, i8*** %19, align 8
  store i8** %103, i8*** %16, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i8**, i8*** %16, align 8
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %104, i8** %109, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @sqlite3Fts3Dequote(i8* %114)
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %11, align 8
  br label %71

121:                                              ; preds = %80
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32 (i32, i8**, %struct.TYPE_6__**)*, i32 (i32, i8**, %struct.TYPE_6__**)** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i8**, i8*** %16, align 8
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %128 = call i32 %124(i32 %125, i8** %126, %struct.TYPE_6__** %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @SQLITE_OK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %121
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = icmp ne %struct.TYPE_6__* %134, null
  br label %136

136:                                              ; preds = %132, %121
  %137 = phi i1 [ true, %121 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i8**, i8*** %9, align 8
  %145 = call i32 (i8**, i8*, ...) @sqlite3Fts3ErrMsg(i8** %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %151

146:                                              ; preds = %136
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %150, align 8
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i8**, i8*** %16, align 8
  %153 = bitcast i8** %152 to i8*
  %154 = call i32 @sqlite3_free(i8* %153)
  br label %155

155:                                              ; preds = %151, %60
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 @sqlite3_free(i8* %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %95, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3Fts3NextToken(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3Dequote(i8*) #1

declare dso_local i64 @sqlite3Fts3HashFind(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts3ErrMsg(i8**, i8*, ...) #1

declare dso_local i64 @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
