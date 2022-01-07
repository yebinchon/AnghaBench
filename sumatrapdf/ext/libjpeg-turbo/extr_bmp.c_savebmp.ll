; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_bmp.c_savebmp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_bmp.c_savebmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i32)* }
%struct.my_error_mgr = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*, i32)*, i32*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)*, i32* }

@TJ_NUMPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"savebmp(): Invalid argument\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"savebmp(): Cannot open output file\00", align 1
@my_error_exit = common dso_local global i32 0, align 4
@my_output_message = common dso_local global i32 0, align 4
@TJPF_GRAY = common dso_local global i32 0, align 4
@JCS_GRAYSCALE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@DSTATE_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"savebmp(): Could not initialize bitmap writer\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"savebmp(): Could not initialize PPM writer\00", align 1
@TJPF_RGB = common dso_local global i32 0, align 4
@tjPixelSize = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savebmp(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.jpeg_decompress_struct, align 8
  %17 = alloca %struct.my_error_mgr, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %19, align 8
  store i8* null, i8** %20, align 8
  %25 = call i32 @memset(%struct.jpeg_decompress_struct* %16, i32 0, i32 64)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @TJ_NUMPF, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37, %34, %31, %28, %6
  %45 = call i32 @_throw(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %48, i32** %19, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @_throwunix(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %17, i32 0, i32 1
  %54 = call i32 @jpeg_std_error(%struct.TYPE_11__* %53)
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 11
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @my_error_exit, align 4
  %57 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %17, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @my_output_message, align 4
  %60 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %17, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %17, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @setjmp(i32 %63) #3
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 -1, i32* %13, align 4
  br label %219

67:                                               ; preds = %52
  %68 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %16)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @TJPF_GRAY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @JCS_GRAYSCALE, align 4
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 10
  store i32 %75, i32* %76, align 4
  br label %82

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 1
  store i32 3, i32* %78, align 4
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  store i32 3, i32* %79, align 8
  %80 = load i32, i32* @JCS_RGB, align 4
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 10
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @DSTATE_READY, align 4
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 9
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 5
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 4
  store i32 1, i32* %90, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @strrchr(i8* %91, i8 signext 46)
  store i8* %92, i8** %20, align 8
  %93 = load i8*, i8** %20, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %82
  %96 = load i8*, i8** %20, align 8
  %97 = call i32 @strcasecmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = call %struct.TYPE_10__* @jinit_write_bmp(%struct.jpeg_decompress_struct* %16, i32 0)
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %18, align 8
  %101 = icmp eq %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @_throw(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  br label %111

105:                                              ; preds = %95, %82
  %106 = call %struct.TYPE_10__* @jinit_write_ppm(%struct.jpeg_decompress_struct* %16)
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %18, align 8
  %107 = icmp eq %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @_throw(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32*, i32** %19, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)** %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %119 = call i32 %117(%struct.jpeg_decompress_struct* %16, %struct.TYPE_10__* %118)
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32 (i32)*, i32 (i32)** %122, align 8
  %124 = ptrtoint %struct.jpeg_decompress_struct* %16 to i32
  %125 = call i32 %123(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @TJPF_GRAY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %15, align 4
  br label %133

131:                                              ; preds = %111
  %132 = load i32, i32* @TJPF_RGB, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = load i32*, i32** @tjPixelSize, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %201, %133
  %140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %145, label %213

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %198, %145
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %201

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %155, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %153
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %24, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sub nsw i32 %166, 1
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %14, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %163, i64 %172
  store i8* %173, i8** %23, align 8
  br label %183

174:                                              ; preds = %153
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %14, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %175, i64 %181
  store i8* %182, i8** %23, align 8
  br label %183

183:                                              ; preds = %174, %162
  %184 = load i8*, i8** %23, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %22, align 4
  %197 = call i32 @pixelconvert(i8* %184, i32 %185, i32 %186, i32 %193, i32 %194, i32 0, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %183
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  br label %149

201:                                              ; preds = %149
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*, i32)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*, i32)** %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %206 = load i32, i32* %22, align 4
  %207 = call i32 %204(%struct.jpeg_decompress_struct* %16, %struct.TYPE_10__* %205, i32 %206)
  %208 = load i32, i32* %22, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %209
  store i64 %212, i64* %210, align 8
  br label %139

213:                                              ; preds = %139
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_10__*)** %215, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %218 = call i32 %216(%struct.jpeg_decompress_struct* %16, %struct.TYPE_10__* %217)
  br label %219

219:                                              ; preds = %213, %66
  %220 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %16)
  %221 = load i32*, i32** %19, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32*, i32** %19, align 8
  %225 = call i32 @fclose(i32* %224)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, i32* %13, align 4
  ret i32 %227
}

declare dso_local i32 @memset(%struct.jpeg_decompress_struct*, i32, i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @_throwunix(i8*) #1

declare dso_local i32 @jpeg_std_error(%struct.TYPE_11__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @jinit_write_bmp(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local %struct.TYPE_10__* @jinit_write_ppm(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @pixelconvert(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
