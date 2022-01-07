; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxGetTableInfo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxGetTableInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"PRAGMA table_info=%Q\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_6__**, i8**)* @idxGetTableInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxGetTableInfo(i32* %0, i8* %1, %struct.TYPE_6__** %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @STRLEN(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 24, %23
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %12, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  store i8* null, i8** %16, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @idxPrintfPrepareStmt(i32* %27, i32** %9, i8** %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %42, %4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64, i64* @SQLITE_ROW, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @sqlite3_step(i32* %37)
  %39 = icmp eq i64 %36, %38
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %62

42:                                               ; preds = %40
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @sqlite3_column_text(i32* %43, i32 1)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @STRLEN(i8* %46)
  %48 = add nsw i32 1, %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = call i32 @sqlite3_table_column_metadata(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53, i32 0, i8** %17, i32 0, i32 0, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @STRLEN(i8* %55)
  %57 = add nsw i32 1, %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %31

62:                                               ; preds = %40
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @sqlite3_reset(i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 24, %72
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @SQLITE_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = call %struct.TYPE_6__* @idxMalloc(i32* %14, i32 %82)
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %13, align 8
  br label %84

84:                                               ; preds = %81, %70
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 1
  %91 = bitcast %struct.TYPE_6__* %90 to %struct.TYPE_7__*
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = bitcast %struct.TYPE_7__* %102 to i8*
  store i8* %103, i8** %16, align 8
  br label %104

104:                                              ; preds = %88, %84
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %175, %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i64, i64* @SQLITE_ROW, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i64 @sqlite3_step(i32* %111)
  %113 = icmp eq i64 %110, %112
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i1 [ false, %105 ], [ %113, %109 ]
  br i1 %115, label %116, label %178

116:                                              ; preds = %114
  %117 = load i32*, i32** %9, align 8
  %118 = call i64 @sqlite3_column_text(i32* %117, i32 1)
  %119 = inttoptr i64 %118 to i8*
  store i8* %119, i8** %18, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @STRLEN(i8* %120)
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  %123 = load i8*, i8** %16, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i8* %123, i8** %130, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @sqlite3_column_int(i32* %131, i32 5)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32 %132, i32* %139, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @memcpy(i8* %140, i8* %141, i32 %142)
  %144 = load i32, i32* %19, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %16, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = call i32 @sqlite3_table_column_metadata(i32* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %149, i8* %150, i32 0, i8** %18, i32 0, i32 0, i32 0)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %116
  %156 = load i8*, i8** %18, align 8
  %157 = call i32 @STRLEN(i8* %156)
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  %159 = load i8*, i8** %16, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i8* %159, i8** %166, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* %19, align 4
  %170 = call i32 @memcpy(i8* %167, i8* %168, i32 %169)
  %171 = load i32, i32* %19, align 4
  %172 = load i8*, i8** %16, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %16, align 8
  br label %175

175:                                              ; preds = %155, %116
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %105

178:                                              ; preds = %114
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @idxFinalize(i32* %14, i32* %179)
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @SQLITE_OK, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %186 = call i32 @sqlite3_free(%struct.TYPE_6__* %185)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  br label %198

187:                                              ; preds = %178
  %188 = load i8*, i8** %16, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  %197 = call i32 @memcpy(i8* %193, i8* %194, i32 %196)
  br label %198

198:                                              ; preds = %187, %184
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %200 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %199, %struct.TYPE_6__** %200, align 8
  %201 = load i32, i32* %14, align 4
  ret i32 %201
}

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @idxPrintfPrepareStmt(i32*, i32**, i8**, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_table_column_metadata(i32*, i8*, i8*, i8*, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local %struct.TYPE_6__* @idxMalloc(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @idxFinalize(i32*, i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
