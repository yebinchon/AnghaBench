; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_cost_enc.c_VP8RecordCoeffs.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_cost_enc.c_VP8RecordCoeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*** }

@VP8EncBands = common dso_local global i64* null, align 8
@MAX_VARIABLE_LEVEL = common dso_local global i32 0, align 4
@VP8LevelCodes = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8RecordCoeffs(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32***, i32**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32**, i32*** %14, i64 %16
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i64 @VP8RecordStats(i32 0, i32* %29)
  store i32 0, i32* %3, align 4
  br label %180

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %171, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %172

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i64 @VP8RecordStats(i32 1, i32* %40)
  br label %42

42:                                               ; preds = %52, %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = call i64 @VP8RecordStats(i32 0, i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32***, i32**** %57, align 8
  %59 = load i64*, i64** @VP8EncBands, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32**, i32*** %58, i64 %63
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %7, align 8
  br label %42

68:                                               ; preds = %42
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = call i64 @VP8RecordStats(i32 1, i32* %70)
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp ult i32 2, %73
  %75 = zext i1 %74 to i32
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i64 @VP8RecordStats(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %68
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32***, i32**** %82, align 8
  %84 = load i64*, i64** @VP8EncBands, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32**, i32*** %83, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %7, align 8
  br label %171

93:                                               ; preds = %68
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @abs(i32 %94) #3
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 4
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = call i64 @VP8RecordStats(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 2
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = call i64 @VP8RecordStats(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 4
  %114 = zext i1 %113 to i32
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = call i64 @VP8RecordStats(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %111, %103
  br label %158

119:                                              ; preds = %93
  %120 = load i32, i32* %8, align 4
  %121 = icmp sgt i32 %120, 10
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 6
  %125 = call i64 @VP8RecordStats(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = icmp sgt i32 %128, 6
  %130 = zext i1 %129 to i32
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = call i64 @VP8RecordStats(i32 %130, i32* %132)
  br label %157

134:                                              ; preds = %119
  %135 = load i32, i32* %8, align 4
  %136 = icmp sge i32 %135, 35
  %137 = zext i1 %136 to i32
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 8
  %140 = call i64 @VP8RecordStats(i32 %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %8, align 4
  %144 = icmp sge i32 %143, 19
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 9
  %148 = call i64 @VP8RecordStats(i32 %145, i32* %147)
  br label %156

149:                                              ; preds = %134
  %150 = load i32, i32* %8, align 4
  %151 = icmp sge i32 %150, 67
  %152 = zext i1 %151 to i32
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 10
  %155 = call i64 @VP8RecordStats(i32 %152, i32* %154)
  br label %156

156:                                              ; preds = %149, %142
  br label %157

157:                                              ; preds = %156, %127
  br label %158

158:                                              ; preds = %157, %118
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32***, i32**** %160, align 8
  %162 = load i64*, i64** @VP8EncBands, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32**, i32*** %161, i64 %166
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 2
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %7, align 8
  br label %171

171:                                              ; preds = %158, %80
  br label %32

172:                                              ; preds = %32
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 16
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = call i64 @VP8RecordStats(i32 0, i32* %177)
  br label %179

179:                                              ; preds = %175, %172
  store i32 1, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %27
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @VP8RecordStats(i32, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
