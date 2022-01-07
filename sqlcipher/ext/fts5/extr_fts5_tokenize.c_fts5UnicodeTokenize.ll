; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeTokenize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeTokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i32 (i8*, i32, i8*, i32, i32, i32)*)* @fts5UnicodeTokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5UnicodeTokenize(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 (i8*, i32, i8*, i32, i32, i32)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, i32, i8*, i32, i32, i32)*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 (i8*, i32, i8*, i32, i32, i32)* %5, i32 (i8*, i32, i8*, i32, i32, i32)** %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %13, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %17, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %18, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %19, align 4
  %42 = load i8*, i8** %18, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sub nsw i32 %43, 6
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %20, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @UNUSED_PARAM(i32 %47)
  br label %49

49:                                               ; preds = %231, %6
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %244

53:                                               ; preds = %49
  %54 = load i8*, i8** %18, align 8
  store i8* %54, i8** %22, align 8
  br label %55

55:                                               ; preds = %53, %101
  %56 = load i8*, i8** %17, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %245

60:                                               ; preds = %55
  %61 = load i8*, i8** %17, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i8*, i8** %17, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %23, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %21, align 8
  %76 = call i32 @READ_UTF8(i8* %73, i8* %74, i64 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %78 = load i64, i64* %21, align 8
  %79 = call i64 @fts5UnicodeIsAlnum(%struct.TYPE_3__* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %171

82:                                               ; preds = %66
  br label %101

83:                                               ; preds = %60
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i8*, i8** %17, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %23, align 4
  br label %197

98:                                               ; preds = %83
  %99 = load i8*, i8** %17, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %17, align 8
  br label %101

101:                                              ; preds = %98, %82
  br label %55

102:                                              ; No predecessors!
  br label %103

103:                                              ; preds = %224, %102
  %104 = load i8*, i8** %17, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ult i8* %104, %105
  br i1 %106, label %107, label %231

107:                                              ; preds = %103
  %108 = load i8*, i8** %22, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = icmp ugt i8* %108, %109
  br i1 %110, label %111, label %151

111:                                              ; preds = %107
  %112 = load i32, i32* %19, align 4
  %113 = mul nsw i32 %112, 2
  %114 = call i8* @sqlite3_malloc64(i32 %113)
  store i8* %114, i8** %18, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %118, i32* %14, align 4
  br label %245

119:                                              ; preds = %111
  %120 = load i8*, i8** %18, align 8
  %121 = load i8*, i8** %22, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %121 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = getelementptr inbounds i8, i8* %120, i64 %127
  store i8* %128, i8** %22, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @memcpy(i8* %129, i8* %132, i32 %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @sqlite3_free(i8* %137)
  %139 = load i8*, i8** %18, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %19, align 4
  %143 = mul nsw i32 %142, 2
  store i32 %143, i32* %19, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sub nsw i32 %147, 6
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8* %150, i8** %20, align 8
  br label %151

151:                                              ; preds = %119, %107
  %152 = load i8*, i8** %17, align 8
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 128
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %151
  %158 = load i8*, i8** %17, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = load i64, i64* %21, align 8
  %161 = call i32 @READ_UTF8(i8* %158, i8* %159, i64 %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %163 = load i64, i64* %21, align 8
  %164 = call i64 @fts5UnicodeIsAlnum(%struct.TYPE_3__* %162, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %157
  %167 = load i64, i64* %21, align 8
  %168 = call i64 @sqlite3Fts5UnicodeIsdiacritic(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %166, %157
  br label %171

171:                                              ; preds = %170, %81
  %172 = load i64, i64* %21, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @sqlite3Fts5UnicodeFold(i64 %172, i32 %175)
  store i64 %176, i64* %21, align 8
  %177 = load i64, i64* %21, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i8*, i8** %22, align 8
  %181 = load i64, i64* %21, align 8
  %182 = call i32 @WRITE_UTF8(i8* %180, i64 %181)
  br label %183

183:                                              ; preds = %179, %171
  br label %185

184:                                              ; preds = %166
  br label %231

185:                                              ; preds = %183
  br label %224

186:                                              ; preds = %151
  %187 = load i8*, i8** %15, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %231

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %91
  %198 = load i8*, i8** %17, align 8
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp sge i32 %200, 65
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load i8*, i8** %17, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp sle i32 %205, 90
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load i8*, i8** %17, align 8
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = add nsw i32 %210, 32
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %22, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %22, align 8
  store i8 %212, i8* %213, align 1
  br label %220

215:                                              ; preds = %202, %197
  %216 = load i8*, i8** %17, align 8
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %22, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %22, align 8
  store i8 %217, i8* %218, align 1
  br label %220

220:                                              ; preds = %215, %207
  %221 = load i8*, i8** %17, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %17, align 8
  br label %223

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223, %185
  %225 = load i8*, i8** %17, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %24, align 4
  br label %103

231:                                              ; preds = %195, %184, %103
  %232 = load i32 (i8*, i32, i8*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32, i32, i32)** %12, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = load i8*, i8** %22, align 8
  %236 = load i8*, i8** %18, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %24, align 4
  %243 = call i32 %232(i8* %233, i32 0, i8* %234, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %14, align 4
  br label %49

244:                                              ; preds = %49
  br label %245

245:                                              ; preds = %244, %117, %59
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* @SQLITE_DONE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* @SQLITE_OK, align 4
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %249, %245
  %252 = load i32, i32* %14, align 4
  ret i32 %252
}

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i32 @READ_UTF8(i8*, i8*, i64) #1

declare dso_local i64 @fts5UnicodeIsAlnum(%struct.TYPE_3__*, i64) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3Fts5UnicodeIsdiacritic(i64) #1

declare dso_local i64 @sqlite3Fts5UnicodeFold(i64, i32) #1

declare dso_local i32 @WRITE_UTF8(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
