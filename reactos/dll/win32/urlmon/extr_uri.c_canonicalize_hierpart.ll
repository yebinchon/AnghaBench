; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_hierpart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_hierpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i32, i64, i64 }

@URL_SCHEME_WILDCARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"Here\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@Uri_HOST_UNKNOWN = common dso_local global i32 0, align 4
@URI_DISPLAY_NO_ABSOLUTE_URI = common dso_local global i32 0, align 4
@default_ports = common dso_local global %struct.TYPE_13__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i8*)* @canonicalize_hierpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @canonicalize_hierpart(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %186

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %186

31:                                               ; preds = %26, %21, %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %51, %41, %36
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @FIXME(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 47, i8* %76, align 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 47, i8* %82, align 1
  br label %83

83:                                               ; preds = %68, %65
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 2
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %51, %46
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @canonicalize_authority(%struct.TYPE_11__* %89, %struct.TYPE_12__* %90, i64 %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i8*, i8** @FALSE, align 8
  store i8* %96, i8** %5, align 8
  br label %290

97:                                               ; preds = %88
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @canonicalize_path_opaque(%struct.TYPE_11__* %113, %struct.TYPE_12__* %114, i64 %115, i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = load i8*, i8** @FALSE, align 8
  store i8* %120, i8** %5, align 8
  br label %290

121:                                              ; preds = %112
  br label %185

122:                                              ; preds = %107, %97
  %123 = load i8*, i8** %9, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %122
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %161

153:                                              ; preds = %131
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  br label %161

161:                                              ; preds = %153, %152
  %162 = phi i8* [ null, %152 ], [ %160, %153 ]
  %163 = call i32 @canonicalize_path_hierarchical(i32 %134, i32 %137, i64 %140, i32 %145, i64 %146, i32 %149, i8* %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %184, label %176

176:                                              ; preds = %161
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  store i64 -1, i64* %183, align 8
  br label %184

184:                                              ; preds = %181, %176, %161
  br label %185

185:                                              ; preds = %184, %121
  br label %263

186:                                              ; preds = %26, %16
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  store i32 -1, i32* %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  store i32 -1, i32* %190, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 17
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 6
  store i32 -1, i32* %194, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 16
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @Uri_HOST_UNKNOWN, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 15
  store i32 %197, i32* %199, align 8
  %200 = load i8*, i8** @FALSE, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 12
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 7
  store i32 -1, i32* %204, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 14
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 8
  store i32 -1, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 9
  store i32 -1, i32* %210, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @is_hierarchical_scheme(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %253

216:                                              ; preds = %186
  %217 = load i32, i32* @URI_DISPLAY_NO_ABSOLUTE_URI, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 13
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  store i64 0, i64* %11, align 8
  br label %222

222:                                              ; preds = %249, %216
  %223 = load i64, i64* %11, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** @default_ports, align 8
  %225 = call i64 @ARRAY_SIZE(%struct.TYPE_13__* %224)
  %226 = icmp ult i64 %223, %225
  br i1 %226, label %227, label %252

227:                                              ; preds = %222
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** @default_ports, align 8
  %232 = load i64, i64* %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %230, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %227
  %238 = load i8*, i8** @TRUE, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 12
  store i8* %238, i8** %240, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** @default_ports, align 8
  %242 = load i64, i64* %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 11
  store i32 %245, i32* %247, align 8
  br label %252

248:                                              ; preds = %227
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %11, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %11, align 8
  br label %222

252:                                              ; preds = %237, %222
  br label %253

253:                                              ; preds = %252, %186
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %256 = load i64, i64* %8, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = call i32 @canonicalize_path_opaque(%struct.TYPE_11__* %254, %struct.TYPE_12__* %255, i64 %256, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %253
  %261 = load i8*, i8** @FALSE, align 8
  store i8* %261, i8** %5, align 8
  br label %290

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262, %185
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp ugt i64 %266, -1
  br i1 %267, label %268, label %285

268:                                              ; preds = %263
  %269 = load i8*, i8** %9, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %268
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @find_file_extension(i8* %278, i32 %281)
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 10
  store i32 %282, i32* %284, align 4
  br label %288

285:                                              ; preds = %268, %263
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 10
  store i32 -1, i32* %287, align 4
  br label %288

288:                                              ; preds = %285, %271
  %289 = load i8*, i8** @TRUE, align 8
  store i8* %289, i8** %5, align 8
  br label %290

290:                                              ; preds = %288, %260, %119, %95
  %291 = load i8*, i8** %5, align 8
  ret i8* %291
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @canonicalize_authority(%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i8*) #1

declare dso_local i32 @canonicalize_path_opaque(%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i8*) #1

declare dso_local i32 @canonicalize_path_hierarchical(i32, i32, i64, i32, i64, i32, i8*) #1

declare dso_local i64 @is_hierarchical_scheme(i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @find_file_extension(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
