; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_StreamInText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_StreamInText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@STREAMIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@ME_StreamInText.bom_utf8 = internal constant [3 x i8] c"\EF\BB\BF", align 1
@.str = private unnamed_addr constant [9 x i8] c"%08x %p\0A\00", align 1
@SF_UNICODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_7__*, i32*)* @ME_StreamInText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_StreamInText(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @CP_ACP, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @STREAMIN_BUFFER_SIZE, align 4
  %27 = add nsw i32 4, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31, %struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %245, %4
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* @STREAMIN_BUFFER_SIZE, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %17, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = call i32 @ME_StreamInFill(%struct.TYPE_7__* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 2, i32* %19, align 4
  br label %241

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 2, i32* %19, align 4
  br label %241

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %60, %34
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SF_UNICODE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %218, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %20, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %21, align 4
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %71
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %11, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 3
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @memcmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ME_StreamInText.bom_utf8, i64 0, i64 0), i32 3)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @CP_UTF8, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %20, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  store i8* %95, i8** %20, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %96, 3
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %92, %86, %80
  br label %99

99:                                               ; preds = %98, %71
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @CP_UTF8, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %189

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %30, i64 %108
  %110 = load i8*, i8** %20, align 8
  %111 = load i32, i32* %21, align 4
  %112 = call i32 @memcpy(i8* %109, i8* %110, i32 %111)
  store i8* %30, i8** %20, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %21, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %21, align 4
  br label %116

116:                                              ; preds = %106, %103
  %117 = load i32, i32* %21, align 4
  store i32 %117, i32* %22, align 4
  br label %118

118:                                              ; preds = %128, %116
  %119 = load i8*, i8** %20, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = and i32 %125, 192
  %127 = icmp eq i32 %126, 128
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %10, align 4
  br label %118

133:                                              ; preds = %118
  %134 = load i8*, i8** %20, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %140, 128
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %188

143:                                              ; preds = %133
  store i32 0, i32* %23, align 4
  %144 = load i8*, i8** %20, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %150, 224
  %152 = icmp eq i32 %151, 192
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  store i32 1, i32* %23, align 4
  br label %154

154:                                              ; preds = %153, %143
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = and i32 %161, 240
  %163 = icmp eq i32 %162, 224
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 2, i32* %23, align 4
  br label %165

165:                                              ; preds = %164, %154
  %166 = load i8*, i8** %20, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = and i32 %172, 248
  %174 = icmp eq i32 %173, 240
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  store i32 3, i32* %23, align 4
  br label %176

176:                                              ; preds = %175, %165
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %23, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* %21, align 4
  store i32 %183, i32* %22, align 4
  br label %187

184:                                              ; preds = %176
  %185 = load i32, i32* %22, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %22, align 4
  br label %187

187:                                              ; preds = %184, %182
  br label %188

188:                                              ; preds = %187, %133
  br label %191

189:                                              ; preds = %99
  %190 = load i32, i32* %21, align 4
  store i32 %190, i32* %22, align 4
  br label %191

191:                                              ; preds = %189, %188
  %192 = load i32, i32* %12, align 4
  %193 = load i8*, i8** %20, align 8
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* @STREAMIN_BUFFER_SIZE, align 4
  %196 = call i32 @MultiByteToWideChar(i32 %192, i32 0, i8* %193, i32 %194, i32* %39, i32 %195)
  store i32 %196, i32* %16, align 4
  store i32* %39, i32** %9, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @CP_UTF8, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %191
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %21, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load i8*, i8** %20, align 8
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %22, align 4
  %211 = sub nsw i32 %209, %210
  %212 = call i32 @memcpy(i8* %30, i8* %208, i32 %211)
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %22, align 4
  %215 = sub nsw i32 %213, %214
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %204, %200
  br label %217

217:                                              ; preds = %216, %191
  br label %227

218:                                              ; preds = %66
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 1
  store i32 %222, i32* %16, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = bitcast i8* %225 to i32*
  store i32* %226, i32** %9, align 8
  br label %227

227:                                              ; preds = %218, %217
  %228 = load i32*, i32** %5, align 8
  %229 = load i32*, i32** %9, align 8
  %230 = load i32, i32* %16, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = call i32 @ME_InsertTextFromCursor(i32* %228, i32 0, i32* %229, i32 %230, i32* %231)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  store i32 2, i32* %19, align 4
  br label %241

238:                                              ; preds = %227
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  store i32 0, i32* %19, align 4
  br label %241

241:                                              ; preds = %238, %237, %59, %53
  %242 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %19, align 4
  switch i32 %243, label %249 [
    i32 0, label %244
    i32 2, label %246
  ]

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %244
  br i1 true, label %34, label %246

246:                                              ; preds = %245, %241
  %247 = load i32, i32* %10, align 4
  store i32 1, i32* %19, align 4
  %248 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %248)
  ret i32 %247

249:                                              ; preds = %241
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ME_StreamInFill(%struct.TYPE_7__*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @ME_InsertTextFromCursor(i32*, i32, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
