; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_ProcessHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_ProcessHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i64, i64, i8*, i8* }

@HTTP_ADDHDR_FLAG_REQ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"--> %s: %s - 0x%08x\0A\00", align 1
@HTTP_ADDHDR_FLAG_REPLACE = common dso_local global i32 0, align 4
@HDR_ISREQUEST = common dso_local global i64 0, align 8
@HTTP_ADDHDR_FLAG_ADD_IF_NEW = common dso_local global i32 0, align 4
@ERROR_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@COALESCEFLAGS = common dso_local global i32 0, align 4
@HTTP_ADDHDR_FLAG_COALESCE_WITH_COMMA = common dso_local global i32 0, align 4
@HDR_COMMADELIMITED = common dso_local global i64 0, align 8
@HTTP_ADDHDR_FLAG_COALESCE_WITH_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"heap_realloc (%d bytes) failed\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"<-- %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i32)* @HTTP_ProcessHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_ProcessHeader(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @debugstr_w(i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @debugstr_w(i8* %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @EnterCriticalSection(i32* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_9__* %37, i8* %38, i32 0, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp uge i64 %41, 0
  br i1 %42, label %43, label %209

43:                                               ; preds = %4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %47
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HTTP_ADDHDR_FLAG_REPLACE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %43
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @HTTP_DeleteCustomHeader(%struct.TYPE_9__* %54, i64 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i64, i64* @HDR_ISREQUEST, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %77
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %76, %65
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = call i32 @HTTP_InsertCustomHeader(%struct.TYPE_9__* %82, %struct.TYPE_11__* %13)
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %81, %59, %53
  br label %241

85:                                               ; preds = %43
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HTTP_ADDHDR_FLAG_ADD_IF_NEW, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @ERROR_HTTP_INVALID_HEADER, align 4
  store i32 %91, i32* %12, align 4
  br label %241

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @COALESCEFLAGS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %208

97:                                               ; preds = %92
  store i8 0, i8* %15, align 1
  store i64 0, i64* %16, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strlenW(i8* %100)
  store i64 %101, i64* %17, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @strlenW(i8* %102)
  store i64 %103, i64* %18, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load i64, i64* @HDR_ISREQUEST, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %121

114:                                              ; preds = %97
  %115 = load i64, i64* @HDR_ISREQUEST, align 8
  %116 = xor i64 %115, -1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = and i64 %119, %116
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %114, %108
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @HTTP_ADDHDR_FLAG_COALESCE_WITH_COMMA, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  store i8 44, i8* %15, align 1
  %127 = load i64, i64* @HDR_COMMADELIMITED, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %144

132:                                              ; preds = %121
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @HTTP_ADDHDR_FLAG_COALESCE_WITH_SEMICOLON, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  store i8 59, i8* %15, align 1
  %138 = load i64, i64* @HDR_COMMADELIMITED, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = or i64 %141, %138
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %137, %132
  br label %144

144:                                              ; preds = %143, %126
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = add i64 %145, %146
  %148 = load i8, i8* %15, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sgt i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 2, i32 0
  %153 = sext i32 %152 to i64
  %154 = add i64 %147, %153
  store i64 %154, i64* %16, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = add i64 %158, 1
  %160 = mul i64 %159, 1
  %161 = call i8* @heap_realloc(i8* %157, i64 %160)
  store i8* %161, i8** %14, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %202

164:                                              ; preds = %144
  %165 = load i8*, i8** %14, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i8, i8* %15, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %164
  %172 = load i8, i8* %15, align 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 %172, i8* %177, align 1
  %178 = load i64, i64* %17, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %17, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* %17, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8 32, i8* %184, align 1
  %185 = load i64, i64* %17, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %17, align 8
  br label %187

187:                                              ; preds = %171, %164
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %17, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %18, align 8
  %195 = mul i64 %194, 1
  %196 = call i32 @memcpy(i8* %192, i8* %193, i64 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8 0, i8* %201, align 1
  br label %207

202:                                              ; preds = %144
  %203 = load i64, i64* %16, align 8
  %204 = add i64 %203, 1
  %205 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %204)
  %206 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %202, %187
  br label %241

208:                                              ; preds = %92
  br label %209

209:                                              ; preds = %208, %4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %210, %212
  %214 = load i32, i32* @HTTP_ADDHDR_FLAG_REPLACE, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @ERROR_HTTP_HEADER_NOT_FOUND, align 4
  store i32 %217, i32* %12, align 4
  br label %241

218:                                              ; preds = %209
  %219 = load i8*, i8** %7, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %240

221:                                              ; preds = %218
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  store i8* %222, i8** %223, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  store i8* %224, i8** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %221
  %233 = load i64, i64* @HDR_ISREQUEST, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = or i64 %235, %233
  store i64 %236, i64* %234, align 8
  br label %237

237:                                              ; preds = %232, %221
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = call i32 @HTTP_InsertCustomHeader(%struct.TYPE_9__* %238, %struct.TYPE_11__* %19)
  store i32 %239, i32* %12, align 4
  br label %241

240:                                              ; preds = %218
  br label %241

241:                                              ; preds = %240, %237, %216, %207, %90, %84
  %242 = load i32, i32* %12, align 4
  %243 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = call i32 @LeaveCriticalSection(i32* %245)
  %247 = load i32, i32* %12, align 4
  ret i32 %247
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @HTTP_DeleteCustomHeader(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @HTTP_InsertCustomHeader(%struct.TYPE_9__*, %struct.TYPE_11__*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i8* @heap_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
