; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_is_whole_packet_present.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_is_whole_packet_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32*, i64 }

@TRUE = common dso_local global i32 0, align 4
@VORBIS_invalid_stream = common dso_local global i32 0, align 4
@VORBIS_need_more_data = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ogg_page_header = common dso_local global i32 0, align 4
@PAGEFLAG_continued_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @is_whole_packet_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_whole_packet_present(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %85

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %46, %21
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load i32, i32* @VORBIS_invalid_stream, align 4
  %64 = call i32 @error(%struct.TYPE_4__* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %227

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ugt i32* %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = load i32, i32* @VORBIS_need_more_data, align 4
  %82 = call i32 @error(%struct.TYPE_4__* %80, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %227

83:                                               ; preds = %73
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %2
  br label %86

86:                                               ; preds = %223, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %225

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 26
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp uge i32* %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = load i32, i32* @VORBIS_need_more_data, align 4
  %99 = call i32 @error(%struct.TYPE_4__* %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %227

100:                                              ; preds = %89
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* @ogg_page_header, align 4
  %103 = call i64 @memcmp(i32* %101, i32 %102, i32 4)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = load i32, i32* @VORBIS_invalid_stream, align 4
  %108 = call i32 @error(%struct.TYPE_4__* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %227

109:                                              ; preds = %100
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = load i32, i32* @VORBIS_invalid_stream, align 4
  %117 = call i32 @error(%struct.TYPE_4__* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  br label %227

118:                                              ; preds = %109
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PAGEFLAG_continued_packet, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = load i32, i32* @VORBIS_invalid_stream, align 4
  %136 = call i32 @error(%struct.TYPE_4__* %134, i32 %135)
  store i32 %136, i32* %3, align 4
  br label %227

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %121
  br label %151

139:                                              ; preds = %118
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PAGEFLAG_continued_packet, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = load i32, i32* @VORBIS_invalid_stream, align 4
  %149 = call i32 @error(%struct.TYPE_4__* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %227

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 26
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 27
  store i32* %156, i32** %9, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32* %160, i32** %8, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ugt i32* %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %151
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = load i32, i32* @VORBIS_need_more_data, align 4
  %169 = call i32 @error(%struct.TYPE_4__* %167, i32 %168)
  store i32 %169, i32* %3, align 4
  br label %227

170:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %192, %170
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %8, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, 255
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  br label %195

191:                                              ; preds = %175
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %171

195:                                              ; preds = %190, %171
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %10, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = load i32, i32* @VORBIS_invalid_stream, align 4
  %206 = call i32 @error(%struct.TYPE_4__* %204, i32 %205)
  store i32 %206, i32* %3, align 4
  br label %227

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %195
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 -1, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %208
  %214 = load i32*, i32** %8, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ugt i32* %214, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %221 = load i32, i32* @VORBIS_need_more_data, align 4
  %222 = call i32 @error(%struct.TYPE_4__* %220, i32 %221)
  store i32 %222, i32* %3, align 4
  br label %227

223:                                              ; preds = %213
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* %7, align 4
  br label %86

225:                                              ; preds = %86
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %219, %203, %166, %146, %133, %114, %105, %96, %79, %61
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @error(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
