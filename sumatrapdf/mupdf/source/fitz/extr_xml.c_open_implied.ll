; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_open_implied.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_open_implied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.parser = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@fz_xml_html_tag__NONE = common dso_local global i32 0, align 4
@html_tags = common dso_local global %struct.TYPE_5__* null, align 8
@IMPLIES_SHIFT = common dso_local global i32 0, align 4
@IMPLIES_MASK = common dso_local global i32 0, align 4
@IMPLIES_SHIFT2 = common dso_local global i32 0, align 4
@IMPLIES_SHIFT3 = common dso_local global i32 0, align 4
@TABLE_SHIFT = common dso_local global i32 0, align 4
@TABLE_MASK = common dso_local global i32 0, align 4
@fz_xml_html_tag_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.parser*, i32)* @open_implied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_implied(i32* %0, %struct.parser* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.parser* %1, %struct.parser** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %245

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IMPLIES_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @IMPLIES_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IMPLIES_SHIFT2, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @IMPLIES_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IMPLIES_SHIFT3, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* @IMPLIES_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %24
  br label %245

59:                                               ; preds = %24
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @fz_xml_html_tag__NONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TABLE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @TABLE_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %187

84:                                               ; preds = %71
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %14, align 4
  %85 = load %struct.parser*, %struct.parser** %5, align 8
  %86 = getelementptr inbounds %struct.parser, %struct.parser* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %7, align 8
  br label %88

88:                                               ; preds = %136, %84
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %140

91:                                               ; preds = %88
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = call i8* @fz_xml_tag(%struct.TYPE_4__* %92)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %136

97:                                               ; preds = %91
  %98 = load i8*, i8** %15, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = call i32 @find_html_tag(i8* %98, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TABLE_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* @TABLE_MASK, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %13, align 8
  br label %117

117:                                              ; preds = %115, %97
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %121, %117
  store i32 1, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %125
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @fz_xml_html_tag_table, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %140

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %96
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %7, align 8
  br label %88

140:                                              ; preds = %134, %88
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %142 = icmp ne %struct.TYPE_4__* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.parser*, %struct.parser** %5, align 8
  %145 = getelementptr inbounds %struct.parser, %struct.parser* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %7, align 8
  br label %147

147:                                              ; preds = %159, %143
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %149 = icmp ne %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.parser*, %struct.parser** %5, align 8
  %153 = call i32 @xml_emit_close_tag(i32* %151, %struct.parser* %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %156 = icmp eq %struct.TYPE_4__* %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %163

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  store %struct.TYPE_4__* %162, %struct.TYPE_4__** %7, align 8
  br label %147

163:                                              ; preds = %157, %147
  br label %164

164:                                              ; preds = %163, %140
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %186, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %17, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = load %struct.parser*, %struct.parser** %5, align 8
  %176 = load i32, i32* %8, align 4
  call void @open_implied(i32* %174, %struct.parser* %175, i32 %176)
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.parser*, %struct.parser** %5, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = call i32 @xml_emit_open_tag(i32* %177, %struct.parser* %178, i8* %179, i8* %184, i32 0)
  br label %186

186:                                              ; preds = %167, %164
  br label %245

187:                                              ; preds = %71
  %188 = load %struct.parser*, %struct.parser** %5, align 8
  %189 = getelementptr inbounds %struct.parser, %struct.parser* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  store %struct.TYPE_4__* %190, %struct.TYPE_4__** %7, align 8
  br label %191

191:                                              ; preds = %218, %187
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %193 = icmp ne %struct.TYPE_4__* %192, null
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %196 = call i8* @fz_xml_tag(%struct.TYPE_4__* %195)
  store i8* %196, i8** %18, align 8
  %197 = load i8*, i8** %18, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %218

200:                                              ; preds = %194
  %201 = load i8*, i8** %18, align 8
  %202 = load i8*, i8** %18, align 8
  %203 = call i32 @strlen(i8* %202)
  %204 = call i32 @find_html_tag(i8* %201, i32 %203)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %208, %200
  br label %222

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %199
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  store %struct.TYPE_4__* %221, %struct.TYPE_4__** %7, align 8
  br label %191

222:                                              ; preds = %216, %191
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %224 = icmp eq %struct.TYPE_4__* %223, null
  br i1 %224, label %225, label %244

225:                                              ; preds = %222
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @html_tags, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  store i8* %231, i8** %19, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = load %struct.parser*, %struct.parser** %5, align 8
  %234 = load i32, i32* %8, align 4
  call void @open_implied(i32* %232, %struct.parser* %233, i32 %234)
  %235 = load i32*, i32** %4, align 8
  %236 = load %struct.parser*, %struct.parser** %5, align 8
  %237 = load i8*, i8** %19, align 8
  %238 = load i8*, i8** %19, align 8
  %239 = load i8*, i8** %19, align 8
  %240 = call i32 @strlen(i8* %239)
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = call i32 @xml_emit_open_tag(i32* %235, %struct.parser* %236, i8* %237, i8* %242, i32 0)
  br label %244

244:                                              ; preds = %225, %222
  br label %245

245:                                              ; preds = %23, %58, %244, %186
  ret void
}

declare dso_local i8* @fz_xml_tag(%struct.TYPE_4__*) #1

declare dso_local i32 @find_html_tag(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xml_emit_close_tag(i32*, %struct.parser*) #1

declare dso_local i32 @xml_emit_open_tag(i32*, %struct.parser*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
