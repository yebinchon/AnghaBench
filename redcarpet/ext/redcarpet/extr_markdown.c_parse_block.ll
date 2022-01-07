; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_block.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.buf.0*, i32)*, i64 }
%struct.buf.0 = type opaque
%struct.TYPE_3__ = type { i64 }

@BUFFER_SPAN = common dso_local global i64 0, align 8
@BUFFER_BLOCK = common dso_local global i64 0, align 8
@MKDEXT_FENCED_CODE = common dso_local global i32 0, align 4
@MKDEXT_TABLES = common dso_local global i32 0, align 4
@MKDEXT_DISABLE_INDENTED_CODE = common dso_local global i32 0, align 4
@MKD_LIST_ORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_block(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %14 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* @BUFFER_SPAN, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %21 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* @BUFFER_BLOCK, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %19, %26
  %28 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %29 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %247

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %246, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %247

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @is_atxheader(%struct.sd_markdown* %45, i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.buf*, %struct.buf** %5, align 8
  %52 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @parse_atxheader(%struct.buf* %51, %struct.sd_markdown* %52, i8* %53, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %246

58:                                               ; preds = %38
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 60
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %67 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.buf*, %struct.buf** %5, align 8
  %73 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @parse_htmlblock(%struct.buf* %72, %struct.sd_markdown* %73, i8* %74, i64 %75, i32 1)
  store i64 %76, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %245

82:                                               ; preds = %71, %65, %58
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @is_empty(i8* %83, i64 %84)
  store i64 %85, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %9, align 8
  br label %244

91:                                               ; preds = %82
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @is_hrule(i8* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %91
  %97 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %98 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.buf.0*, i32)*, i32 (%struct.buf.0*, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.buf.0*, i32)* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %104 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (%struct.buf.0*, i32)*, i32 (%struct.buf.0*, i32)** %105, align 8
  %107 = load %struct.buf*, %struct.buf** %5, align 8
  %108 = bitcast %struct.buf* %107 to %struct.buf.0*
  %109 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %110 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %106(%struct.buf.0* %108, i32 %111)
  br label %113

113:                                              ; preds = %102, %96
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 10
  br label %125

125:                                              ; preds = %118, %114
  %126 = phi i1 [ false, %114 ], [ %124, %118 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %114

130:                                              ; preds = %125
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %243

133:                                              ; preds = %91
  %134 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %135 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MKDEXT_FENCED_CODE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.buf*, %struct.buf** %5, align 8
  %142 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @parse_fencedcode(%struct.buf* %141, %struct.sd_markdown* %142, i8* %143, i64 %144)
  store i64 %145, i64* %11, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %9, align 8
  br label %242

151:                                              ; preds = %140, %133
  %152 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %153 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MKDEXT_TABLES, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load %struct.buf*, %struct.buf** %5, align 8
  %160 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @parse_table(%struct.buf* %159, %struct.sd_markdown* %160, i8* %161, i64 %162)
  store i64 %163, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %9, align 8
  br label %241

169:                                              ; preds = %158, %151
  %170 = load i8*, i8** %12, align 8
  %171 = load i64, i64* %10, align 8
  %172 = call i64 @prefix_quote(i8* %170, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load %struct.buf*, %struct.buf** %5, align 8
  %176 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = load i64, i64* %10, align 8
  %179 = call i64 @parse_blockquote(%struct.buf* %175, %struct.sd_markdown* %176, i8* %177, i64 %178)
  %180 = load i64, i64* %9, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %9, align 8
  br label %240

182:                                              ; preds = %169
  %183 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %184 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MKDEXT_DISABLE_INDENTED_CODE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %182
  %190 = load i8*, i8** %12, align 8
  %191 = load i64, i64* %10, align 8
  %192 = call i64 @prefix_code(i8* %190, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.buf*, %struct.buf** %5, align 8
  %196 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i64, i64* %10, align 8
  %199 = call i64 @parse_blockcode(%struct.buf* %195, %struct.sd_markdown* %196, i8* %197, i64 %198)
  %200 = load i64, i64* %9, align 8
  %201 = add i64 %200, %199
  store i64 %201, i64* %9, align 8
  br label %239

202:                                              ; preds = %189, %182
  %203 = load i8*, i8** %12, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i64 @prefix_uli(i8* %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.buf*, %struct.buf** %5, align 8
  %209 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %210 = load i8*, i8** %12, align 8
  %211 = load i64, i64* %10, align 8
  %212 = call i64 @parse_list(%struct.buf* %208, %struct.sd_markdown* %209, i8* %210, i64 %211, i32 0)
  %213 = load i64, i64* %9, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %9, align 8
  br label %238

215:                                              ; preds = %202
  %216 = load i8*, i8** %12, align 8
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @prefix_oli(i8* %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load %struct.buf*, %struct.buf** %5, align 8
  %222 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i32, i32* @MKD_LIST_ORDERED, align 4
  %226 = call i64 @parse_list(%struct.buf* %221, %struct.sd_markdown* %222, i8* %223, i64 %224, i32 %225)
  %227 = load i64, i64* %9, align 8
  %228 = add i64 %227, %226
  store i64 %228, i64* %9, align 8
  br label %237

229:                                              ; preds = %215
  %230 = load %struct.buf*, %struct.buf** %5, align 8
  %231 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %232 = load i8*, i8** %12, align 8
  %233 = load i64, i64* %10, align 8
  %234 = call i64 @parse_paragraph(%struct.buf* %230, %struct.sd_markdown* %231, i8* %232, i64 %233)
  %235 = load i64, i64* %9, align 8
  %236 = add i64 %235, %234
  store i64 %236, i64* %9, align 8
  br label %237

237:                                              ; preds = %229, %220
  br label %238

238:                                              ; preds = %237, %207
  br label %239

239:                                              ; preds = %238, %194
  br label %240

240:                                              ; preds = %239, %174
  br label %241

241:                                              ; preds = %240, %165
  br label %242

242:                                              ; preds = %241, %147
  br label %243

243:                                              ; preds = %242, %130
  br label %244

244:                                              ; preds = %243, %87
  br label %245

245:                                              ; preds = %244, %78
  br label %246

246:                                              ; preds = %245, %50
  br label %34

247:                                              ; preds = %32, %34
  ret void
}

declare dso_local i64 @is_atxheader(%struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @parse_atxheader(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @parse_htmlblock(%struct.buf*, %struct.sd_markdown*, i8*, i64, i32) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i64 @is_hrule(i8*, i64) #1

declare dso_local i64 @parse_fencedcode(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @parse_table(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @prefix_quote(i8*, i64) #1

declare dso_local i64 @parse_blockquote(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @prefix_code(i8*, i64) #1

declare dso_local i64 @parse_blockcode(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i64 @prefix_uli(i8*, i64) #1

declare dso_local i64 @parse_list(%struct.buf*, %struct.sd_markdown*, i8*, i64, i32) #1

declare dso_local i64 @prefix_oli(i8*, i64) #1

declare dso_local i64 @parse_paragraph(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
