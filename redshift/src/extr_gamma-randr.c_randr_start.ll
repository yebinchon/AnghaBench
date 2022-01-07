; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_start.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_24__*, i32, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Screen %i could not be found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"`%s' returned error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RANDR Get Screen Resources Current\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"RANDR Get CRTC Gamma Size\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Gamma ramp size too small: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"RANDR Get CRTC Gamma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @randr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randr_start(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @xcb_get_setup(i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call { i64, %struct.TYPE_23__* } @xcb_setup_roots_iterator(i32* %37)
  %39 = bitcast %struct.TYPE_25__* %7 to { i64, %struct.TYPE_23__* }*
  %40 = getelementptr inbounds { i64, %struct.TYPE_23__* }, { i64, %struct.TYPE_23__* }* %39, i32 0, i32 0
  %41 = extractvalue { i64, %struct.TYPE_23__* } %38, 0
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds { i64, %struct.TYPE_23__* }, { i64, %struct.TYPE_23__* }* %39, i32 0, i32 1
  %43 = extractvalue { i64, %struct.TYPE_23__* } %38, 1
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %42, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 5
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %45, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %61, %32
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 5
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %58, align 8
  br label %64

59:                                               ; preds = %50
  %60 = call i32 @xcb_screen_next(%struct.TYPE_25__* %7)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %46

64:                                               ; preds = %54, %46
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = icmp eq %struct.TYPE_23__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* %71, i32 %72)
  store i32 -1, i32* %2, align 4
  br label %315

