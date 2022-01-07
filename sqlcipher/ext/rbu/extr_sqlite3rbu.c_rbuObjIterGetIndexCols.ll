; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetIndexCols.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetIndexCols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64*, i32, i8**, i8**, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PRAGMA main.index_xinfo = %Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@RBU_PK_IPK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"_rowid_\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rbu_rowid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%z%s\22%w\22 COLLATE %Q\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%z%s\22rbu_imp_%d%w\22%s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%z%s\22rbu_imp_%d%w\22 %s COLLATE %Q\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%z%s\22rbu_imp_%d%w\22 IS ?\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, %struct.TYPE_7__*, i8**, i8**, i8**, i32*)* @rbuObjIterGetIndexCols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbuObjIterGetIndexCols(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i8** %2, i8** %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i32* null, i32** %22, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @SQLITE_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = call i32 @prepareFreeAndCollectError(i32 %45, i32** %22, i32* %47, i8* %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %36, %6
  br label %56

56:                                               ; preds = %186, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i64, i64* @SQLITE_ROW, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i64 @sqlite3_step(i32* %62)
  %64 = icmp eq i64 %61, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br i1 %66, label %67, label %189

67:                                               ; preds = %65
  %68 = load i32*, i32** %22, align 8
  %69 = call i32 @sqlite3_column_int(i32* %68, i32 1)
  store i32 %69, i32* %23, align 4
  %70 = load i32*, i32** %22, align 8
  %71 = call i32 @sqlite3_column_int(i32* %70, i32 3)
  store i32 %71, i32* %24, align 4
  %72 = load i32*, i32** %22, align 8
  %73 = call i64 @sqlite3_column_text(i32* %72, i32 4)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %25, align 8
  %75 = load i32, i32* %23, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RBU_PK_IPK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %77
  store i32 0, i32* %28, align 4
  br label %84

84:                                               ; preds = %94, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %28, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %28, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %28, align 4
  br label %84

97:                                               ; preds = %84
  %98 = load i32, i32* %28, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %28, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %26, align 8
  br label %119

112:                                              ; preds = %77
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = call i64 @rbuIsVacuum(%struct.TYPE_6__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  br label %118

117:                                              ; preds = %112
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  br label %118

118:                                              ; preds = %117, %116
  br label %119

119:                                              ; preds = %118, %97
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 8
  br label %135

120:                                              ; preds = %67
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %26, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %27, align 8
  br label %135

135:                                              ; preds = %120, %119
  %136 = load i8*, i8** %15, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = load i8*, i8** %26, align 8
  %139 = load i8*, i8** %25, align 8
  %140 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %136, i8* %137, i8* %138, i8* %139)
  store i8* %140, i8** %15, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = load i32*, i32** %22, align 8
  %147 = call i32 @sqlite3_column_int(i32* %146, i32 5)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %145, %135
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %153, i8** %29, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %19, align 4
  %157 = load i8*, i8** %26, align 8
  %158 = load i8*, i8** %29, align 8
  %159 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %154, i8* %155, i32 %156, i8* %157, i8* %158)
  store i8* %159, i8** %17, align 8
  br label %160

160:                                              ; preds = %149, %145
  %161 = load i8*, i8** %16, align 8
  %162 = load i8*, i8** %20, align 8
  %163 = load i32, i32* %19, align 4
  %164 = load i8*, i8** %26, align 8
  %165 = load i8*, i8** %27, align 8
  %166 = load i8*, i8** %25, align 8
  %167 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %161, i8* %162, i32 %163, i8* %164, i8* %165, i8* %166)
  store i8* %167, i8** %16, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = load i32, i32* %19, align 4
  %171 = load i8*, i8** %26, align 8
  %172 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %169, i32 %170, i8* %171)
  store i8* %172, i8** %18, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %184, label %175

175:                                              ; preds = %160
  %176 = load i8*, i8** %17, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i8*, i8** %16, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i8*, i8** %18, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181, %178, %175, %160
  %185 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %184, %181
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %21, align 8
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %56

189:                                              ; preds = %65
  %190 = load i32*, i32** %22, align 8
  %191 = call i32 @sqlite3_finalize(i32* %190)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %195, %189
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @SQLITE_OK, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load i8*, i8** %15, align 8
  %203 = call i32 @sqlite3_free(i8* %202)
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @sqlite3_free(i8* %204)
  %206 = load i8*, i8** %17, align 8
  %207 = call i32 @sqlite3_free(i8* %206)
  %208 = load i8*, i8** %18, align 8
  %209 = call i32 @sqlite3_free(i8* %208)
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %201, %197
  %214 = load i8*, i8** %16, align 8
  %215 = load i8**, i8*** %9, align 8
  store i8* %214, i8** %215, align 8
  %216 = load i8*, i8** %17, align 8
  %217 = load i8**, i8*** %10, align 8
  store i8* %216, i8** %217, align 8
  %218 = load i8*, i8** %18, align 8
  %219 = load i8**, i8*** %11, align 8
  store i8* %218, i8** %219, align 8
  %220 = load i32, i32* %19, align 4
  %221 = load i32*, i32** %12, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i8*, i8** %15, align 8
  ret i8* %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prepareFreeAndCollectError(i32, i32**, i32*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
