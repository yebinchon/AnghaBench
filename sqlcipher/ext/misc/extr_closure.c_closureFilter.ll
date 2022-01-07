; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"SELECT \22%w\22.\22%w\22 FROM \22%w\22 WHERE \22%w\22.\22%w\22=?1\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @closureFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @closureFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %13, align 8
  store i32 999999999, i32* %15, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %19, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %20, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %21, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %22, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = call i32 @closureClearCursor(%struct.TYPE_10__* %42)
  %44 = call i32 @memset(i32* %23, i32 0, i32 4)
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %5
  %49 = load i32, i32* @SQLITE_OK, align 4
  store i32 %49, i32* %6, align 4
  br label %243

50:                                               ; preds = %5
  %51 = load i32**, i32*** %11, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @sqlite3_value_int64(i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 240
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load i32**, i32*** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %59, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @sqlite3_value_int(i32* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %70, %58
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 3840
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32**, i32*** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %79, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @sqlite3_value_text(i32* %85)
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %20, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %78, %74
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 61440
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i32**, i32*** %11, align 8
  %98 = load i32, i32* %8, align 4
  %99 = ashr i32 %98, 12
  %100 = and i32 %99, 15
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %97, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @sqlite3_value_text(i32* %103)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %21, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %96, %92
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 983040
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32**, i32*** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = ashr i32 %116, 16
  %118 = and i32 %117, 15
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %115, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @sqlite3_value_text(i32* %121)
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %22, align 8
  %124 = load i8*, i8** %22, align 8
  %125 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %114, %110
  %129 = load i8*, i8** %20, align 8
  %130 = load i8*, i8** %21, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = load i8*, i8** %20, align 8
  %133 = load i8*, i8** %22, align 8
  %134 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %129, i8* %130, i8* %131, i8* %132, i8* %133)
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %138, i32* %6, align 4
  br label %243

139:                                              ; preds = %128
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = call i32 @sqlite3_prepare_v2(i32 %142, i8* %143, i32 -1, i32** %17, i32 0)
  store i32 %144, i32* %19, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 @sqlite3_free(i8* %145)
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %139
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @sqlite3_free(i8* %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @sqlite3_errmsg(i32 %157)
  %159 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load i32, i32* %19, align 4
  store i32 %163, i32* %6, align 4
  br label %243

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* @SQLITE_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @closureInsertNode(i32* %23, %struct.TYPE_10__* %170, i32 %171, i32 0)
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %225, %183, %173
  %175 = call %struct.TYPE_11__* @queuePull(i32* %23)
  store %struct.TYPE_11__* %175, %struct.TYPE_11__** %18, align 8
  %176 = icmp ne %struct.TYPE_11__* %175, null
  br i1 %176, label %177, label %228

177:                                              ; preds = %174
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %174

184:                                              ; preds = %177
  %185 = load i32*, i32** %17, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sqlite3_bind_int64(i32* %185, i32 1, i32 %188)
  br label %190

190:                                              ; preds = %224, %184
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* @SQLITE_OK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32*, i32** %17, align 8
  %196 = call i64 @sqlite3_step(i32* %195)
  %197 = load i64, i64* @SQLITE_ROW, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %194, %190
  %200 = phi i1 [ false, %190 ], [ %198, %194 ]
  br i1 %200, label %201, label %225

201:                                              ; preds = %199
  %202 = load i32*, i32** %17, align 8
  %203 = call i64 @sqlite3_column_type(i32* %202, i32 0)
  %204 = load i64, i64* @SQLITE_INTEGER, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load i32*, i32** %17, align 8
  %208 = call i32 @sqlite3_column_int64(i32* %207, i32 0)
  store i32 %208, i32* %24, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %24, align 4
  %213 = call i64 @closureAvlSearch(i32 %211, i32 %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %206
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %217 = load i32, i32* %24, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  %222 = call i32 @closureInsertNode(i32* %23, %struct.TYPE_10__* %216, i32 %217, i32 %221)
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %215, %206
  br label %224

224:                                              ; preds = %223, %201
  br label %190

225:                                              ; preds = %199
  %226 = load i32*, i32** %17, align 8
  %227 = call i32 @sqlite3_reset(i32* %226)
  br label %174

228:                                              ; preds = %174
  %229 = load i32*, i32** %17, align 8
  %230 = call i32 @sqlite3_finalize(i32* %229)
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* @SQLITE_OK, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @closureAvlFirst(i32 %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %234, %228
  %242 = load i32, i32* %19, align 4
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %241, %149, %137, %48
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @closureClearCursor(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @closureInsertNode(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @queuePull(i32*) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i64 @closureAvlSearch(i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @closureAvlFirst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
