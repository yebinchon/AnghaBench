; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec_load_kernel.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec_load_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.zero_page = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i64, i32, i64, i64, i32, i32, i64, i64 }

@lowmem = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BASE_ZEROPAGE = common dso_local global i64 0, align 8
@BASE_CMDLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@HDRS = common dso_local global i64 0, align 8
@BASE_KERNEL = common dso_local global i64 0, align 8
@kernel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @kexec_load_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_load_kernel(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.zero_page*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 0), align 8
  %16 = load i64, i64* @BASE_ZEROPAGE, align 8
  %17 = add i64 %16, 112
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @BASE_ZEROPAGE, align 8
  %21 = add i64 %20, 112
  %22 = load i64, i64* @BASE_CMDLINE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  store i32 -1, i32* %3, align 4
  br label %305

25:                                               ; preds = %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 1), align 8
  %27 = load i64, i64* @BASE_ZEROPAGE, align 8
  %28 = add i64 %26, %27
  %29 = inttoptr i64 %28 to %struct.zero_page*
  store %struct.zero_page* %29, %struct.zero_page** %13, align 8
  %30 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %31 = ptrtoint %struct.zero_page* %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @memset(i8* %32, i8 signext 0, i32 112)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %305

38:                                               ; preds = %25
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* @SEEK_END, align 4
  %41 = call i32 @fseek(i32* %39, i64 0, i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = call i64 @ftell(i32* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %44, 501
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @fclose(i32* %47)
  store i32 -1, i32* %3, align 4
  br label %305

49:                                               ; preds = %38
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @fseek(i32* %50, i64 497, i32 %51)
  %53 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %54 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %53, i32 0, i32 4
  %55 = ptrtoint %struct.TYPE_5__* %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @fread(i8* %56, i32 1, i64 88, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @fclose(i32* %61)
  store i32 -1, i32* %3, align 4
  br label %305

63:                                               ; preds = %49
  %64 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %65 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load volatile i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %63
  %70 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %71 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load volatile i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 43605
  br i1 %74, label %111, label %75

75:                                               ; preds = %69
  %76 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %77 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load volatile i64, i64* %78, align 8
  %80 = load i64, i64* @HDRS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %111, label %82

82:                                               ; preds = %75
  %83 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %84 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load volatile i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 522
  br i1 %87, label %111, label %88

88:                                               ; preds = %82
  %89 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %90 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load volatile i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %88
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %98 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load volatile i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  %102 = mul nsw i32 %101, 512
  %103 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %104 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load volatile i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 16
  %108 = add nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %96, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %95, %88, %82, %75, %69, %63
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @fclose(i32* %112)
  store i32 -1, i32* %3, align 4
  br label %305

114:                                              ; preds = %95
  %115 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %116 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load volatile i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  %120 = mul nsw i32 %119, 512
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %6, align 8
  %124 = sub i64 %122, %123
  store i64 %124, i64* %7, align 8
  %125 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %126 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 6
  %128 = load volatile i64, i64* %127, align 8
  %129 = call i64 @ALIGNUP(i64 %128, i32 4096)
  store i64 %129, i64* %8, align 8
  %130 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %131 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 13
  %133 = load volatile i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %114
  %136 = load i64, i64* @BASE_KERNEL, align 8
  %137 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %138 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  %140 = load volatile i32, i32* %139, align 8
  %141 = call i64 @ALIGNUP(i64 %136, i32 %140)
  br label %147

142:                                              ; preds = %114
  %143 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %144 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load volatile i64, i64* %145, align 8
  br label %147

147:                                              ; preds = %142, %135
  %148 = phi i64 [ %141, %135 ], [ %146, %142 ]
  store i64 %148, i64* %9, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* @BASE_KERNEL, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %162, label %152

152:                                              ; preds = %147
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = add i64 %157, %158
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 0), align 8
  %161 = icmp ugt i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156, %152, %147
  %163 = load i32*, i32** %14, align 8
  %164 = call i32 @fclose(i32* %163)
  store i32 -1, i32* %3, align 4
  br label %305

165:                                              ; preds = %156
  %166 = load i32*, i32** %14, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i32, i32* @SEEK_SET, align 4
  %169 = call i32 @fseek(i32* %166, i64 %167, i32 %168)
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 1), align 8
  %171 = load i64, i64* %9, align 8
  %172 = add i64 %170, %171
  %173 = inttoptr i64 %172 to i8*
  %174 = load i64, i64* %7, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @fread(i8* %173, i32 1, i64 %174, i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %165
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @fclose(i32* %179)
  store i32 -1, i32* %3, align 4
  br label %305

181:                                              ; preds = %165
  %182 = load i32*, i32** %14, align 8
  %183 = call i32 @fclose(i32* %182)
  %184 = load i8*, i8** %5, align 8
  %185 = call i64 @strlen(i8* %184)
  store i64 %185, i64* %12, align 8
  %186 = load i64, i64* %12, align 8
  %187 = add i64 %186, 1
  %188 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %189 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 9
  %191 = load volatile i64, i64* %190, align 8
  %192 = icmp ugt i64 %187, %191
  br i1 %192, label %200, label %193

193:                                              ; preds = %181
  %194 = load i64, i64* @BASE_CMDLINE, align 8
  %195 = load i64, i64* %12, align 8
  %196 = add i64 %195, 1
  %197 = add i64 %194, %196
  %198 = load i64, i64* %9, align 8
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %193, %181
  store i32 -1, i32* %3, align 4
  br label %305

201:                                              ; preds = %193
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 1), align 8
  %203 = load i64, i64* @BASE_CMDLINE, align 8
  %204 = add i64 %202, %203
  %205 = inttoptr i64 %204 to i8*
  %206 = load i8*, i8** %5, align 8
  %207 = load i64, i64* %12, align 8
  %208 = call i32 @memcpy(i8* %205, i8* %206, i64 %207)
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 1), align 8
  %210 = load i64, i64* @BASE_CMDLINE, align 8
  %211 = add i64 %209, %210
  %212 = load i64, i64* %12, align 8
  %213 = add i64 %211, %212
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @memset(i8* %214, i8 signext 0, i32 1)
  %216 = load i64, i64* @BASE_CMDLINE, align 8
  %217 = trunc i64 %216 to i32
  %218 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %219 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 10
  store volatile i32 %217, i32* %220, align 8
  %221 = load i64, i64* @BASE_CMDLINE, align 8
  %222 = lshr i64 %221, 32
  %223 = trunc i64 %222 to i32
  %224 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %225 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %224, i32 0, i32 0
  store volatile i32 %223, i32* %225, align 8
  %226 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %227 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 12
  store volatile i64 0, i64* %228, align 8
  %229 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %230 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 11
  store volatile i32 13, i32* %231, align 4
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 0), align 8
  %233 = sub i64 %232, 1048576
  %234 = lshr i64 %233, 10
  store i64 %234, i64* %10, align 8
  %235 = load i64, i64* %10, align 8
  %236 = icmp ugt i64 %235, 4294967295
  br i1 %236, label %237, label %238

