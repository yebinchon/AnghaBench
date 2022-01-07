; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxFindIndexes.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxFindIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EXPLAIN QUERY PLAN %s\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c" USING INDEX \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" USING COVERING INDEX \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idxFindIndexes(%struct.TYPE_9__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %7, align 4
  %21 = call i32 @idxHashInit(%struct.TYPE_12__* %8)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  br label %25

25:                                               ; preds = %184, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %188

34:                                               ; preds = %32
  store i32* null, i32** %10, align 8
  %35 = call i32 @idxHashClear(%struct.TYPE_12__* %8)
  %36 = load i32*, i32** %6, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @idxPrintfPrepareStmt(i32* %36, i32** %10, i8** %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %160, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @sqlite3_step(i32* %47)
  %49 = load i64, i64* @SQLITE_ROW, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %161

53:                                               ; preds = %51
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @sqlite3_column_text(i32* %54, i32 3)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @STRLEN(i8* %57)
  store i32 %58, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %143, %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %146

63:                                               ; preds = %59
  store i8* null, i8** %14, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i64 @memcmp(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 13
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %14, align 8
  br label %90

76:                                               ; preds = %63
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i64 @memcmp(i8* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 22)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 22
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8* %88, i8** %14, align 8
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i8*, i8** %14, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %142

93:                                               ; preds = %90
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %123, %93
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %94
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 32
  br i1 %109, label %119, label %110

110:                                              ; preds = %102
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 40
  br label %119

119:                                              ; preds = %110, %102
  %120 = phi i1 [ true, %102 ], [ %118, %110 ]
  br label %121

121:                                              ; preds = %119, %94
  %122 = phi i1 [ false, %94 ], [ %120, %119 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %94

126:                                              ; preds = %121
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i8* @idxHashSearch(i32* %128, i8* %129, i32 %130)
  store i8* %131, i8** %15, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @idxHashAdd(i32* %7, %struct.TYPE_12__* %8, i8* %135, i32 0)
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %189

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %126
  br label %146

142:                                              ; preds = %90
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %59

146:                                              ; preds = %141, %59
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 45
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = call i8* @idxAppendText(i32* %7, i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %152, %146
  br label %42

161:                                              ; preds = %51
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %9, align 8
  br label %164

164:                                              ; preds = %177, %161
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %166 = icmp ne %struct.TYPE_11__* %165, null
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @idxAppendText(i32* %7, i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %167
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  store %struct.TYPE_11__* %180, %struct.TYPE_11__** %9, align 8
  br label %164

181:                                              ; preds = %164
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @idxFinalize(i32* %7, i32* %182)
  br label %184

184:                                              ; preds = %181
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  store %struct.TYPE_10__* %187, %struct.TYPE_10__** %5, align 8
  br label %25

188:                                              ; preds = %32
  br label %189

189:                                              ; preds = %188, %139
  %190 = call i32 @idxHashClear(%struct.TYPE_12__* %8)
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32 @idxHashInit(%struct.TYPE_12__*) #1

declare dso_local i32 @idxHashClear(%struct.TYPE_12__*) #1

declare dso_local i32 @idxPrintfPrepareStmt(i32*, i32**, i8**, i8*, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @idxHashSearch(i32*, i8*, i32) #1

declare dso_local i32 @idxHashAdd(i32*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i8* @idxAppendText(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @idxFinalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
