; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_pattern_match.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_pattern_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i64, i64 }

@STRM_OK = common dso_local global i32 0, align 4
@NODE_PSPLAT = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, i32, i32*)* @pattern_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_match(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = bitcast %struct.TYPE_8__* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %12, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @STRM_OK, align 4
  store i32 %24, i32* %6, align 4
  br label %193

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NODE_PSPLAT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %152

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = bitcast %struct.TYPE_7__* %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %14, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %15, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %16, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %17, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  br label %52

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @STRM_NG, align 4
  store i32 %58, i32* %6, align 4
  br label %193

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %66 = bitcast %struct.TYPE_7__* %65 to %struct.TYPE_8__*
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @pattern_match(i32* %63, i32* %64, %struct.TYPE_8__* %66, i32 %67, i32* %68)
  %70 = load i32, i32* @STRM_NG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @STRM_NG, align 4
  store i32 %73, i32* %6, align 4
  br label %193

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %77 = icmp eq %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @strm_ary_new(i32* %85, i32 %88)
  %90 = call i32 @pmatch(i32* %79, i32* %80, %struct.TYPE_8__* %81, i32 %89)
  %91 = load i32, i32* @STRM_NG, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* @STRM_NG, align 4
  store i32 %94, i32* %6, align 4
  br label %193

95:                                               ; preds = %78
  br label %150

96:                                               ; preds = %75
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @STRM_NG, align 4
  store i32 %105, i32* %6, align 4
  br label %193

106:                                              ; preds = %96
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @pattern_match(i32* %107, i32* %108, %struct.TYPE_8__* %109, i32 %116, i32* %120)
  %122 = load i32, i32* @STRM_NG, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i32, i32* @STRM_NG, align 4
  store i32 %125, i32* %6, align 4
  br label %193

126:                                              ; preds = %106
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %130 = bitcast %struct.TYPE_7__* %129 to %struct.TYPE_8__*
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = call i32 @pattern_match(i32* %127, i32* %128, %struct.TYPE_8__* %130, i32 %133, i32* %143)
  %145 = load i32, i32* @STRM_NG, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %126
  %148 = load i32, i32* @STRM_NG, align 4
  store i32 %148, i32* %6, align 4
  br label %193

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %95
  %151 = load i32, i32* @STRM_OK, align 4
  store i32 %151, i32* %6, align 4
  br label %193

152:                                              ; preds = %25
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @STRM_NG, align 4
  store i32 %159, i32* %6, align 4
  br label %193

160:                                              ; preds = %152
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %188, %160
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %161
  %168 = load i32*, i32** %7, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %172, i64 %174
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @pmatch(i32* %168, i32* %169, %struct.TYPE_8__* %176, i32 %181)
  %183 = load i32, i32* @STRM_NG, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %167
  %186 = load i32, i32* @STRM_NG, align 4
  store i32 %186, i32* %6, align 4
  br label %193

187:                                              ; preds = %167
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %161

191:                                              ; preds = %161
  %192 = load i32, i32* @STRM_OK, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191, %185, %158, %150, %147, %124, %104, %93, %72, %57, %23
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @pmatch(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
