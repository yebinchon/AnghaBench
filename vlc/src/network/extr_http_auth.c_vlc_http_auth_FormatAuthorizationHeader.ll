; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_FormatAuthorizationHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_FormatAuthorizationHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MD5-sess\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Digest Access Authentication: Unknown algorithm '%s'\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"Digest username=\22%s\22, realm=\22%s\22, nonce=\22%s\22, uri=\22%s\22, response=\22%s\22, %s%s%s%s%s%s%s%s%s%s%s%s%s=\22%08x\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"algorithm=\22\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"cnonce=\22\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"opaque=\22\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"qop=\22\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"uglyhack\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Basic %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_auth_FormatAuthorizationHeader(i32* %0, %struct.TYPE_4__* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %205

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @msg_Err(i32* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %226

44:                                               ; preds = %32, %26, %21
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @free(i8* %57)
  %59 = call i8* (...) @GenerateCnonce()
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %226

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @AuthDigest(i32* %73, %struct.TYPE_4__* %74, i8* %75, i8* %76, i8* %77, i8* %78)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %226

83:                                               ; preds = %68
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i8*, i8** %10, align 8
  br label %96

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %95 ]
  %98 = load i8*, i8** %14, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  br label %114

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i8* [ %112, %109 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %113 ]
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %114
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %114
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i8* [ %135, %132 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %136 ]
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %137
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  br label %160

159:                                              ; preds = %137
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8* [ %158, %155 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %159 ]
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %160
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  br label %183

182:                                              ; preds = %160
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i8* [ %181, %178 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %182 ]
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %13, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %87, i32 %90, i8* %97, i8* %98, i8* %104, i8* %115, i8* %121, i8* %127, i8* %138, i8* %144, i8* %150, i8* %161, i8* %167, i8* %173, i8* %184, i8* %190, i8* %196, i64 %199)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %183
  br label %226

204:                                              ; preds = %183
  br label %225

205:                                              ; preds = %6
  %206 = load i8*, i8** %11, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %206, i8* %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %226

212:                                              ; preds = %205
  %213 = load i8*, i8** %14, align 8
  %214 = call i8* @vlc_b64_encode(i8* %213)
  store i8* %214, i8** %15, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %226

218:                                              ; preds = %212
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %226

224:                                              ; preds = %218
  br label %225

225:                                              ; preds = %224, %204
  br label %226

226:                                              ; preds = %225, %223, %217, %211, %203, %82, %66, %38
  %227 = load i8*, i8** %14, align 8
  %228 = call i32 @free(i8* %227)
  %229 = load i8*, i8** %15, align 8
  %230 = call i32 @free(i8* %229)
  %231 = load i8*, i8** %13, align 8
  ret i8* %231
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @GenerateCnonce(...) #1

declare dso_local i8* @AuthDigest(i32*, %struct.TYPE_4__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i8* @vlc_b64_encode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
