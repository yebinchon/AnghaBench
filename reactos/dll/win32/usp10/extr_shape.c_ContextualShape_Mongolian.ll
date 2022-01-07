; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Mongolian.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Mongolian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@Xn = common dso_local global i32 0, align 4
@Xl = common dso_local global i32 0, align 4
@Xr = common dso_local global i32 0, align 4
@Xm = common dso_local global i32 0, align 4
@contextual_features = common dso_local global i32* null, align 8
@GSUB_E_NOGLYPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Mongolian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Mongolian(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %9
  %31 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %195

32:                                               ; preds = %9
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %20, align 4
  br label %44

43:                                               ; preds = %37, %32
  store i32 1, i32* %20, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %195

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32* @heap_alloc(i32 %54)
  store i32* %55, i32** %19, align 8
  store i32 0, i32* %21, align 4
  br label %56

56:                                               ; preds = %127, %50
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %130

60:                                               ; preds = %56
  %61 = load i32, i32* %21, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @mongolian_wordbreak(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %63, %60
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @mongolian_wordbreak(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77, %72
  %87 = load i32, i32* @Xn, align 4
  %88 = load i32*, i32** %19, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %98

92:                                               ; preds = %77
  %93 = load i32, i32* @Xl, align 4
  %94 = load i32*, i32** %19, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %86
  br label %126

99:                                               ; preds = %63
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @mongolian_wordbreak(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104, %99
  %114 = load i32, i32* @Xr, align 4
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %125

119:                                              ; preds = %104
  %120 = load i32, i32* @Xm, align 4
  %121 = load i32*, i32** %19, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  br label %56

130:                                              ; preds = %56
  %131 = load i32, i32* %20, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %23, align 4
  store i32 %136, i32* %22, align 4
  br label %137

137:                                              ; preds = %134, %133
  br label %138

138:                                              ; preds = %191, %137
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %22, align 4
  %144 = icmp sge i32 %143, 0
  br label %145

145:                                              ; preds = %142, %138
  %146 = phi i1 [ false, %138 ], [ %144, %142 ]
  br i1 %146, label %147, label %192

147:                                              ; preds = %145
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %25, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32*, i32** %16, align 8
  %157 = load i32*, i32** @contextual_features, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @apply_GSUB_feature_to_glyph(i32 %150, %struct.TYPE_8__* %151, %struct.TYPE_7__* %152, i32* %153, i32 %154, i32 %155, i32* %156, i32 %165)
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %147
  %171 = load i32, i32* %24, align 4
  %172 = load i32*, i32** %16, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %25, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32*, i32** %18, align 8
  %179 = call i32 @UpdateClusters(i32 %171, i32 %175, i32 %176, i32 %177, i32* %178)
  %180 = load i32, i32* %24, align 4
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %22, align 4
  br label %191

184:                                              ; preds = %147
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %23, align 4
  br label %191

191:                                              ; preds = %184, %170
  br label %138

192:                                              ; preds = %145
  %193 = load i32*, i32** %19, align 8
  %194 = call i32 @heap_free(i32* %193)
  br label %195

195:                                              ; preds = %192, %49, %30
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i64 @mongolian_wordbreak(i32) #1

declare dso_local i32 @apply_GSUB_feature_to_glyph(i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @UpdateClusters(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
