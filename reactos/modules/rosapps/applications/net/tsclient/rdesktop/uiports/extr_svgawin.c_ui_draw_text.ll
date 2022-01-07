; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@MIX_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"this shouldn't be happening\0A\00", align 1
@TEXT2_IMPLICIT_X = common dso_local global i32 0, align 4
@TEXT2_VERTICAL = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_text(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32* %14, i32 %15, i32 %16, i32* %17, i32 %18) #0 {
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_3__*, align 8
  %43 = alloca i32*, align 8
  store i32 %0, i32* %20, align 4
  store i32 %1, i32* %21, align 4
  store i32 %2, i32* %22, align 4
  store i32 %3, i32* %23, align 4
  store i32 %4, i32* %24, align 4
  store i32 %5, i32* %25, align 4
  store i32 %6, i32* %26, align 4
  store i32 %7, i32* %27, align 4
  store i32 %8, i32* %28, align 4
  store i32 %9, i32* %29, align 4
  store i32 %10, i32* %30, align 4
  store i32 %11, i32* %31, align 4
  store i32 %12, i32* %32, align 4
  store i32 %13, i32* %33, align 4
  store i32* %14, i32** %34, align 8
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i32* %17, i32** %37, align 8
  store i32 %18, i32* %38, align 4
  %44 = load i32, i32* %32, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %64

46:                                               ; preds = %19
  %47 = load i32, i32* %30, align 4
  %48 = load i32, i32* %31, align 4
  %49 = load i32, i32* %32, align 4
  %50 = load i32, i32* %33, align 4
  %51 = call i64 @contains_mouse(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @mousex, align 4
  %55 = load i32, i32* @mousey, align 4
  %56 = call i32 @draw_cursor_under(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %30, align 4
  %59 = load i32, i32* %31, align 4
  %60 = load i32, i32* %32, align 4
  %61 = load i32, i32* %33, align 4
  %62 = load i32, i32* %35, align 4
  %63 = call i32 @fill_rect(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 12)
  br label %87

64:                                               ; preds = %19
  %65 = load i32, i32* %26, align 4
  %66 = load i32, i32* %27, align 4
  %67 = load i32, i32* %28, align 4
  %68 = load i32, i32* %29, align 4
  %69 = call i64 @contains_mouse(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @mousex, align 4
  %73 = load i32, i32* @mousey, align 4
  %74 = call i32 @draw_cursor_under(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* @MIX_OPAQUE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %29, align 4
  %84 = load i32, i32* %35, align 4
  %85 = call i32 @fill_rect(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 12)
  br label %86

86:                                               ; preds = %79, %75
  br label %87

87:                                               ; preds = %86, %57
  store i32 0, i32* %39, align 4
  br label %88

88:                                               ; preds = %221, %87
  %89 = load i32, i32* %39, align 4
  %90 = load i32, i32* %38, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %222

92:                                               ; preds = %88
  %93 = load i32*, i32** %37, align 8
  %94 = load i32, i32* %39, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %215 [
    i32 255, label %98
    i32 254, label %131
  ]

98:                                               ; preds = %92
  %99 = load i32, i32* %39, align 4
  %100 = add nsw i32 %99, 2
  %101 = load i32, i32* %38, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i32*, i32** %37, align 8
  %105 = load i32, i32* %39, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %37, align 8
  %111 = load i32*, i32** %37, align 8
  %112 = load i32, i32* %39, align 4
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cache_put_text(i32 %109, i32* %110, i32 %116)
  br label %121

118:                                              ; preds = %98
  %119 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %103
  %122 = load i32, i32* %39, align 4
  %123 = add nsw i32 %122, 3
  %124 = load i32, i32* %38, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %38, align 4
  %126 = load i32*, i32** %37, align 8
  %127 = load i32, i32* %39, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32* %130, i32** %37, align 8
  store i32 0, i32* %39, align 4
  br label %221

131:                                              ; preds = %92
  %132 = load i32*, i32** %37, align 8
  %133 = load i32, i32* %39, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.TYPE_3__* @cache_get_text(i32 %137)
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %42, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %140 = icmp ne %struct.TYPE_3__* %139, null
  br i1 %140, label %141, label %196

141:                                              ; preds = %131
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %141
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* @TEXT2_IMPLICIT_X, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %178, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* @TEXT2_VERTICAL, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load i32*, i32** %37, align 8
  %161 = load i32, i32* %39, align 4
  %162 = add nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %25, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %25, align 4
  br label %177

168:                                              ; preds = %154
  %169 = load i32*, i32** %37, align 8
  %170 = load i32, i32* %39, align 4
  %171 = add nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %24, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %24, align 4
  br label %177

177:                                              ; preds = %168, %159
  br label %178

178:                                              ; preds = %177, %149, %141
  store i32 0, i32* %40, align 4
  br label %179

179:                                              ; preds = %192, %178
  %180 = load i32, i32* %40, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %40, align 4
  %191 = call i32 @DO_GLYPH(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %40, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %40, align 4
  br label %179

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195, %131
  %197 = load i32, i32* %39, align 4
  %198 = add nsw i32 %197, 2
  %199 = load i32, i32* %38, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* %39, align 4
  %203 = add nsw i32 %202, 3
  store i32 %203, i32* %39, align 4
  br label %207

204:                                              ; preds = %196
  %205 = load i32, i32* %39, align 4
  %206 = add nsw i32 %205, 2
  store i32 %206, i32* %39, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %39, align 4
  %209 = load i32, i32* %38, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %38, align 4
  %211 = load i32*, i32** %37, align 8
  %212 = load i32, i32* %39, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32* %214, i32** %37, align 8
  store i32 0, i32* %39, align 4
  br label %221

215:                                              ; preds = %92
  %216 = load i32*, i32** %37, align 8
  %217 = load i32, i32* %39, align 4
  %218 = call i32 @DO_GLYPH(i32* %216, i32 %217)
  %219 = load i32, i32* %39, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %39, align 4
  br label %221

221:                                              ; preds = %215, %207, %121
  br label %88

222:                                              ; preds = %88
  %223 = load i32, i32* %32, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* %30, align 4
  %227 = load i32, i32* %31, align 4
  %228 = load i32, i32* %32, align 4
  %229 = load i32, i32* %33, align 4
  %230 = load i32, i32* @True, align 4
  %231 = call i32 @cache_rect(i32 %226, i32 %227, i32 %228, i32 %229, i32 %230)
  br label %239

232:                                              ; preds = %222
  %233 = load i32, i32* %26, align 4
  %234 = load i32, i32* %27, align 4
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* @True, align 4
  %238 = call i32 @cache_rect(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %225
  ret void
}

declare dso_local i64 @contains_mouse(i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @fill_rect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_put_text(i32, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_3__* @cache_get_text(i32) #1

declare dso_local i32 @DO_GLYPH(i32*, i32) #1

declare dso_local i32 @cache_rect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
