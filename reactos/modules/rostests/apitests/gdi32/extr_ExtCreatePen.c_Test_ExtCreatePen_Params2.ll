; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreatePen.c_Test_ExtCreatePen_Params2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreatePen.c_Test_ExtCreatePen_Params2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_COSMETIC = common dso_local global i32 0, align 4
@PS_GEOMETRIC = common dso_local global i32 0, align 4
@__const.Test_ExtCreatePen_Params2.adwStyles = private unnamed_addr constant [17 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17], align 16
@__const.Test_ExtCreatePen_Params2.adwStyles2 = private unnamed_addr constant [17 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17], align 16
@.str = private unnamed_addr constant [29 x i8] c"adwStyles=%p, adwStyles2=%p\0A\00", align 1
@PS_SOLID = common dso_local global i32 0, align 4
@PS_DASH = common dso_local global i32 0, align 4
@PS_DOT = common dso_local global i32 0, align 4
@PS_DASHDOT = common dso_local global i32 0, align 4
@PS_DASHDOTDOT = common dso_local global i32 0, align 4
@PS_NULL = common dso_local global i32 0, align 4
@PS_INSIDEFRAME = common dso_local global i32 0, align 4
@PS_USERSTYLE = common dso_local global i32 0, align 4
@PS_ALTERNATE = common dso_local global i32 0, align 4
@PS_ENDCAP_ROUND = common dso_local global i32 0, align 4
@PS_ENDCAP_SQUARE = common dso_local global i32 0, align 4
@PS_ENDCAP_FLAT = common dso_local global i32 0, align 4
@PS_JOIN_ROUND = common dso_local global i32 0, align 4
@PS_JOIN_BEVEL = common dso_local global i32 0, align 4
@PS_JOIN_MITER = common dso_local global i32 0, align 4
@__const.Test_ExtCreatePen_Params2.adwWidth = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@__const.Test_ExtCreatePen_Params2.adwStyleCount = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 16, i32 17], align 16
@__const.Test_ExtCreatePen_Params2.albStyle = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@__const.Test_ExtCreatePen_Params2.alHatch = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ExtCreatePen_Params2() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [17 x i32], align 16
  %12 = alloca [17 x i32], align 16
  %13 = alloca [10 x i32], align 16
  %14 = alloca [5 x i32], align 16
  %15 = alloca [5 x i32], align 16
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca [5 x i32], align 16
  %19 = alloca [3 x i32*], align 16
  %20 = alloca [11 x i32], align 16
  %21 = alloca [10 x i32], align 16
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %23 = load i32, i32* @PS_COSMETIC, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @PS_GEOMETRIC, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 131072, i32* %26, align 4
  %27 = bitcast [17 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([17 x i32]* @__const.Test_ExtCreatePen_Params2.adwStyles to i8*), i64 68, i1 false)
  %28 = bitcast [17 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([17 x i32]* @__const.Test_ExtCreatePen_Params2.adwStyles2 to i8*), i64 68, i1 false)
  %29 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 0
  %31 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %192, %0
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %195

35:                                               ; preds = %32
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %37 = load i32, i32* @PS_SOLID, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @PS_DASH, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @PS_DOT, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @PS_DASHDOT, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @PS_DASHDOTDOT, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @PS_NULL, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @PS_INSIDEFRAME, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @PS_USERSTYLE, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* @PS_ALTERNATE, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 9, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %188, %35
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %191

58:                                               ; preds = %55
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %60 = load i32, i32* @PS_ENDCAP_ROUND, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds i32, i32* %59, i64 1
  %62 = load i32, i32* @PS_ENDCAP_SQUARE, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds i32, i32* %61, i64 1
  %64 = load i32, i32* @PS_ENDCAP_FLAT, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 768, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 1024, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %184, %58
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %69, 5
  br i1 %70, label %71, label %187

71:                                               ; preds = %67
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %73 = load i32, i32* @PS_JOIN_ROUND, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* @PS_JOIN_BEVEL, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* @PS_JOIN_MITER, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 12288, i32* %78, align 4
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 16384, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %180, %71
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 5
  br i1 %83, label %84, label %183

84:                                               ; preds = %80
  %85 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 bitcast ([3 x i32]* @__const.Test_ExtCreatePen_Params2.adwWidth to i8*), i64 12, i1 false)
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %89, %93
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %94, %98
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %99, %103
  store i32 %104, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %176, %84
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %107, 3
  br i1 %108, label %109, label %179

109:                                              ; preds = %105
  %110 = bitcast [5 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %110, i8* align 16 bitcast ([5 x i32]* @__const.Test_ExtCreatePen_Params2.adwStyleCount to i8*), i64 20, i1 false)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %172, %109
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %113, 5
  br i1 %114, label %115, label %175

115:                                              ; preds = %111
  %116 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* null, i32** %116, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = getelementptr inbounds [17 x i32], [17 x i32]* %11, i64 0, i64 0
  store i32* %118, i32** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 1
  %120 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 0
  store i32* %120, i32** %119, align 8
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %168, %115
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %123, 3
  br i1 %124, label %125, label %171

125:                                              ; preds = %121
  %126 = bitcast [11 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %126, i8* align 16 bitcast ([11 x i32]* @__const.Test_ExtCreatePen_Params2.albStyle to i8*), i64 44, i1 false)
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %164, %125
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %129, 11
  br i1 %130, label %131, label %167

131:                                              ; preds = %127
  %132 = bitcast [10 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %132, i8* align 16 bitcast ([10 x i32]* @__const.Test_ExtCreatePen_Params2.alHatch to i8*), i64 40, i1 false)
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %160, %131
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %135, 10
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @Test_ExtCreatePen_Helper(i32 %138, i32 %142, i32 %146, i32* %150, i32 %154, i32 %158)
  br label %160

160:                                              ; preds = %137
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %133

163:                                              ; preds = %133
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %127

167:                                              ; preds = %127
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %121

171:                                              ; preds = %121
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %111

175:                                              ; preds = %111
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %105

179:                                              ; preds = %105
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %80

183:                                              ; preds = %80
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %67

187:                                              ; preds = %67
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %55

191:                                              ; preds = %55
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %2, align 4
  br label %32

195:                                              ; preds = %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i32*, i32*) #2

declare dso_local i32 @Test_ExtCreatePen_Helper(i32, i32, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
