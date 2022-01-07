; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterNext_None.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterNext_None.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__*, i64, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_SEGITER_REVERSE = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i64 0, align 8
@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @fts5SegIterNext_None to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterNext_None(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SQLITE_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FTS5_SEGITER_REVERSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = call i32 @ASSERT_SZLEAF_OK(%struct.TYPE_15__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %49, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = call i32 @fts5SegIterNextPage(%struct.TYPE_18__* %57, %struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = icmp eq %struct.TYPE_15__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %56
  br label %211

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  store i32 4, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %48, %3
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i64* %8 to i32*
  %89 = call i64 @sqlite3Fts5GetVarint(i32* %87, i32* %88)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %200

102:                                              ; preds = %73
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %198

109:                                              ; preds = %102
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = call i32 @fts5LeafFirstTermOff(%struct.TYPE_15__* %118)
  %120 = icmp ne i32 %115, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %114
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @fts5GetVarint32(i32* %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %121, %114
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @fts5SegIterLoadTerm(%struct.TYPE_18__* %140, %struct.TYPE_17__* %141, i32 %142)
  br label %192

144:                                              ; preds = %109
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @sqlite3Fts5HashScanNext(i32 %147)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @sqlite3Fts5HashScanEntry(i32 %151, i8** %11, i32** %10, i32* %12)
  %153 = load i32*, i32** %10, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %144
  br label %204

156:                                              ; preds = %144
  %157 = load i32*, i32** %10, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  store i32* %157, i32** %161, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load i8*, i8** %11, align 8
  %180 = call i64 @strlen(i8* %179)
  %181 = trunc i64 %180 to i32
  %182 = load i8*, i8** %11, align 8
  %183 = bitcast i8* %182 to i32*
  %184 = call i32 @sqlite3Fts5BufferSet(i64* %176, i32* %178, i32 %181, i32* %183)
  %185 = load i32*, i32** %10, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 4
  %188 = bitcast i64* %187 to i32*
  %189 = call i32 @fts5GetVarint(i32* %185, i32* %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %156, %136
  %193 = load i32*, i32** %6, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32*, i32** %6, align 8
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %195, %192
  br label %199

198:                                              ; preds = %102
  br label %204

199:                                              ; preds = %197
  br label %200

200:                                              ; preds = %199, %79
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_18__* %201, %struct.TYPE_17__* %202)
  br label %211

204:                                              ; preds = %198, %155
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = call i32 @fts5DataRelease(%struct.TYPE_15__* %207)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %210, align 8
  br label %211

211:                                              ; preds = %204, %200, %69
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ASSERT_SZLEAF_OK(%struct.TYPE_15__*) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @sqlite3Fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5LeafFirstTermOff(%struct.TYPE_15__*) #1

declare dso_local i64 @fts5GetVarint32(i32*, i32) #1

declare dso_local i32 @fts5SegIterLoadTerm(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3Fts5HashScanNext(i32) #1

declare dso_local i32 @sqlite3Fts5HashScanEntry(i32, i8**, i32**, i32*) #1

declare dso_local i32 @sqlite3Fts5BufferSet(i64*, i32*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
