; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_find_page.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_find_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@ogg_page_header = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @vorbis_find_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_find_page(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [27 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %17

17:                                               ; preds = %221, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %222

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i32 @get8(%struct.TYPE_6__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 79
  br i1 %27, label %28, label %221

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = call i8* @stb_vorbis_get_file_offset(%struct.TYPE_6__* %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub i32 %32, 25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %222

39:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @get8(%struct.TYPE_6__* %44)
  %46 = load i32*, i32** @ogg_page_header, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %40

57:                                               ; preds = %52, %40
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %222

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %216

66:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32*, i32** @ogg_page_header, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %67

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %92, %82
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 27
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = call i32 @get8(%struct.TYPE_6__* %87)
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %83

95:                                               ; preds = %83
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %222

101:                                              ; preds = %95
  %102 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 4
  %103 = load i32, i32* %102, align 16
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %217

106:                                              ; preds = %101
  %107 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 22
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 23
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 8
  %112 = add nsw i32 %108, %111
  %113 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 24
  %114 = load i32, i32* %113, align 16
  %115 = shl i32 %114, 16
  %116 = add nsw i32 %112, %115
  %117 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 25
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 24
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %14, align 4
  store i32 22, i32* %12, align 4
  br label %121

121:                                              ; preds = %128, %106
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 26
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 %126
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %121

131:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %142, %131
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %133, 27
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @crc32_update(i32 %136, i32 %140)
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %132

145:                                              ; preds = %132
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %12, align 4
  %148 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 26
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = call i32 @get8(%struct.TYPE_6__* %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @crc32_update(i32 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %146

163:                                              ; preds = %146
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %222

172:                                              ; preds = %166, %163
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %182, %172
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = call i32 @get8(%struct.TYPE_6__* %179)
  %181 = call i32 @crc32_update(i32 %178, i32 %180)
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %173

185:                                              ; preds = %173
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %215

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %194 = call i8* @stb_vorbis_get_file_offset(%struct.TYPE_6__* %193)
  %195 = ptrtoint i8* %194 to i32
  %196 = load i32*, i32** %6, align 8
  store i32 %195, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %189
  %198 = load i32*, i32** %7, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = getelementptr inbounds [27 x i32], [27 x i32]* %11, i64 0, i64 5
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32*, i32** %7, align 8
  store i32 1, i32* %206, align 4
  br label %209

207:                                              ; preds = %200
  %208 = load i32*, i32** %7, align 8
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %207, %205
  br label %210

210:                                              ; preds = %209, %197
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sub i32 %212, 1
  %214 = call i32 @set_file_offset(%struct.TYPE_6__* %211, i32 %213)
  store i32 1, i32* %4, align 4
  br label %222

215:                                              ; preds = %185
  br label %216

216:                                              ; preds = %215, %63
  br label %217

217:                                              ; preds = %216, %105
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @set_file_offset(%struct.TYPE_6__* %218, i32 %219)
  br label %221

221:                                              ; preds = %217, %23
  br label %17

222:                                              ; preds = %210, %171, %100, %62, %38, %22
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @get8(%struct.TYPE_6__*) #1

declare dso_local i8* @stb_vorbis_get_file_offset(%struct.TYPE_6__*) #1

declare dso_local i32 @crc32_update(i32, i32) #1

declare dso_local i32 @set_file_offset(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