74:                                               ; preds = %64
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @xcb_randr_get_screen_resources_current(i32 %77, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call %struct.TYPE_26__* @xcb_randr_get_screen_resources_current_reply(i32 %86, i32 %87, %struct.TYPE_27__** %4)
  store %struct.TYPE_26__* %88, %struct.TYPE_26__** %10, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %90 = icmp ne %struct.TYPE_27__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %74
  %92 = load i32, i32* @stderr, align 4
  %93 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  store i32 -1, i32* %2, align 4
  br label %315

98:                                               ; preds = %74
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.TYPE_24__* @calloc(i32 %106, i32 4)
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 3
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %109, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %111, align 8
  %113 = icmp eq %struct.TYPE_24__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %98
  %115 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  store i32 -1, i32* %2, align 4
  br label %315

118:                                              ; preds = %98
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %120 = call i32* @xcb_randr_get_screen_resources_current_crtcs(%struct.TYPE_26__* %119)
  store i32* %120, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %140, %118
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  store i32 %132, i32* %139, align 8
  br label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %145 = call i32 @free(%struct.TYPE_26__* %144)
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %311, %143
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %314

152:                                              ; preds = %146
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %14, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @xcb_randr_get_crtc_gamma_size(i32 %163, i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call %struct.TYPE_26__* @xcb_randr_get_crtc_gamma_size_reply(i32 %168, i32 %169, %struct.TYPE_27__** %4)
  store %struct.TYPE_26__* %170, %struct.TYPE_26__** %16, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %172 = icmp ne %struct.TYPE_27__* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %152
  %174 = load i32, i32* @stderr, align 4
  %175 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  store i32 -1, i32* %2, align 4
  br label %315

180:                                              ; preds = %152
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  store i32 %184, i32* %191, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %193 = call i32 @free(%struct.TYPE_26__* %192)
  %194 = load i32, i32* %17, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %180
  %197 = load i32, i32* @stderr, align 4
  %198 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32, i32* %17, align 4
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* %198, i32 %199)
  store i32 -1, i32* %2, align 4
  br label %315

201:                                              ; preds = %180
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @xcb_randr_get_crtc_gamma(i32 %204, i32 %205)
  store i32 %206, i32* %18, align 4
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = call %struct.TYPE_26__* @xcb_randr_get_crtc_gamma_reply(i32 %209, i32 %210, %struct.TYPE_27__** %4)
  store %struct.TYPE_26__* %211, %struct.TYPE_26__** %19, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %213 = icmp ne %struct.TYPE_27__* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %201
  %215 = load i32, i32* @stderr, align 4
  %216 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  store i32 -1, i32* %2, align 4
  br label %315

221:                                              ; preds = %201
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %223 = call i32* @xcb_randr_get_crtc_gamma_red(%struct.TYPE_26__* %222)
  store i32* %223, i32** %20, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %225 = call i32* @xcb_randr_get_crtc_gamma_green(%struct.TYPE_26__* %224)
  store i32* %225, i32** %21, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %227 = call i32* @xcb_randr_get_crtc_gamma_blue(%struct.TYPE_26__* %226)
  store i32* %227, i32** %22, align 8
  %228 = load i32, i32* %17, align 4
  %229 = mul i32 3, %228
  %230 = zext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = trunc i64 %231 to i32
  %233 = call i32* @malloc(i32 %232)
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  store i32* %233, i32** %240, align 8
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %221
  %251 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %253 = call i32 @free(%struct.TYPE_26__* %252)
  store i32 -1, i32* %2, align 4
  br label %315

254:                                              ; preds = %221
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %17, align 4
  %264 = mul i32 0, %263
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32*, i32** %20, align 8
  %268 = load i32, i32* %17, align 4
  %269 = zext i32 %268 to i64
  %270 = mul i64 %269, 4
  %271 = trunc i64 %270 to i32
  %272 = call i32 @memcpy(i32* %266, i32* %267, i32 %271)
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = mul i32 1, %281
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32*, i32** %21, align 8
  %286 = load i32, i32* %17, align 4
  %287 = zext i32 %286 to i64
  %288 = mul i64 %287, 4
  %289 = trunc i64 %288 to i32
  %290 = call i32 @memcpy(i32* %284, i32* %285, i32 %289)
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %17, align 4
  %300 = mul i32 2, %299
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32*, i32** %22, align 8
  %304 = load i32, i32* %17, align 4
  %305 = zext i32 %304 to i64
  %306 = mul i64 %305, 4
  %307 = trunc i64 %306 to i32
  %308 = call i32 @memcpy(i32* %302, i32* %303, i32 %307)
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %310 = call i32 @free(%struct.TYPE_26__* %309)
  br label %311

311:                                              ; preds = %254
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %146

314:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %315

315:                                              ; preds = %314, %250, %214, %196, %173, %114, %91, %69
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32* @xcb_get_setup(i32) #1

declare dso_local { i64, %struct.TYPE_23__* } @xcb_setup_roots_iterator(i32*) #1

declare dso_local i32 @xcb_screen_next(%struct.TYPE_25__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @xcb_randr_get_screen_resources_current(i32, i32) #1

declare dso_local %struct.TYPE_26__* @xcb_randr_get_screen_resources_current_reply(i32, i32, %struct.TYPE_27__**) #1

declare dso_local %struct.TYPE_24__* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @xcb_randr_get_screen_resources_current_crtcs(%struct.TYPE_26__*) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

declare dso_local i32 @xcb_randr_get_crtc_gamma_size(i32, i32) #1

declare dso_local %struct.TYPE_26__* @xcb_randr_get_crtc_gamma_size_reply(i32, i32, %struct.TYPE_27__**) #1

declare dso_local i32 @xcb_randr_get_crtc_gamma(i32, i32) #1

declare dso_local %struct.TYPE_26__* @xcb_randr_get_crtc_gamma_reply(i32, i32, %struct.TYPE_27__**) #1

declare dso_local i32* @xcb_randr_get_crtc_gamma_red(%struct.TYPE_26__*) #1

declare dso_local i32* @xcb_randr_get_crtc_gamma_green(%struct.TYPE_26__*) #1

declare dso_local i32* @xcb_randr_get_crtc_gamma_blue(%struct.TYPE_26__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
