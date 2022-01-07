; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_post_data_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_post_data_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32*, i64* }

@S_OK = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@IID_nsISeekableStream = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@NS_SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"post_data = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.list*, %struct.TYPE_3__*)* @read_post_data_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_post_data_stream(i32* %0, i64 %1, %struct.list* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.list*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.list* %2, %struct.list** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @S_OK, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @S_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %256

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @nsIInputStream_Available(i32* %27, i64* %11)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i64 @NS_FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @E_FAIL, align 4
  store i32 %33, i32* %5, align 4
  br label %256

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i8* @GlobalAlloc(i32 0, i64 %36)
  store i8* %37, i8** %13, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %5, align 4
  br label %256

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @nsIInputStream_Read(i32* %43, i8* %44, i64 %45, i32* %12)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i64 @NS_FAILED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @GlobalFree(i8* %51)
  %53 = load i32, i32* @E_FAIL, align 4
  store i32 %53, i32* %5, align 4
  br label %256

54:                                               ; preds = %42
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %169

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %12, align 4
  br label %168

77:                                               ; preds = %66, %60, %57
  %78 = load i32, i32* %12, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %19, align 8
  br label %83

83:                                               ; preds = %101, %77
  %84 = load i8*, i8** %19, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = icmp ult i8* %85, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @memcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %19, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %19, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %14, align 8
  br label %104

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %19, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %19, align 8
  br label %83

104:                                              ; preds = %95, %83
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* @CP_ACP, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @MultiByteToWideChar(i32 %114, i32 0, i8* %115, i32 %121, i64* null, i32 0)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = call i64* @heap_alloc(i32 %127)
  store i64* %128, i64** %17, align 8
  %129 = load i64*, i64** %17, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %165

131:                                              ; preds = %104
  %132 = load i32, i32* @CP_ACP, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = load i64*, i64** %17, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @MultiByteToWideChar(i32 %132, i32 0, i8* %133, i32 %139, i64* %140, i32 %141)
  %143 = load i64*, i64** %17, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  store i64 0, i64* %146, align 8
  %147 = load %struct.list*, %struct.list** %8, align 8
  %148 = icmp ne %struct.list* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %131
  %150 = load i64*, i64** %17, align 8
  %151 = load %struct.list*, %struct.list** %8, align 8
  %152 = call i32 @parse_headers(i64* %150, %struct.list* %151)
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %149, %131
  %154 = load i32, i32* %16, align 4
  %155 = call i64 @SUCCEEDED(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64*, i64** %17, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  store i64* %158, i64** %160, align 8
  br label %164

161:                                              ; preds = %153
  %162 = load i64*, i64** %17, align 8
  %163 = call i32 @heap_free(i64* %162)
  br label %164

164:                                              ; preds = %161, %157
  br label %167

165:                                              ; preds = %104
  %166 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %165, %164
  br label %168

168:                                              ; preds = %167, %72
  br label %169

169:                                              ; preds = %168, %54
  %170 = load i32, i32* %16, align 4
  %171 = call i64 @FAILED(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i8*, i8** %13, align 8
  %175 = call i32 @GlobalFree(i8* %174)
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %5, align 4
  br label %256

177:                                              ; preds = %169
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @GlobalFree(i8* %181)
  store i8* null, i8** %14, align 8
  br label %209

183:                                              ; preds = %177
  %184 = load i8*, i8** %14, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = icmp ne i8* %184, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = call i8* @GlobalAlloc(i32 0, i64 %190)
  store i8* %191, i8** %20, align 8
  %192 = load i8*, i8** %20, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i8*, i8** %20, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @memcpy(i8* %195, i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %187
  %200 = load i8*, i8** %13, align 8
  %201 = call i32 @GlobalFree(i8* %200)
  %202 = load i8*, i8** %20, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %205, i32* %5, align 4
  br label %256

206:                                              ; preds = %199
  %207 = load i8*, i8** %20, align 8
  store i8* %207, i8** %14, align 8
  br label %208

208:                                              ; preds = %206, %183
  br label %209

209:                                              ; preds = %208, %180
  %210 = load i8*, i8** %14, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8*, i8** %14, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 0, i8* %216, align 1
  br label %217

217:                                              ; preds = %212, %209
  %218 = load i8*, i8** %14, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = bitcast i32** %10 to i8**
  %226 = call i64 @nsIInputStream_QueryInterface(i32* %224, i32* @IID_nsISeekableStream, i8** %225)
  store i64 %226, i64* %15, align 8
  %227 = load i64, i64* %15, align 8
  %228 = load i64, i64* @NS_OK, align 8
  %229 = icmp eq i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load i32*, i32** %10, align 8
  %233 = load i32, i32* @NS_SEEK_SET, align 4
  %234 = call i64 @nsISeekableStream_Seek(i32* %232, i32 %233, i32 0)
  store i64 %234, i64* %15, align 8
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* @NS_OK, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i32*, i32** %10, align 8
  %241 = call i32 @nsISeekableStream_Release(i32* %240)
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @nsIInputStream_AddRef(i32* %242)
  %244 = load i32*, i32** %6, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @debugstr_an(i8* %249, i32 %252)
  %254 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @S_OK, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %217, %204, %173, %50, %40, %32, %24
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i64 @nsIInputStream_Available(i32*, i64*) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i8* @GlobalAlloc(i32, i64) #1

declare dso_local i64 @nsIInputStream_Read(i32*, i8*, i64, i32*) #1

declare dso_local i32 @GlobalFree(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @parse_headers(i64*, %struct.list*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @heap_free(i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @nsIInputStream_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsISeekableStream_Seek(i32*, i32, i32) #1

declare dso_local i32 @nsISeekableStream_Release(i32*) #1

declare dso_local i32 @nsIInputStream_AddRef(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
