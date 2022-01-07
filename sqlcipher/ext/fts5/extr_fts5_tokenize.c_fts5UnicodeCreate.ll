; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"L* N* Co\00", align 1
@FTS5_REMOVE_DIACRITICS_SIMPLE = common dso_local global i8 0, align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"remove_diacritics\00", align 1
@FTS5_REMOVE_DIACRITICS_NONE = common dso_local global i8 0, align 1
@FTS5_REMOVE_DIACRITICS_COMPLEX = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tokenchars\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"separators\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32**)* @fts5UnicodeCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5UnicodeCreate(i8* %0, i8** %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %9, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @UNUSED_PARAM(i8* %15)
  %17 = load i32, i32* %7, align 4
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %21, i32* %9, align 4
  br label %233

22:                                               ; preds = %4
  %23 = call i64 @sqlite3_malloc(i32 16)
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %219

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = call i32 @memset(%struct.TYPE_5__* %28, i32 0, i32 16)
  %30 = load i8, i8* @FTS5_REMOVE_DIACRITICS_SIMPLE, align 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 64, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i64 @sqlite3_malloc64(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %27
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %61, label %80

61:                                               ; preds = %59
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @sqlite3_stricmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 0, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %69, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %12, align 4
  br label %51

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @unicodeSetCategories(%struct.TYPE_5__* %85, i8* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %80
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %215, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ false, %89 ], [ %96, %93 ]
  br i1 %98, label %99, label %218

99:                                               ; preds = %97
  %100 = load i8**, i8*** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %13, align 8
  %106 = load i8**, i8*** %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @sqlite3_stricmp(i8* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %112 = icmp eq i64 0, %111
  br i1 %112, label %113, label %176

113:                                              ; preds = %99
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 48
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 49
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 50
  br i1 %130, label %137, label %131

131:                                              ; preds = %125, %119, %113
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131, %125
  %138 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %138, i32* %9, align 4
  br label %175

139:                                              ; preds = %131
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = sub nsw i32 %143, 48
  %145 = trunc i32 %144 to i8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8 %145, i8* %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i8, i8* %149, align 8
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* @FTS5_REMOVE_DIACRITICS_NONE, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %171, label %155

155:                                              ; preds = %139
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 8
  %159 = sext i8 %158 to i32
  %160 = load i8, i8* @FTS5_REMOVE_DIACRITICS_SIMPLE, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %171, label %163

163:                                              ; preds = %155
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i8, i8* %165, align 8
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* @FTS5_REMOVE_DIACRITICS_COMPLEX, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %167, %169
  br label %171

171:                                              ; preds = %163, %155, %139
  %172 = phi i1 [ true, %155 ], [ true, %139 ], [ %170, %163 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  br label %175

175:                                              ; preds = %171, %137
  br label %214

176:                                              ; preds = %99
  %177 = load i8**, i8*** %6, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @sqlite3_stricmp(i8* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %183 = icmp eq i64 0, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = call i32 @fts5UnicodeAddExceptions(%struct.TYPE_5__* %185, i8* %186, i32 1)
  store i32 %187, i32* %9, align 4
  br label %213

188:                                              ; preds = %176
  %189 = load i8**, i8*** %6, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @sqlite3_stricmp(i8* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %195 = icmp eq i64 0, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = call i32 @fts5UnicodeAddExceptions(%struct.TYPE_5__* %197, i8* %198, i32 0)
  store i32 %199, i32* %9, align 4
  br label %212

200:                                              ; preds = %188
  %201 = load i8**, i8*** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @sqlite3_stricmp(i8* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %207 = icmp eq i64 0, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %211

209:                                              ; preds = %200
  %210 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %209, %208
  br label %212

212:                                              ; preds = %211, %196
  br label %213

213:                                              ; preds = %212, %184
  br label %214

214:                                              ; preds = %213, %175
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 2
  store i32 %217, i32* %12, align 4
  br label %89

218:                                              ; preds = %97
  br label %221

219:                                              ; preds = %22
  %220 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %219, %218
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @SQLITE_OK, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %227 = bitcast %struct.TYPE_5__* %226 to i32*
  %228 = call i32 @fts5UnicodeDelete(i32* %227)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %231 = bitcast %struct.TYPE_5__* %230 to i32*
  %232 = load i32**, i32*** %8, align 8
  store i32* %231, i32** %232, align 8
  br label %233

233:                                              ; preds = %229, %20
  %234 = load i32, i32* %9, align 4
  ret i32 %234
}

declare dso_local i32 @UNUSED_PARAM(i8*) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @unicodeSetCategories(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5UnicodeAddExceptions(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @fts5UnicodeDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
