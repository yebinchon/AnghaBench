; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteDlidxAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteDlidxAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_18__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @fts5WriteDlidxAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5WriteDlidxAppend(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %199, %3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SQLITE_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ]
  br i1 %23, label %24, label %202

24:                                               ; preds = %22
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 %29
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %10, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %34, %39
  br i1 %40, label %41, label %137

41:                                               ; preds = %24
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @FTS5_DLIDX_ROWID(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @fts5DataWrite(%struct.TYPE_17__* %47, i32 %55, i32* %59, i64 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i32 @fts5WriteDlidxGrow(%struct.TYPE_17__* %65, %struct.TYPE_16__* %66, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 %74
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %10, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SQLITE_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %41
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %81
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  %91 = call i32 @fts5DlidxExtractFirstRowid(%struct.TYPE_19__* %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %99, %struct.TYPE_19__* %102, i32 0)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %105, %struct.TYPE_19__* %108, i32 %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %114, %struct.TYPE_19__* %117, i32 %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %88, %81, %41
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 3
  %130 = call i32 @sqlite3Fts5BufferZero(%struct.TYPE_19__* %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %138

137:                                              ; preds = %24
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %127
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %144, %147
  store i32 %148, i32* %9, align 4
  br label %187

149:                                              ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  br label %162

157:                                              ; preds = %149
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i64 -1
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi i32 [ %156, %152 ], [ %161, %157 ]
  store i32 %163, i32* %12, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %172, %struct.TYPE_19__* %174, i32 %178)
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 3
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %181, %struct.TYPE_19__* %183, i32 %184)
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %162, %143
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @sqlite3Fts5BufferAppendVarint(i64* %189, %struct.TYPE_19__* %191, i32 %192)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %187
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %13

202:                                              ; preds = %22
  ret void
}

declare dso_local i32 @fts5DataWrite(%struct.TYPE_17__*, i32, i32*, i64) #1

declare dso_local i32 @FTS5_DLIDX_ROWID(i32, i32, i32) #1

declare dso_local i32 @fts5WriteDlidxGrow(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @fts5DlidxExtractFirstRowid(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3Fts5BufferAppendVarint(i64*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3Fts5BufferZero(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
