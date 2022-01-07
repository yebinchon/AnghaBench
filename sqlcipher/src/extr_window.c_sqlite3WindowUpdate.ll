; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_20__*, i8*, i64, i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i8* }
%struct.WindowUpdate = type { i8*, i32, i32, i32 }
%struct.WindowUpdate.0 = type { i8*, i32, i32, i32 }

@TK_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression\00", align 1
@SQLITE_FUNC_WINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"FILTER clause may only be used with aggregate window functions\00", align 1
@row_numberName = common dso_local global i32 0, align 4
@TK_ROWS = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i32 0, align 4
@TK_CURRENT = common dso_local global i32 0, align 4
@dense_rankName = common dso_local global i32 0, align 4
@rankName = common dso_local global i32 0, align 4
@percent_rankName = common dso_local global i32 0, align 4
@TK_GROUPS = common dso_local global i64 0, align 8
@cume_distName = common dso_local global i32 0, align 4
@TK_FOLLOWING = common dso_local global i32 0, align 4
@ntileName = common dso_local global i32 0, align 4
@leadName = common dso_local global i32 0, align 4
@lagName = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WindowUpdate(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [8 x %struct.WindowUpdate], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %8, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %17
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_18__* @windowFind(%struct.TYPE_19__* %23, %struct.TYPE_18__* %24, i64 %27)
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %9, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = icmp eq %struct.TYPE_18__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %320

32:                                               ; preds = %22
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 9
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i8* @sqlite3ExprListDup(i32* %35, %struct.TYPE_17__* %38, i32 0)
  %40 = bitcast i8* %39 to %struct.TYPE_17__*
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 9
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = call i8* @sqlite3ExprListDup(i32* %45, %struct.TYPE_17__* %48, i32 0)
  %50 = bitcast i8* %49 to %struct.TYPE_17__*
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 8
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @sqlite3ExprDup(i32* %55, i8* %58, i32 0)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @sqlite3ExprDup(i32* %64, i8* %67, i32 0)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 5
  store i64 %88, i64* %90, align 8
  br label %96

91:                                               ; preds = %17, %4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = call i32 @sqlite3WindowChain(%struct.TYPE_19__* %92, %struct.TYPE_18__* %93, %struct.TYPE_18__* %94)
  br label %96

96:                                               ; preds = %91, %32
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TK_RANGE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %96
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = icmp eq %struct.TYPE_17__* %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %117, %112
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = call i32 @sqlite3ErrorMsg(%struct.TYPE_19__* %125, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %316

127:                                              ; preds = %117, %107, %96
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SQLITE_FUNC_WINDOW, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %315

134:                                              ; preds = %127
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %10, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = call i32 @sqlite3ErrorMsg(%struct.TYPE_19__* %143, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %314

145:                                              ; preds = %134
  %146 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 0
  %147 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %146, i32 0, i32 0
  %148 = load i32, i32* @row_numberName, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  store i8* %150, i8** %147, align 8
  %151 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %146, i32 0, i32 1
  %152 = load i64, i64* @TK_ROWS, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %151, align 8
  %154 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %146, i32 0, i32 2
  %155 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %155, i32* %154, align 4
  %156 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %146, i32 0, i32 3
  %157 = load i32, i32* @TK_CURRENT, align 4
  store i32 %157, i32* %156, align 8
  %158 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %146, i64 1
  %159 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %158, i32 0, i32 0
  %160 = load i32, i32* @dense_rankName, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  store i8* %162, i8** %159, align 8
  %163 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %158, i32 0, i32 1
  %164 = load i64, i64* @TK_RANGE, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %163, align 8
  %166 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %158, i32 0, i32 2
  %167 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %167, i32* %166, align 4
  %168 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %158, i32 0, i32 3
  %169 = load i32, i32* @TK_CURRENT, align 4
  store i32 %169, i32* %168, align 8
  %170 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %158, i64 1
  %171 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %170, i32 0, i32 0
  %172 = load i32, i32* @rankName, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  store i8* %174, i8** %171, align 8
  %175 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %170, i32 0, i32 1
  %176 = load i64, i64* @TK_RANGE, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %175, align 8
  %178 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %170, i32 0, i32 2
  %179 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %179, i32* %178, align 4
  %180 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %170, i32 0, i32 3
  %181 = load i32, i32* @TK_CURRENT, align 4
  store i32 %181, i32* %180, align 8
  %182 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %170, i64 1
  %183 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %182, i32 0, i32 0
  %184 = load i32, i32* @percent_rankName, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  store i8* %186, i8** %183, align 8
  %187 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %182, i32 0, i32 1
  %188 = load i64, i64* @TK_GROUPS, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %187, align 8
  %190 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %182, i32 0, i32 2
  %191 = load i32, i32* @TK_CURRENT, align 4
  store i32 %191, i32* %190, align 4
  %192 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %182, i32 0, i32 3
  %193 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %193, i32* %192, align 8
  %194 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %182, i64 1
  %195 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %194, i32 0, i32 0
  %196 = load i32, i32* @cume_distName, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  store i8* %198, i8** %195, align 8
  %199 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %194, i32 0, i32 1
  %200 = load i64, i64* @TK_GROUPS, align 8
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %199, align 8
  %202 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %194, i32 0, i32 2
  %203 = load i32, i32* @TK_FOLLOWING, align 4
  store i32 %203, i32* %202, align 4
  %204 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %194, i32 0, i32 3
  %205 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %205, i32* %204, align 8
  %206 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %194, i64 1
  %207 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %206, i32 0, i32 0
  %208 = load i32, i32* @ntileName, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  store i8* %210, i8** %207, align 8
  %211 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %206, i32 0, i32 1
  %212 = load i64, i64* @TK_ROWS, align 8
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %211, align 8
  %214 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %206, i32 0, i32 2
  %215 = load i32, i32* @TK_CURRENT, align 4
  store i32 %215, i32* %214, align 4
  %216 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %206, i32 0, i32 3
  %217 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %217, i32* %216, align 8
  %218 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %206, i64 1
  %219 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %218, i32 0, i32 0
  %220 = load i32, i32* @leadName, align 4
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  store i8* %222, i8** %219, align 8
  %223 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %218, i32 0, i32 1
  %224 = load i64, i64* @TK_ROWS, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %223, align 8
  %226 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %218, i32 0, i32 2
  %227 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %227, i32* %226, align 4
  %228 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %218, i32 0, i32 3
  %229 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %229, i32* %228, align 8
  %230 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %218, i64 1
  %231 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %230, i32 0, i32 0
  %232 = load i32, i32* @lagName, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  store i8* %234, i8** %231, align 8
  %235 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %230, i32 0, i32 1
  %236 = load i64, i64* @TK_ROWS, align 8
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %235, align 8
  %238 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %230, i32 0, i32 2
  %239 = load i32, i32* @TK_UNBOUNDED, align 4
  store i32 %239, i32* %238, align 4
  %240 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %230, i32 0, i32 3
  %241 = load i32, i32* @TK_CURRENT, align 4
  store i32 %241, i32* %240, align 8
  store i32 0, i32* %12, align 4
  br label %242

242:                                              ; preds = %310, %145
  %243 = load i32, i32* %12, align 4
  %244 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 0
  %245 = bitcast %struct.WindowUpdate* %244 to %struct.WindowUpdate.0*
  %246 = call i32 @ArraySize(%struct.WindowUpdate.0* %245)
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %313

248:                                              ; preds = %242
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = icmp eq i8* %251, %256
  br i1 %257, label %258, label %309

258:                                              ; preds = %248
  %259 = load i32*, i32** %10, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 4
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @sqlite3ExprDelete(i32* %259, i8* %262)
  %264 = load i32*, i32** %10, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 6
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @sqlite3ExprDelete(i32* %264, i8* %267)
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 4
  store i8* null, i8** %270, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 6
  store i8* null, i8** %272, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x %struct.WindowUpdate], [8 x %struct.WindowUpdate]* %11, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.WindowUpdate, %struct.WindowUpdate* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 5
  store i64 0, i64* %296, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @TK_FOLLOWING, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %258
  %303 = load i32*, i32** %10, align 8
  %304 = load i32, i32* @TK_INTEGER, align 4
  %305 = call i8* @sqlite3Expr(i32* %303, i32 %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %302, %258
  br label %313

309:                                              ; preds = %248
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %12, align 4
  br label %242

313:                                              ; preds = %308, %242
  br label %314

314:                                              ; preds = %313, %142
  br label %315

315:                                              ; preds = %314, %127
  br label %316

316:                                              ; preds = %315, %124
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 3
  store %struct.TYPE_20__* %317, %struct.TYPE_20__** %319, align 8
  br label %320

320:                                              ; preds = %316, %31
  ret void
}

declare dso_local %struct.TYPE_18__* @windowFind(%struct.TYPE_19__*, %struct.TYPE_18__*, i64) #1

declare dso_local i8* @sqlite3ExprListDup(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i8* @sqlite3ExprDup(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3WindowChain(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @ArraySize(%struct.WindowUpdate.0*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i8*) #1

declare dso_local i8* @sqlite3Expr(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
