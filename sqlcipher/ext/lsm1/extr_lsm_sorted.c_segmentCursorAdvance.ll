; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentCursorAdvance.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentCursorAdvance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32)* @segmentCursorAdvance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentCursorAdvance(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 %20
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @segmentPtrAdvance(%struct.TYPE_14__* %25, %struct.TYPE_13__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @LSM_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %179

34:                                               ; preds = %3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br label %47

47:                                               ; preds = %39, %34
  %48 = phi i1 [ false, %34 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %177

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %177

57:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = icmp eq i32* %63, %65
  %67 = zext i1 %66 to i32
  %68 = icmp eq i32 %60, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = ptrtoint i32* %81 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = sub nsw i64 %78, %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %89
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %109, %72
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %112

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %91

112:                                              ; preds = %107, %91
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = call i32 @segmentPtrEnd(%struct.TYPE_14__* %120, %struct.TYPE_13__* %121, i32 1)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %112
  br label %155

124:                                              ; preds = %69
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @LSM_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %131, %134
  br label %136

136:                                              ; preds = %129, %125
  %137 = phi i1 [ false, %125 ], [ %135, %129 ]
  br i1 %137, label %138, label %154

138:                                              ; preds = %136
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %148
  %150 = call i32 @sortedRhsFirst(%struct.TYPE_14__* %139, %struct.TYPE_15__* %140, %struct.TYPE_13__* %149)
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %125

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %123
  br label %156

156:                                              ; preds = %155, %57
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %156
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %172, %159
  %165 = load i32, i32* %15, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @multiCursorDoCompare(%struct.TYPE_14__* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %15, align 4
  br label %164

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176, %52, %47
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %32
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @segmentPtrAdvance(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @segmentPtrEnd(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sortedRhsFirst(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @multiCursorDoCompare(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
