; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_select_layer_config.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_select_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@Root = common dso_local global i32 0, align 4
@OCProperties = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown Layer config (None known!)\00", align 1
@Configs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Illegal Layer config\00", align 1
@D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No default Layer config\00", align 1
@Intent = common dso_local global i32 0, align 4
@BaseState = common dso_local global i32 0, align 4
@Unchanged = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_select_layer_config(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call i32* @pdf_trailer(i32* %22, %struct.TYPE_10__* %23)
  %25 = load i32, i32* @Root, align 4
  %26 = call i32 @PDF_NAME(i32 %25)
  %27 = call i32* @pdf_dict_get(i32* %21, i32* %24, i32 %26)
  %28 = load i32, i32* @OCProperties, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32* @pdf_dict_get(i32* %20, i32* %27, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %259

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %40 = call i32 @fz_throw(i32* %38, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* @Configs, align 4
  %47 = call i32 @PDF_NAME(i32 %46)
  %48 = call i32* @pdf_dict_get(i32* %44, i32* %45, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32* @pdf_array_get(i32* %43, i32* %48, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %59 = call i32 @fz_throw(i32* %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @D, align 4
  %64 = call i32 @PDF_NAME(i32 %63)
  %65 = call i32* @pdf_dict_get(i32* %61, i32* %62, i32 %64)
  store i32* %65, i32** %13, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %60
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pdf_drop_obj(i32* %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* @Intent, align 4
  %83 = call i32 @PDF_NAME(i32 %82)
  %84 = call i32* @pdf_dict_get(i32* %80, i32* %81, i32 %83)
  %85 = call i32 @pdf_keep_obj(i32* %79, i32* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* @BaseState, align 4
  %94 = call i32 @PDF_NAME(i32 %93)
  %95 = call i32* @pdf_dict_get(i32* %91, i32* %92, i32 %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @Unchanged, align 4
  %99 = call i32 @PDF_NAME(i32 %98)
  %100 = call i64 @pdf_name_eq(i32* %96, i32* %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  br label %145

103:                                              ; preds = %73
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* @OFF, align 4
  %107 = call i32 @PDF_NAME(i32 %106)
  %108 = call i64 @pdf_name_eq(i32* %104, i32* %105, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %123, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %111

126:                                              ; preds = %111
  br label %144

127:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %128

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %126
  br label %145

145:                                              ; preds = %144, %102
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* @ON, align 4
  %149 = call i32 @PDF_NAME(i32 %148)
  %150 = call i32* @pdf_dict_get(i32* %146, i32* %147, i32 %149)
  store i32* %150, i32** %12, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @pdf_array_len(i32* %151, i32* %152)
  store i32 %153, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %193, %145
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %196

158:                                              ; preds = %154
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32* @pdf_array_get(i32* %159, i32* %160, i32 %161)
  store i32* %162, i32** %15, align 8
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %189, %158
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %163
  %168 = load i32*, i32** %4, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = call i32 @pdf_objcmp_resolve(i32* %168, i32 %176, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %167
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 4
  br label %192

188:                                              ; preds = %167
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %163

192:                                              ; preds = %180, %163
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %154

196:                                              ; preds = %154
  %197 = load i32*, i32** %4, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* @OFF, align 4
  %200 = call i32 @PDF_NAME(i32 %199)
  %201 = call i32* @pdf_dict_get(i32* %197, i32* %198, i32 %200)
  store i32* %201, i32** %12, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @pdf_array_len(i32* %202, i32* %203)
  store i32 %204, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %244, %196
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %247

209:                                              ; preds = %205
  %210 = load i32*, i32** %4, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32* @pdf_array_get(i32* %210, i32* %211, i32 %212)
  store i32* %213, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %214

214:                                              ; preds = %240, %209
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %243

218:                                              ; preds = %214
  %219 = load i32*, i32** %4, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %16, align 8
  %229 = call i32 @pdf_objcmp_resolve(i32* %219, i32 %227, i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %218
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  br label %243

239:                                              ; preds = %218
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %214

243:                                              ; preds = %231, %214
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %205

247:                                              ; preds = %205
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load i32*, i32** %4, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %253 = call i32 @drop_ui(i32* %251, %struct.TYPE_9__* %252)
  %254 = load i32*, i32** %4, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @load_ui(i32* %254, %struct.TYPE_9__* %255, i32* %256, i32* %257)
  br label %259

259:                                              ; preds = %247, %36
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_trailer(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32) #1

declare dso_local i32 @pdf_keep_obj(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @pdf_objcmp_resolve(i32*, i32, i32*) #1

declare dso_local i32 @drop_ui(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @load_ui(i32*, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
