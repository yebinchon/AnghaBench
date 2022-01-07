; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CacheInstArray.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CacheInstArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@FTS5CSR_REQUIRE_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @fts5CacheInstArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CacheInstArray(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_13__*
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sqlite3Fts5ExprPhraseCount(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = icmp eq %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 16, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @sqlite3Fts5MallocZero(i32* %3, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_14__*
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %41, align 8
  br label %42

42:                                               ; preds = %32, %1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %223

48:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %78

59:                                               ; preds = %57
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @fts5CsrPoslist(%struct.TYPE_15__* %60, i32 %61, i32** %10, i32* %11)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = call i32 @sqlite3Fts5PoslistReaderInit(i32* %67, i32 %68, %struct.TYPE_14__* %72)
  br label %74

74:                                               ; preds = %66, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %49

78:                                               ; preds = %57
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %216

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %209
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %105, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %99, %96
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %113, %99, %88
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %84

119:                                              ; preds = %84
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %215

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %167

131:                                              ; preds = %123
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, 2
  br label %142

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32 [ %140, %136 ], [ 32, %141 ]
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = mul i64 %153, 3
  %155 = trunc i64 %154 to i32
  %156 = call i64 @sqlite3_realloc64(i32* %148, i32 %155)
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %12, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %142
  %161 = load i32*, i32** %12, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32* %161, i32** %163, align 8
  br label %166

164:                                              ; preds = %142
  %165 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %165, i32* %3, align 4
  br label %215

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %123
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = mul nsw i32 3, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  store i32* %175, i32** %12, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @FTS5_POS2COLUMN(i64 %184)
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @FTS5_POS2OFFSET(i64 %193)
  %195 = load i32*, i32** %12, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %12, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %167
  %202 = load i32*, i32** %12, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %201, %167
  %208 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %208, i32* %3, align 4
  br label %215

209:                                              ; preds = %201
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %212
  %214 = call i32 @sqlite3Fts5PoslistReaderNext(%struct.TYPE_14__* %213)
  br label %83

215:                                              ; preds = %207, %164, %122
  br label %216

216:                                              ; preds = %215, %78
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %221 = load i32, i32* @FTS5CSR_REQUIRE_INST, align 4
  %222 = call i32 @CsrFlagClear(%struct.TYPE_15__* %220, i32 %221)
  br label %223

223:                                              ; preds = %216, %42
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @sqlite3Fts5ExprPhraseCount(i32) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i32 @fts5CsrPoslist(%struct.TYPE_15__*, i32, i32**, i32*) #1

declare dso_local i32 @sqlite3Fts5PoslistReaderInit(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3_realloc64(i32*, i32) #1

declare dso_local i32 @FTS5_POS2COLUMN(i64) #1

declare dso_local i32 @FTS5_POS2OFFSET(i64) #1

declare dso_local i32 @sqlite3Fts5PoslistReaderNext(%struct.TYPE_14__*) #1

declare dso_local i32 @CsrFlagClear(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
