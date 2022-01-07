; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3CacheDeferredDoclists.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3CacheDeferredDoclists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3CacheDeferredDoclists(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %215

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %9, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sqlite3_column_int64(i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %184, %23
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  br i1 %56, label %57, label %187

57:                                               ; preds = %55
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %183

66:                                               ; preds = %57
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i64 @sqlite3_column_text(i32 %69, i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__* %74, i32 %77, i8* %78, i32 -1, i32** %11)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %166, %66
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %167

84:                                               ; preds = %80
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %86, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 %87(i32* %88, i8** %12, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %89, i32* %3, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %6, align 8
  br label %93

93:                                               ; preds = %162, %84
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = icmp ne %struct.TYPE_15__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  br i1 %101, label %102, label %166

102:                                              ; preds = %100
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %17, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %102
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %113, %102
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %16, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %124, %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %133
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %138, %127
  %145 = load i8*, i8** %12, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @memcmp(i8* %145, i32 %148, i32 %151)
  %153 = icmp eq i64 0, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %144
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @fts3PendingListAppend(i64* %156, i32 %157, i32 %158, i32 %159, i32* %3)
  br label %161

161:                                              ; preds = %154, %144, %138, %133, %124, %113
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %6, align 8
  br label %93

166:                                              ; preds = %100
  br label %80

167:                                              ; preds = %80
  %168 = load i32*, i32** %11, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32 (i32*)*, i32 (i32*)** %172, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 %173(i32* %174)
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @SQLITE_DONE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @SQLITE_OK, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %176
  br label %183

183:                                              ; preds = %182, %57
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %45

187:                                              ; preds = %55
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  store %struct.TYPE_15__* %190, %struct.TYPE_15__** %6, align 8
  br label %191

191:                                              ; preds = %210, %187
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = icmp ne %struct.TYPE_15__* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  %197 = icmp eq i32 %195, %196
  br label %198

198:                                              ; preds = %194, %191
  %199 = phi i1 [ false, %191 ], [ %197, %194 ]
  br i1 %199, label %200, label %214

200:                                              ; preds = %198
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = call i32 @fts3PendingListAppendVarint(i64* %207, i32 0)
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  store %struct.TYPE_15__* %213, %struct.TYPE_15__** %6, align 8
  br label %191

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214, %1
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_column_int64(i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__*, i32, i8*, i32, i32**) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @fts3PendingListAppend(i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @fts3PendingListAppendVarint(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
