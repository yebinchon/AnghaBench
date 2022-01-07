; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSegmentStats.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSegmentStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"SELECT count(*), sum(length(block)), max(length(block)) FROM '%q_segments'\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [158 x i8] c"SELECT count(*), sum(length(block)), max(length(block))  FROM '%q_segments' a JOIN '%q_segdir' b WHERE a.blockid BETWEEN b.leaves_end_block+1 AND b.end_block\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"SELECT count(*), sum(length(root)), max(length(root))  FROM '%q_segdir'\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Number of segments....................... %9d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Number of leaf segments.................. %9d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Number of index segments................. %9d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Number of root segments.................. %9d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Total size of all segments............... %9lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Total size of all leaf segments.......... %9lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Total size of all index segments......... %9lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Total size of all root segments.......... %9lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Average size of all segments............. %11.1f\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Average size of leaf segments............ %11.1f\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Average size of index segments........... %11.1f\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Average size of root segments............ %11.1f\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Maximum segment size..................... %9lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Maximum index segment size............... %9lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Maximum root segment size................ %9lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"PRAGMA page_size\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Database page size....................... %9d\0A\00", align 1
@.str.20 = private unnamed_addr constant [143 x i8] c"SELECT count(*)  FROM '%q_segments' a JOIN '%q_segdir' b WHERE a.blockid BETWEEN b.start_block AND b.leaves_end_block   AND length(a.block)>%d\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Leaf segments larger than %5d bytes.... %9d   %5.2f%%\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"SELECT max(level%%1024) FROM '%q_segdir'\00", align 1
@.str.23 = private unnamed_addr constant [283 x i8] c"SELECT count(*), sum(len), avg(len), max(len), sum(len>%d),       count(distinct idx)  FROM (SELECT length(a.block) AS len, idx          FROM '%q_segments' a JOIN '%q_segdir' b         WHERE (a.blockid BETWEEN b.start_block AND b.leaves_end_block)           AND (b.level%%1024)==%d)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"For level %d:\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"  Number of indexes...................... %9d\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"  Number of leaf segments................ %9d\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"  Average leaf segments per index........ %11.1f\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"  Total size of all leaf segments........ %9lld\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"  Average size of leaf segments.......... %11.1f\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"  Average leaf segment size per index.... %11.1f\0A\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"  Maximum leaf segment size.............. %9lld\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"  Leaf segments larger than %5d bytes.. %9d   %5.2f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showSegmentStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showSegmentStats(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* (i32*, i8*, ...) @prepare(i32* %22, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32* %24, i32** %5, align 8
  br label %25

25:                                               ; preds = %30, %2
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @sqlite3_step(i32* %26)
  %28 = load i64, i64* @SQLITE_ROW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @sqlite3_column_int(i32* %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @sqlite3_column_int64(i32* %33, i32 1)
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @sqlite3_column_int64(i32* %35, i32 2)
  store i64 %36, i64* %8, align 8
  br label %25

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sqlite3_finalize(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32* (i32*, i8*, ...) @prepare(i32* %40, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %49, %37
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @sqlite3_step(i32* %45)
  %47 = load i64, i64* @SQLITE_ROW, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @sqlite3_column_int(i32* %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @sqlite3_column_int64(i32* %52, i32 1)
  store i64 %53, i64* %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @sqlite3_column_int64(i32* %54, i32 2)
  store i64 %55, i64* %11, align 8
  br label %44

56:                                               ; preds = %44
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @sqlite3_finalize(i32* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32* (i32*, i8*, ...) @prepare(i32* %59, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %67, %56
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @sqlite3_step(i32* %63)
  %65 = load i64, i64* @SQLITE_ROW, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @sqlite3_column_int(i32* %68, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @sqlite3_column_int64(i32* %70, i32 1)
  store i64 %71, i64* %13, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @sqlite3_column_int64(i32* %72, i32 2)
  store i64 %73, i64* %14, align 8
  br label %62

74:                                               ; preds = %62
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @sqlite3_finalize(i32* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %13, align 8
  %91 = add nsw i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = sub nsw i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* %10, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  %102 = load i64, i64* %13, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %74
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %13, align 8
  %110 = add nsw i64 %108, %109
  %111 = sitofp i64 %110 to double
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %111, %115
  %117 = fptosi double %116 to i32
  %118 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %119, %120
  %122 = sitofp i64 %121 to double
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sitofp i32 %125 to double
  %127 = fdiv double %122, %126
  %128 = fptosi double %127 to i32
  %129 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %107, %74
  %131 = load i32, i32* %9, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64, i64* %10, align 8
  %135 = sitofp i64 %134 to double
  %136 = load i32, i32* %9, align 4
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %135, %137
  %139 = fptosi double %138 to i32
  %140 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %133, %130
  %142 = load i32, i32* %12, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i64, i64* %13, align 8
  %146 = sitofp i64 %145 to double
  %147 = load i32, i32* %12, align 4
  %148 = sitofp i32 %147 to double
  %149 = fdiv double %146, %148
  %150 = fptosi double %149 to i32
  %151 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %144, %141
  %153 = load i64, i64* %8, align 8
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %14, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i64, i64* %14, align 8
  store i64 %158, i64* %15, align 8
  br label %159

159:                                              ; preds = %157, %152
  %160 = load i64, i64* %15, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %161)
  %163 = load i64, i64* %11, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %164)
  %166 = load i64, i64* %14, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32* (i32*, i8*, ...) @prepare(i32* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i32* %170, i32** %5, align 8
  store i32 1024, i32* %18, align 4
  br label %171

171:                                              ; preds = %176, %159
  %172 = load i32*, i32** %5, align 8
  %173 = call i64 @sqlite3_step(i32* %172)
  %174 = load i64, i64* @SQLITE_ROW, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @sqlite3_column_int(i32* %177, i32 0)
  store i32 %178, i32* %18, align 4
  br label %171

179:                                              ; preds = %171
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @sqlite3_finalize(i32* %180)
  %182 = load i32, i32* %18, align 4
  %183 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %3, align 8
  %185 = load i8*, i8** %4, align 8
  %186 = load i8*, i8** %4, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sub nsw i32 %187, 45
  %189 = call i32* (i32*, i8*, ...) @prepare(i32* %184, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.20, i64 0, i64 0), i8* %185, i8* %186, i32 %188)
  store i32* %189, i32** %5, align 8
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %195, %179
  %191 = load i32*, i32** %5, align 8
  %192 = call i64 @sqlite3_step(i32* %191)
  %193 = load i64, i64* @SQLITE_ROW, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @sqlite3_column_int(i32* %196, i32 0)
  store i32 %197, i32* %17, align 4
  br label %190

198:                                              ; preds = %190
  %199 = load i32*, i32** %5, align 8
  %200 = call i32 @sqlite3_finalize(i32* %199)
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %18, align 4
  %205 = sub nsw i32 %204, 45
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %198
  %210 = load i32, i32* %17, align 4
  %211 = sitofp i32 %210 to double
  %212 = fmul double %211, 1.000000e+02
  %213 = load i32, i32* %16, align 4
  %214 = sitofp i32 %213 to double
  %215 = fdiv double %212, %214
  br label %217

216:                                              ; preds = %198
  br label %217

217:                                              ; preds = %216, %209
  %218 = phi double [ %215, %209 ], [ 0.000000e+00, %216 ]
  %219 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 %205, i32 %206, double %218)
  %220 = load i32*, i32** %3, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = call i32* (i32*, i8*, ...) @prepare(i32* %220, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i8* %221)
  store i32* %222, i32** %5, align 8
  store i32 0, i32* %19, align 4
  br label %223

223:                                              ; preds = %228, %217
  %224 = load i32*, i32** %5, align 8
  %225 = call i64 @sqlite3_step(i32* %224)
  %226 = load i64, i64* @SQLITE_ROW, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @sqlite3_column_int(i32* %229, i32 0)
  store i32 %230, i32* %19, align 4
  br label %223

231:                                              ; preds = %223
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @sqlite3_finalize(i32* %232)
  store i32 0, i32* %20, align 4
  br label %234

234:                                              ; preds = %312, %231
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %19, align 4
  %237 = icmp sle i32 %235, %236
  br i1 %237, label %238, label %315

238:                                              ; preds = %234
  %239 = load i32*, i32** %3, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sub nsw i32 %240, 45
  %242 = load i8*, i8** %4, align 8
  %243 = load i8*, i8** %4, align 8
  %244 = load i32, i32* %20, align 4
  %245 = call i32* (i32*, i8*, ...) @prepare(i32* %239, i8* getelementptr inbounds ([283 x i8], [283 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %242, i8* %243, i32 %244)
  store i32* %245, i32** %5, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = call i64 @sqlite3_step(i32* %246)
  %248 = load i64, i64* @SQLITE_ROW, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %309

250:                                              ; preds = %238
  %251 = load i32*, i32** %5, align 8
  %252 = call i32 @sqlite3_column_int(i32* %251, i32 0)
  store i32 %252, i32* %16, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %309

254:                                              ; preds = %250
  %255 = load i32*, i32** %5, align 8
  %256 = call i32 @sqlite3_column_int(i32* %255, i32 5)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %20, align 4
  %258 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %9, align 4
  %260 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i32 %259)
  %261 = load i32, i32* %16, align 4
  %262 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %9, align 4
  %264 = icmp sgt i32 %263, 1
  br i1 %264, label %265, label %273

265:                                              ; preds = %254
  %266 = load i32, i32* %16, align 4
  %267 = sitofp i32 %266 to double
  %268 = load i32, i32* %9, align 4
  %269 = sitofp i32 %268 to double
  %270 = fdiv double %267, %269
  %271 = fptosi double %270 to i32
  %272 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %265, %254
  %274 = load i32*, i32** %5, align 8
  %275 = call i64 @sqlite3_column_int64(i32* %274, i32 1)
  store i64 %275, i64* %21, align 8
  %276 = trunc i64 %275 to i32
  %277 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 %276)
  %278 = load i32*, i32** %5, align 8
  %279 = call double @sqlite3_column_double(i32* %278, i32 2)
  %280 = fptosi double %279 to i32
  %281 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %9, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %292

284:                                              ; preds = %273
  %285 = load i64, i64* %21, align 8
  %286 = sitofp i64 %285 to double
  %287 = load i32, i32* %9, align 4
  %288 = sitofp i32 %287 to double
  %289 = fdiv double %286, %288
  %290 = fptosi double %289 to i32
  %291 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %284, %273
  %293 = load i32*, i32** %5, align 8
  %294 = call i64 @sqlite3_column_int64(i32* %293, i32 3)
  %295 = trunc i64 %294 to i32
  %296 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0), i32 %295)
  %297 = load i32*, i32** %5, align 8
  %298 = call i32 @sqlite3_column_int(i32* %297, i32 4)
  store i32 %298, i32* %17, align 4
  %299 = load i32, i32* %18, align 4
  %300 = sub nsw i32 %299, 45
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %17, align 4
  %303 = sitofp i32 %302 to double
  %304 = fmul double %303, 1.000000e+02
  %305 = load i32, i32* %16, align 4
  %306 = sitofp i32 %305 to double
  %307 = fdiv double %304, %306
  %308 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i64 0, i64 0), i32 %300, i32 %301, double %307)
  br label %309

309:                                              ; preds = %292, %250, %238
  %310 = load i32*, i32** %5, align 8
  %311 = call i32 @sqlite3_finalize(i32* %310)
  br label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %20, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %20, align 4
  br label %234

315:                                              ; preds = %234
  ret void
}

declare dso_local i32* @prepare(i32*, i8*, ...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local double @sqlite3_column_double(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