237:                                              ; preds = %201
  br label %241

238:                                              ; preds = %201
  %239 = load i64, i64* %10, align 8
  %240 = trunc i64 %239 to i32
  br label %241

241:                                              ; preds = %238, %237
  %242 = phi i32 [ -1, %237 ], [ %240, %238 ]
  %243 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %244 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %243, i32 0, i32 1
  store volatile i32 %242, i32* %244, align 4
  %245 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %246 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %245, i32 0, i32 3
  %247 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 4
  %250 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %251 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %250, i32 0, i32 3
  %252 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  store i32 654336, i32* %254, align 4
  %255 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %256 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %255, i32 0, i32 3
  %257 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  store i32 1, i32* %259, align 4
  %260 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %261 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %260, i32 0, i32 3
  %262 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  store i32 1048576, i32* %264, align 4
  %265 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lowmem, i32 0, i32 0), align 8
  %266 = sub i64 %265, 1048576
  %267 = trunc i64 %266 to i32
  %268 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %269 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %268, i32 0, i32 3
  %270 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  store i32 %267, i32* %272, align 4
  %273 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %274 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %273, i32 0, i32 3
  %275 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i64 1
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  store i32 1, i32* %277, align 4
  %278 = call i32 (...) @xh_vm_get_highmem_size()
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %241
  %281 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %282 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %281, i32 0, i32 2
  store volatile i32 2, i32* %282, align 8
  br label %302

283:                                              ; preds = %241
  %284 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %285 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %284, i32 0, i32 3
  %286 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 2
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  store i32 0, i32* %288, align 4
  %289 = call i32 (...) @xh_vm_get_highmem_size()
  %290 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %291 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %290, i32 0, i32 3
  %292 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 2
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  store i32 %289, i32* %294, align 4
  %295 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %296 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %295, i32 0, i32 3
  %297 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 2
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 2
  store i32 1, i32* %299, align 4
  %300 = load %struct.zero_page*, %struct.zero_page** %13, align 8
  %301 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %300, i32 0, i32 2
  store volatile i32 3, i32* %301, align 8
  br label %302

302:                                              ; preds = %283, %280
  %303 = load i64, i64* %9, align 8
  store i64 %303, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kernel, i32 0, i32 0), align 8
  %304 = load i64, i64* %8, align 8
  store i64 %304, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kernel, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %305

305:                                              ; preds = %302, %200, %178, %162, %111, %60, %46, %37, %24
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ALIGNUP(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @xh_vm_get_highmem_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
