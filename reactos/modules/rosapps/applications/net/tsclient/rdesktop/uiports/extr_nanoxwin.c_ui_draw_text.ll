; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@g_gc = common dso_local global i32 0, align 4
@GR_MODE_COPY = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_wnd = common dso_local global i32 0, align 4
@MIX_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"this shouldn't be happening\0A\00", align 1
@TEXT2_IMPLICIT_X = common dso_local global i32 0, align 4
@TEXT2_VERTICAL = common dso_local global i32 0, align 4

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
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.TYPE_3__*, align 8
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
  %46 = load i32, i32* @g_gc, align 4
  %47 = load i32, i32* @GR_MODE_COPY, align 4
  %48 = call i32 @GrSetGCMode(i32 %46, i32 %47)
  %49 = load i32, i32* @g_gc, align 4
  %50 = call i32 @GrSetGCUseBackground(i32 %49, i32 0)
  %51 = load i32, i32* @g_server_bpp, align 4
  %52 = icmp eq i32 %51, 16
  br i1 %52, label %53, label %61

53:                                               ; preds = %19
  %54 = load i32, i32* @g_bpp, align 4
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %36, align 4
  %58 = call i32 @COLOR16TO32(i32 %57)
  store i32 %58, i32* %36, align 4
  %59 = load i32, i32* %35, align 4
  %60 = call i32 @COLOR16TO32(i32 %59)
  store i32 %60, i32* %35, align 4
  br label %61

61:                                               ; preds = %56, %53, %19
  %62 = load i32, i32* @g_gc, align 4
  %63 = load i32, i32* %35, align 4
  %64 = call i32 @GrSetGCForeground(i32 %62, i32 %63)
  %65 = load i32, i32* %30, align 4
  %66 = load i32, i32* %32, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @g_width, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @g_width, align 4
  %72 = load i32, i32* %30, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %32, align 4
  br label %74

74:                                               ; preds = %70, %61
  %75 = load i32, i32* %32, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @g_wnd, align 4
  %79 = load i32, i32* @g_gc, align 4
  %80 = load i32, i32* %30, align 4
  %81 = load i32, i32* %31, align 4
  %82 = load i32, i32* %32, align 4
  %83 = load i32, i32* %33, align 4
  %84 = call i32 @GrFillRect(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %98

85:                                               ; preds = %74
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* @MIX_OPAQUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* @g_wnd, align 4
  %91 = load i32, i32* @g_gc, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %28, align 4
  %95 = load i32, i32* %29, align 4
  %96 = call i32 @GrFillRect(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %85
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i32, i32* @g_gc, align 4
  %100 = load i32, i32* %36, align 4
  %101 = call i32 @GrSetGCForeground(i32 %99, i32 %100)
  store i32 0, i32* %40, align 4
  br label %102

102:                                              ; preds = %235, %98
  %103 = load i32, i32* %40, align 4
  %104 = load i32, i32* %38, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %236

106:                                              ; preds = %102
  %107 = load i32*, i32** %37, align 8
  %108 = load i32, i32* %40, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %229 [
    i32 255, label %112
    i32 254, label %145
  ]

112:                                              ; preds = %106
  %113 = load i32, i32* %40, align 4
  %114 = add nsw i32 %113, 2
  %115 = load i32, i32* %38, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load i32*, i32** %37, align 8
  %119 = load i32, i32* %40, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %37, align 8
  %125 = load i32*, i32** %37, align 8
  %126 = load i32, i32* %40, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cache_put_text(i32 %123, i32* %124, i32 %130)
  br label %135

132:                                              ; preds = %112
  %133 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %117
  %136 = load i32, i32* %40, align 4
  %137 = add nsw i32 %136, 3
  %138 = load i32, i32* %38, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %38, align 4
  %140 = load i32*, i32** %37, align 8
  %141 = load i32, i32* %40, align 4
  %142 = add nsw i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32* %144, i32** %37, align 8
  store i32 0, i32* %40, align 4
  br label %235

145:                                              ; preds = %106
  %146 = load i32*, i32** %37, align 8
  %147 = load i32, i32* %40, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.TYPE_3__* @cache_get_text(i32 %151)
  store %struct.TYPE_3__* %152, %struct.TYPE_3__** %45, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %154 = icmp ne %struct.TYPE_3__* %153, null
  br i1 %154, label %155, label %210

155:                                              ; preds = %145
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %155
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* @TEXT2_IMPLICIT_X, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %192, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* @TEXT2_VERTICAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32*, i32** %37, align 8
  %175 = load i32, i32* %40, align 4
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %25, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %25, align 4
  br label %191

182:                                              ; preds = %168
  %183 = load i32*, i32** %37, align 8
  %184 = load i32, i32* %40, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %24, align 4
  br label %191

191:                                              ; preds = %182, %173
  br label %192

192:                                              ; preds = %191, %163, %155
  store i32 0, i32* %41, align 4
  br label %193

193:                                              ; preds = %206, %192
  %194 = load i32, i32* %41, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %193
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i32*
  %204 = load i32, i32* %41, align 4
  %205 = call i32 @DO_GLYPH(i32* %203, i32 %204)
  br label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %41, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %41, align 4
  br label %193

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %145
  %211 = load i32, i32* %40, align 4
  %212 = add nsw i32 %211, 2
  %213 = load i32, i32* %38, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* %40, align 4
  %217 = add nsw i32 %216, 3
  store i32 %217, i32* %40, align 4
  br label %221

218:                                              ; preds = %210
  %219 = load i32, i32* %40, align 4
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %40, align 4
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* %40, align 4
  %223 = load i32, i32* %38, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %38, align 4
  %225 = load i32*, i32** %37, align 8
  %226 = load i32, i32* %40, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32* %228, i32** %37, align 8
  store i32 0, i32* %40, align 4
  br label %235

229:                                              ; preds = %106
  %230 = load i32*, i32** %37, align 8
  %231 = load i32, i32* %40, align 4
  %232 = call i32 @DO_GLYPH(i32* %230, i32 %231)
  %233 = load i32, i32* %40, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %40, align 4
  br label %235

235:                                              ; preds = %229, %221, %135
  br label %102

236:                                              ; preds = %102
  ret void
}

declare dso_local i32 @GrSetGCMode(i32, i32) #1

declare dso_local i32 @GrSetGCUseBackground(i32, i32) #1

declare dso_local i32 @COLOR16TO32(i32) #1

declare dso_local i32 @GrSetGCForeground(i32, i32) #1

declare dso_local i32 @GrFillRect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_put_text(i32, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_3__* @cache_get_text(i32) #1

declare dso_local i32 @DO_GLYPH(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
