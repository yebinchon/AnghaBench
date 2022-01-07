; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_parse_entity.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_xml_parse_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@html_entities = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @xml_parse_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xml_parse_entity(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = call i32 @strtol(i8* %22, i8** %6, i32 16)
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i32 @strtol(i8* %27, i8** %6, i32 10)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 59
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %227

42:                                               ; preds = %30
  br label %178

43:                                               ; preds = %2
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 108
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 116
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  store i32 60, i32* %62, align 4
  store i64 4, i64* %3, align 8
  br label %227

63:                                               ; preds = %55, %49, %43
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 103
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 116
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  store i32 62, i32* %82, align 4
  store i64 4, i64* %3, align 8
  br label %227

83:                                               ; preds = %75, %69, %63
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 97
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 109
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 112
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 59
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32*, i32** %4, align 8
  store i32 38, i32* %108, align 4
  store i64 5, i64* %3, align 8
  br label %227

109:                                              ; preds = %101, %95, %89, %83
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 97
  br i1 %114, label %115, label %141

115:                                              ; preds = %109
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 112
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 111
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 115
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 59
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32*, i32** %4, align 8
  store i32 39, i32* %140, align 4
  store i64 6, i64* %3, align 8
  br label %227

141:                                              ; preds = %133, %127, %121, %115, %109
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 113
  br i1 %146, label %147, label %173

147:                                              ; preds = %141
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 117
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 111
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 4
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 116
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 5
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 59
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32*, i32** %4, align 8
  store i32 34, i32* %172, align 4
  store i64 6, i64* %3, align 8
  br label %227

173:                                              ; preds = %165, %159, %153, %147, %141
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %42
  store i64 0, i64* %7, align 8
  br label %179

179:                                              ; preds = %219, %178
  %180 = load i64, i64* %7, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** @html_entities, align 8
  %182 = call i64 @nelem(%struct.TYPE_3__* %181)
  %183 = icmp ult i64 %180, %182
  br i1 %183, label %184, label %222

184:                                              ; preds = %179
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** @html_entities, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @strlen(i32 %189)
  store i64 %190, i64* %8, align 8
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** @html_entities, align 8
  %194 = load i64, i64* %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @strncmp(i8* %192, i32 %197, i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %218, label %201

201:                                              ; preds = %184
  %202 = load i8*, i8** %5, align 8
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 1
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 59
  br i1 %208, label %209, label %218

209:                                              ; preds = %201
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** @html_entities, align 8
  %211 = load i64, i64* %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %4, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i64, i64* %8, align 8
  %217 = add i64 %216, 2
  store i64 %217, i64* %3, align 8
  br label %227

218:                                              ; preds = %201, %184
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %7, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %7, align 8
  br label %179

222:                                              ; preds = %179
  %223 = load i8*, i8** %5, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load i32*, i32** %4, align 8
  store i32 %225, i32* %226, align 4
  store i64 1, i64* %3, align 8
  br label %227

227:                                              ; preds = %222, %209, %171, %139, %107, %81, %61, %35
  %228 = load i64, i64* %3, align 8
  ret i64 %228
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @nelem(%struct.TYPE_3__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
