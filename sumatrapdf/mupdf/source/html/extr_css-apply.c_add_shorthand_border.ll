; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_shorthand_border.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_shorthand_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i32 }

@CSS_HASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"border-top-color\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"border-right-color\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"border-bottom-color\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"border-left-color\00", align 1
@CSS_KEYWORD = common dso_local global i64 0, align 8
@border_width_kw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"border-top-width\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"border-right-width\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"border-bottom-width\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"border-left-width\00", align 1
@border_style_kw = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"border-top-style\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"border-right-style\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"border-bottom-style\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"border-left-style\00", align 1
@color_kw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i32)* @add_shorthand_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_shorthand_border(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %15

15:                                               ; preds = %226, %7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %230

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CSS_HASH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @add_property(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @add_property(i32* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @add_property(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @add_property(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %48
  br label %226

57:                                               ; preds = %18
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CSS_KEYWORD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %192

63:                                               ; preds = %57
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @border_width_kw, align 4
  %68 = load i32, i32* @border_width_kw, align 4
  %69 = call i32 @nelem(i32 %68)
  %70 = call i64 @keyword_in_list(i32 %66, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @add_property(i32* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @add_property(i32* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @add_property(i32* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_4__* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @add_property(i32* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_4__* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  br label %191

105:                                              ; preds = %63
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @border_style_kw, align 4
  %110 = load i32, i32* @border_style_kw, align 4
  %111 = call i32 @nelem(i32 %110)
  %112 = call i64 @keyword_in_list(i32 %108, i32 %109, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @add_property(i32* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_4__* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @add_property(i32* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_4__* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @add_property(i32* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_4__* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32*, i32** %8, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @add_property(i32* %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_4__* %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %138
  br label %190

147:                                              ; preds = %105
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @color_kw, align 4
  %152 = load i32, i32* @color_kw, align 4
  %153 = call i32 @nelem(i32 %152)
  %154 = call i64 @keyword_in_list(i32 %150, i32 %151, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %147
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @add_property(i32* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32*, i32** %8, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @add_property(i32* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @add_property(i32* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32*, i32** %8, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @add_property(i32* %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %180
  br label %189

189:                                              ; preds = %188, %147
  br label %190

190:                                              ; preds = %189, %146
  br label %191

191:                                              ; preds = %190, %104
  br label %225

192:                                              ; preds = %57
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @add_property(i32* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %192
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32*, i32** %8, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @add_property(i32* %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32*, i32** %8, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @add_property(i32* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_4__* %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load i32*, i32** %8, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @add_property(i32* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_4__* %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %216
  br label %225

225:                                              ; preds = %224, %191
  br label %226

226:                                              ; preds = %225, %56
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  store %struct.TYPE_4__* %229, %struct.TYPE_4__** %9, align 8
  br label %15

230:                                              ; preds = %15
  ret void
}

declare dso_local i32 @add_property(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @keyword_in_list(i32, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
