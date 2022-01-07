; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_init_io.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }

@MSVCRT_MAX_FILES = common dso_local global i32 0, align 4
@WX_OPEN = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@__badioinfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@WX_TEXT = common dso_local global i32 0, align 4
@FILE_TYPE_CHAR = common dso_local global i32 0, align 4
@WX_TTY = common dso_local global i32 0, align 4
@FILE_TYPE_PIPE = common dso_local global i32 0, align 4
@WX_PIPE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c":handles (%p)(%p)(%p)\0A\00", align 1
@_iob = common dso_local global %struct.TYPE_13__* null, align 8
@_IOREAD = common dso_local global i32 0, align 4
@_IOWRT = common dso_local global i32 0, align 4
@MSVCRT_stream_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msvcrt_init_io() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = call i32 @GetStartupInfoA(%struct.TYPE_12__* %1)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %84

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = bitcast i32* %32 to i64*
  store i64* %33, i64** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = udiv i64 %38, 9
  %40 = trunc i64 %39 to i32
  %41 = call i32 @min(i32 %34, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MSVCRT_MAX_FILES, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %80, %22
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WX_OPEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %2, align 4
  %62 = call %struct.TYPE_11__* @get_ioinfo_alloc_fd(i32 %61)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %3, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, @__badioinfo
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @msvcrt_set_fd(%struct.TYPE_11__* %66, i64 %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = call i32 @release_ioinfo(%struct.TYPE_11__* %73)
  br label %75

75:                                               ; preds = %72, %55, %49
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %5, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %45

83:                                               ; preds = %45
  br label %84

84:                                               ; preds = %83, %18, %0
  %85 = load i32, i32* @STDIN_FILENO, align 4
  %86 = call %struct.TYPE_11__* @get_ioinfo_alloc_fd(i32 %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %3, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WX_OPEN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %93, %84
  %100 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %101 = call i64 @GetStdHandle(i32 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @GetFileType(i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @WX_OPEN, align 4
  %107 = load i32, i32* @WX_TEXT, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 15
  %111 = load i32, i32* @FILE_TYPE_CHAR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* @WX_TTY, align 4
  br label %116

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %108, %117
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 15
  %121 = load i32, i32* @FILE_TYPE_PIPE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @WX_PIPE, align 4
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = or i32 %118, %127
  %129 = call i32 @msvcrt_set_fd(%struct.TYPE_11__* %104, i64 %105, i32 %128)
  br label %130

130:                                              ; preds = %126, %93
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = call i32 @release_ioinfo(%struct.TYPE_11__* %131)
  %133 = load i32, i32* @STDOUT_FILENO, align 4
  %134 = call %struct.TYPE_11__* @get_ioinfo_alloc_fd(i32 %133)
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %3, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @WX_OPEN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %141, %130
  %148 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %149 = call i64 @GetStdHandle(i32 %148)
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @GetFileType(i64 %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i32, i32* @WX_OPEN, align 4
  %155 = load i32, i32* @WX_TEXT, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 15
  %159 = load i32, i32* @FILE_TYPE_CHAR, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %147
  %162 = load i32, i32* @WX_TTY, align 4
  br label %164

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = or i32 %156, %165
  %167 = load i32, i32* %10, align 4
  %168 = and i32 %167, 15
  %169 = load i32, i32* @FILE_TYPE_PIPE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @WX_PIPE, align 4
  br label %174

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = or i32 %166, %175
  %177 = call i32 @msvcrt_set_fd(%struct.TYPE_11__* %152, i64 %153, i32 %176)
  br label %178

178:                                              ; preds = %174, %141
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = call i32 @release_ioinfo(%struct.TYPE_11__* %179)
  %181 = load i32, i32* @STDERR_FILENO, align 4
  %182 = call %struct.TYPE_11__* @get_ioinfo_alloc_fd(i32 %181)
  store %struct.TYPE_11__* %182, %struct.TYPE_11__** %3, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @WX_OPEN, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %178
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %226

195:                                              ; preds = %189, %178
  %196 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %197 = call i64 @GetStdHandle(i32 %196)
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %11, align 8
  %199 = call i32 @GetFileType(i64 %198)
  store i32 %199, i32* %12, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i32, i32* @WX_OPEN, align 4
  %203 = load i32, i32* @WX_TEXT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %12, align 4
  %206 = and i32 %205, 15
  %207 = load i32, i32* @FILE_TYPE_CHAR, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = load i32, i32* @WX_TTY, align 4
  br label %212

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  %214 = or i32 %204, %213
  %215 = load i32, i32* %12, align 4
  %216 = and i32 %215, 15
  %217 = load i32, i32* @FILE_TYPE_PIPE, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* @WX_PIPE, align 4
  br label %222

221:                                              ; preds = %212
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i32 [ %220, %219 ], [ 0, %221 ]
  %224 = or i32 %214, %223
  %225 = call i32 @msvcrt_set_fd(%struct.TYPE_11__* %200, i64 %201, i32 %224)
  br label %226

226:                                              ; preds = %222, %189
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = call i32 @release_ioinfo(%struct.TYPE_11__* %227)
  %229 = load i32, i32* @STDIN_FILENO, align 4
  %230 = call %struct.TYPE_14__* @get_ioinfo_nolock(i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @STDOUT_FILENO, align 4
  %234 = call %struct.TYPE_14__* @get_ioinfo_nolock(i32 %233)
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @STDERR_FILENO, align 4
  %238 = call %struct.TYPE_14__* @get_ioinfo_nolock(i32 %237)
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %232, i32 %236, i32 %240)
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_iob, align 8
  %243 = call i32 @memset(%struct.TYPE_13__* %242, i32 0, i32 12)
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %272, %226
  %245 = load i32, i32* %2, align 4
  %246 = icmp ult i32 %245, 3
  br i1 %246, label %247, label %275

247:                                              ; preds = %244
  %248 = load i32, i32* %2, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_iob, align 8
  %250 = load i32, i32* %2, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  store i32 %248, i32* %253, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_iob, align 8
  %255 = load i32, i32* %2, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  store i32* null, i32** %258, align 8
  %259 = load i32, i32* %2, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %247
  %262 = load i32, i32* @_IOREAD, align 4
  br label %265

263:                                              ; preds = %247
  %264 = load i32, i32* @_IOWRT, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi i32 [ %262, %261 ], [ %264, %263 ]
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_iob, align 8
  %268 = load i32, i32* %2, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  store i32 %266, i32* %271, align 4
  br label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %2, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %2, align 4
  br label %244

275:                                              ; preds = %244
  store i32 3, i32* @MSVCRT_stream_idx, align 4
  ret void
}

declare dso_local i32 @GetStartupInfoA(%struct.TYPE_12__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_11__* @get_ioinfo_alloc_fd(i32) #1

declare dso_local i32 @msvcrt_set_fd(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @release_ioinfo(%struct.TYPE_11__*) #1

declare dso_local i64 @GetStdHandle(i32) #1

declare dso_local i32 @GetFileType(i64) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @get_ioinfo_nolock(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
