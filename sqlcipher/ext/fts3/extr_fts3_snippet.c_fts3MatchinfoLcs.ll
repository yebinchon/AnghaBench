; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoLcs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MatchinfoLcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@fts3MatchinfoLcsCb = common dso_local global i32 0, align 4
@FTS_CORRUPT_VTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* @fts3MatchinfoLcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3MatchinfoLcs(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 32, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_15__* @sqlite3_malloc64(i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %6, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %217

30:                                               ; preds = %2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.TYPE_15__* %31, i32 0, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @fts3MatchinfoLcsCb, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = bitcast %struct.TYPE_15__* %43 to i8*
  %45 = call i32 @fts3ExprIterate(i32 %41, i32 %42, i8* %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %71, %30
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %46

74:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %209, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %212

81:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %129, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 %91
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %14, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = call i32 @sqlite3Fts3EvalPhrasePoslist(%struct.TYPE_16__* %93, %struct.TYPE_17__* %96, i32 %97, i64* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %88
  br label %213

105:                                              ; preds = %88
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %118 = call i64 @fts3LcsIteratorAdvance(%struct.TYPE_15__* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %110
  %124 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %124, i32* %10, align 4
  br label %213

125:                                              ; preds = %110
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %105
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %82

132:                                              ; preds = %82
  br label %133

133:                                              ; preds = %200, %132
  %134 = load i32, i32* %13, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %201

136:                                              ; preds = %133
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %190, %136
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %193

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %146
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %17, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 0, i32* %16, align 4
  br label %189

153:                                              ; preds = %143
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %155 = icmp eq %struct.TYPE_15__* %154, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156, %153
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %15, align 8
  br label %166

166:                                              ; preds = %164, %156
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i64 -1
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %172, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %169, %166
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %182

181:                                              ; preds = %169
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %186, %182
  br label %189

189:                                              ; preds = %188, %152
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %137

193:                                              ; preds = %137
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %195 = call i64 @fts3LcsIteratorAdvance(%struct.TYPE_15__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %197, %193
  br label %133

201:                                              ; preds = %133
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %75

212:                                              ; preds = %75
  br label %213

213:                                              ; preds = %212, %123, %104
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %215 = call i32 @sqlite3_free(%struct.TYPE_15__* %214)
  %216 = load i32, i32* %10, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %213, %28
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.TYPE_15__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fts3ExprIterate(i32, i32, i8*) #1

declare dso_local i32 @sqlite3Fts3EvalPhrasePoslist(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i64*) #1

declare dso_local i64 @fts3LcsIteratorAdvance(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
