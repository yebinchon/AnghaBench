; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5HighlightCb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5HighlightCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, %struct.TYPE_5__, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5HighlightCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5HighlightCb(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %14, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @UNUSED_PARAM2(i8* %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %7, align 4
  br label %210

29:                                               ; preds = %6
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  store i32 %32, i32* %16, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @SQLITE_OK, align 4
  store i32 %51, i32* %7, align 4
  br label %210

52:                                               ; preds = %44
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %57, %52
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %76, i32* %84, i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %91, i32* %94, i32 -1)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %75, %68
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %100, %104
  br i1 %105, label %106, label %158

106:                                              ; preds = %99
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %121, i32* %124, i32 -1)
  br label %126

126:                                              ; preds = %120, %111, %106
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %127, i32* %135, i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %142, i32* %145, i32 -1)
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @SQLITE_OK, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %126
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  %156 = call i32 @fts5CInstIterNext(%struct.TYPE_5__* %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %153, %126
  br label %158

158:                                              ; preds = %157, %99
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %158
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %163
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %179, %182
  %184 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %170, i32* %178, i32 %183)
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp sge i32 %188, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %169
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %194
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @fts5HighlightAppend(i32* %15, %struct.TYPE_4__* %202, i32* %205, i32 -1)
  br label %207

207:                                              ; preds = %201, %194, %169
  br label %208

208:                                              ; preds = %207, %163, %158
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %208, %50, %27
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

declare dso_local i32 @UNUSED_PARAM2(i8*, i32) #1

declare dso_local i32 @fts5HighlightAppend(i32*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @fts5CInstIterNext(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
