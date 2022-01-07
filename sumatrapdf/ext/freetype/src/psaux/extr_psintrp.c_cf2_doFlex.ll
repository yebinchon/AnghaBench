; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/psaux/extr_psintrp.c_cf2_doFlex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/psaux/extr_psintrp.c_cf2_doFlex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32, i64*, i64)* @cf2_doFlex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_doFlex(i32 %0, i32* %1, i32* %2, i32 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [14 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  store i64 0, i64* %14, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 9
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @FT_BOOL(i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 9, i32 10
  store i32 %37, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %73, %6
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i64*, i64** %11, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %42
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %14, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %14, align 8
  %66 = call i32 @cf2_stack_getReal(i32 %63, i64 %64)
  %67 = call i32 @ADD_INT32(i32 %62, i32 %66)
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %57, %42
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %38

76:                                               ; preds = %38
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 11
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %83
  %87 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 10
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SUB_INT32(i32 %88, i32 %90)
  %92 = call i64 @cf2_fixedAbs(i32 %91)
  %93 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 11
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SUB_INT32(i32 %94, i32 %96)
  %98 = call i64 @cf2_fixedAbs(i32 %97)
  %99 = icmp sgt i64 %92, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @FT_BOOL(i32 %100)
  store i64 %101, i64* %19, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @cf2_stack_getReal(i32 %102, i64 %103)
  store i32 %104, i32* %20, align 4
  %105 = load i64, i64* %19, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %86
  %108 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 10
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @ADD_INT32(i32 %109, i32 %110)
  %112 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 12
  store i32 %111, i32* %112, align 16
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 13
  store i32 %114, i32* %115, align 4
  br label %125

116:                                              ; preds = %86
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 12
  store i32 %118, i32* %119, align 16
  %120 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 11
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %20, align 4
  %123 = call i32 @ADD_INT32(i32 %121, i32 %122)
  %124 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 13
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %107
  br label %162

126:                                              ; preds = %83
  %127 = load i64*, i64** %11, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 10
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 10
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %14, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %14, align 8
  %137 = call i32 @cf2_stack_getReal(i32 %134, i64 %135)
  %138 = call i32 @ADD_INT32(i32 %133, i32 %137)
  %139 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 12
  store i32 %138, i32* %139, align 16
  br label %144

140:                                              ; preds = %126
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 12
  store i32 %142, i32* %143, align 16
  br label %144

144:                                              ; preds = %140, %131
  %145 = load i64*, i64** %11, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 11
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 11
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @cf2_stack_getReal(i32 %152, i64 %153)
  %155 = call i32 @ADD_INT32(i32 %151, i32 %154)
  %156 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 13
  store i32 %155, i32* %156, align 4
  br label %161

157:                                              ; preds = %144
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 13
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %149
  br label %162

162:                                              ; preds = %161, %125
  store i32 0, i32* %18, align 4
  br label %163

163:                                              ; preds = %205, %162
  %164 = load i32, i32* %18, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %208

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %168, 6
  %170 = add nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %18, align 4
  %175 = mul nsw i32 %174, 6
  %176 = add nsw i32 %175, 3
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %18, align 4
  %181 = mul nsw i32 %180, 6
  %182 = add nsw i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %18, align 4
  %187 = mul nsw i32 %186, 6
  %188 = add nsw i32 %187, 5
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %18, align 4
  %193 = mul nsw i32 %192, 6
  %194 = add nsw i32 %193, 6
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %18, align 4
  %199 = mul nsw i32 %198, 6
  %200 = add nsw i32 %199, 7
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @cf2_glyphpath_curveTo(i32 %167, i32 %173, i32 %179, i32 %185, i32 %191, i32 %197, i32 %203)
  br label %205

205:                                              ; preds = %166
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %163

208:                                              ; preds = %163
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @cf2_stack_clear(i32 %209)
  %211 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 12
  %212 = load i32, i32* %211, align 16
  %213 = load i32*, i32** %8, align 8
  store i32 %212, i32* %213, align 4
  %214 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 13
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %9, align 8
  store i32 %215, i32* %216, align 4
  ret void
}

declare dso_local i64 @FT_BOOL(i32) #1

declare dso_local i32 @ADD_INT32(i32, i32) #1

declare dso_local i32 @cf2_stack_getReal(i32, i64) #1

declare dso_local i64 @cf2_fixedAbs(i32) #1

declare dso_local i32 @SUB_INT32(i32, i32) #1

declare dso_local i32 @cf2_glyphpath_curveTo(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cf2_stack_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
