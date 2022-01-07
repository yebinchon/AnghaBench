; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_rescaler_utils.c_WebPRescalerInit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_rescaler_utils.c_WebPRescalerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i8*, i8*, i32*, i64, i64 }

@WEBP_RESCALER_ONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WebPRescalerInit(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 19
  store i64 0, i64* %55, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 18
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %9
  %70 = load i32, i32* %20, align 4
  %71 = sub nsw i32 %70, 1
  br label %74

72:                                               ; preds = %9
  %73 = load i32, i32* %19, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %83, 1
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %20, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = call i8* @WEBP_RESCALER_FRAC(i32 1, i64 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 17
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %95, %87
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %21, align 4
  %110 = sub nsw i32 %109, 1
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %21, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi i32 [ %110, %108 ], [ %112, %111 ]
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* %22, align 4
  %123 = sub nsw i32 %122, 1
  br label %126

124:                                              ; preds = %113
  %125 = load i32, i32* %22, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %123, %121 ], [ %125, %124 ]
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  br label %142

138:                                              ; preds = %126
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i32 [ %137, %134 ], [ %141, %138 ]
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %182, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @WEBP_RESCALER_ONE, align 8
  %154 = mul nsw i64 %152, %153
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = sdiv i64 %154, %162
  store i64 %163, i64* %23, align 8
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %23, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %150
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 13
  store i64 0, i64* %169, align 8
  br label %174

170:                                              ; preds = %150
  %171 = load i64, i64* %23, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 13
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = call i8* @WEBP_RESCALER_FRAC(i32 1, i64 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 16
  store i8* %179, i8** %181, align 8
  br label %190

182:                                              ; preds = %142
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = call i8* @WEBP_RESCALER_FRAC(i32 1, i64 %186)
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 16
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %182, %174
  %191 = load i32*, i32** %18, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 15
  store i32* %191, i32** %193, align 8
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %14, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 14
  store i32* %199, i32** %201, align 8
  %202 = load i32*, i32** %18, align 8
  %203 = load i32, i32* %14, align 4
  %204 = mul nsw i32 2, %203
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 4
  %209 = trunc i64 %208 to i32
  %210 = call i32 @memset(i32* %202, i32 0, i32 %209)
  %211 = call i32 (...) @WebPRescalerDspInit()
  ret void
}

declare dso_local i8* @WEBP_RESCALER_FRAC(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WebPRescalerDspInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
