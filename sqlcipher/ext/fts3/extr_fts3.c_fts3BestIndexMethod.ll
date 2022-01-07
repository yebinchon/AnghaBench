; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3BestIndexMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3BestIndexMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i8*, i32, %struct.sqlite3_index_orderby*, %struct.TYPE_7__*, %struct.sqlite3_index_constraint* }
%struct.sqlite3_index_orderby = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@FTS3_FULLSCAN_SEARCH = common dso_local global i8* null, align 8
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@FTS3_DOCID_SEARCH = common dso_local global i64 0, align 8
@FTS3_FULLTEXT_SEARCH = common dso_local global i64 0, align 8
@FTS3_HAVE_LANGID = common dso_local global i64 0, align 8
@FTS3_HAVE_DOCID_GE = common dso_local global i64 0, align 8
@FTS3_HAVE_DOCID_LE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ASC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @fts3BestIndexMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3BestIndexMethod(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sqlite3_index_constraint*, align 8
  %15 = alloca %struct.sqlite3_index_orderby*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %18 = load i8*, i8** @FTS3_FULLSCAN_SEARCH, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 5000000, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %153, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %156

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 8
  %33 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %33, i64 %35
  store %struct.sqlite3_index_constraint* %36, %struct.sqlite3_index_constraint** %14, align 8
  %37 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %38 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %30
  %42 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %43 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_MATCH, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** @FTS3_FULLSCAN_SEARCH, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 undef, i32* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @fts3SetEstimatedRows(%struct.TYPE_8__* %54, i32 undef)
  %56 = load i32, i32* @SQLITE_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %285

57:                                               ; preds = %41
  br label %153

58:                                               ; preds = %30
  %59 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %60 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %65 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = icmp eq i64 %66, %70
  br label %72

72:                                               ; preds = %63, %58
  %73 = phi i1 [ true, %58 ], [ %71, %63 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %79 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i64, i64* @FTS3_DOCID_SEARCH, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %86, %83, %77, %72
  %94 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %95 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_MATCH, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %101 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %106 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sle i64 %107, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i64, i64* @FTS3_FULLTEXT_SEARCH, align 8
  %114 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %115 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 2, i32* %121, align 8
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %112, %104, %99, %93
  %124 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %125 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %131 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = icmp eq i64 %132, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %138, %129, %123
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %145 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %151 [
    i32 131, label %147
    i32 130, label %147
    i32 129, label %149
    i32 128, label %149
  ]

147:                                              ; preds = %143, %143
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %10, align 4
  br label %151

149:                                              ; preds = %143, %143
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %143, %149, %147
  br label %152

152:                                              ; preds = %151, %140
  br label %153

153:                                              ; preds = %152, %57
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %24

156:                                              ; preds = %24
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FTS3_DOCID_SEARCH, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = call i32 @fts3SetUniqueFlag(%struct.TYPE_8__* %163)
  br label %165

165:                                              ; preds = %162, %156
  store i32 1, i32* %12, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store i32 %169, i32* %177, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %168, %165
  %186 = load i32, i32* %9, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %185
  %189 = load i64, i64* @FTS3_HAVE_LANGID, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = or i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  store i32 %194, i32* %202, align 4
  br label %203

203:                                              ; preds = %188, %185
  %204 = load i32, i32* %10, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %203
  %207 = load i64, i64* @FTS3_HAVE_DOCID_GE, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %210, %207
  store i64 %211, i64* %209, align 8
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 7
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  store i32 %212, i32* %220, align 4
  br label %221

221:                                              ; preds = %206, %203
  %222 = load i32, i32* %11, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %221
  %225 = load i64, i64* @FTS3_HAVE_DOCID_LE, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = or i64 %228, %225
  store i64 %229, i64* %227, align 8
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 7
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i32 %230, i32* %238, align 4
  br label %239

239:                                              ; preds = %224, %221
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %277

244:                                              ; preds = %239
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 6
  %247 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %246, align 8
  %248 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %247, i64 0
  store %struct.sqlite3_index_orderby* %248, %struct.sqlite3_index_orderby** %15, align 8
  %249 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %15, align 8
  %250 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %244
  %254 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %15, align 8
  %255 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, 1
  %261 = icmp eq i64 %256, %260
  br i1 %261, label %262, label %276

262:                                              ; preds = %253, %244
  %263 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %15, align 8
  %264 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %269, align 8
  br label %273

270:                                              ; preds = %262
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %272, align 8
  br label %273

273:                                              ; preds = %270, %267
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 5
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %273, %253
  br label %277

277:                                              ; preds = %276, %239
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %280, 0
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = load i32, i32* @SQLITE_OK, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %277, %47
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @fts3SetEstimatedRows(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fts3SetUniqueFlag(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
