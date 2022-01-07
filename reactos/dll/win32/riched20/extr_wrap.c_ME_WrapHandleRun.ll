; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapHandleRun.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapHandleRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, %struct.TYPE_32__, %struct.TYPE_35__*, %struct.TYPE_35__*, i8*, %struct.TYPE_26__*, i64, i32, i32, i64, %struct.TYPE_29__* }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_35__*, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32 }

@diRun = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4
@MERF_WHITESPACE = common dso_local global i32 0, align 4
@MERF_STARTWHITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@MERF_ENDROW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MERF_TAB = common dso_local global i32 0, align 4
@MERF_GRAPHICS = common dso_local global i32 0, align 4
@MERF_ENDWHITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"failure!\0A\00", align 1
@MERF_SPLITTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_35__* (%struct.TYPE_33__*, %struct.TYPE_35__*)* @ME_WrapHandleRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_35__* @ME_WrapHandleRun(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  %12 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @diRun, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %22 = icmp ne %struct.TYPE_35__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 3
  store %struct.TYPE_35__* %24, %struct.TYPE_35__** %26, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  store %struct.TYPE_34__* %30, %struct.TYPE_34__** %7, align 8
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %47 = call i32 @ME_WrapSizeRun(%struct.TYPE_33__* %45, %struct.TYPE_35__* %46)
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %145

55:                                               ; preds = %27
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MERF_ENDPARA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %64, align 8
  store %struct.TYPE_35__* %65, %struct.TYPE_35__** %3, align 8
  br label %366

66:                                               ; preds = %55
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MERF_WHITESPACE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %76
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %83, align 8
  store %struct.TYPE_35__* %84, %struct.TYPE_35__** %3, align 8
  br label %366

85:                                               ; preds = %66
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MERF_STARTWHITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %85
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %94 = call i32 @get_text(%struct.TYPE_34__* %93, i32 0)
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @find_non_whitespace(i32 %94, i32 %97, i32 0)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %92
  %102 = load i8*, i8** @FALSE, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.TYPE_35__* @split_run_extents(%struct.TYPE_33__* %105, %struct.TYPE_35__* %106, i32 %107)
  store %struct.TYPE_35__* %108, %struct.TYPE_35__** %6, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %101
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  br label %129

125:                                              ; preds = %101
  %126 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = call i32 @calc_run_extent(%struct.TYPE_26__* %111, i32* %116, i32 %130, %struct.TYPE_34__* %133)
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %137 = call i32 @ME_InsertRowStart(%struct.TYPE_33__* %135, %struct.TYPE_35__* %136)
  %138 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %138, %struct.TYPE_35__** %3, align 8
  br label %366

139:                                              ; preds = %92
  br label %140

140:                                              ; preds = %139, %85
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %143 = call i32 @ME_InsertRowStart(%struct.TYPE_33__* %141, %struct.TYPE_35__* %142)
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %144, %struct.TYPE_35__** %3, align 8
  br label %366

145:                                              ; preds = %27
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MERF_ENDROW, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %154, align 8
  store %struct.TYPE_35__* %155, %struct.TYPE_35__** %5, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %158 = call i32 @ME_InsertRowStart(%struct.TYPE_33__* %156, %struct.TYPE_35__* %157)
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %159, %struct.TYPE_35__** %3, align 8
  br label %366

160:                                              ; preds = %145
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %326

165:                                              ; preds = %160
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %169, %172
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %173, %179
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %180, %183
  br i1 %184, label %185, label %326

185:                                              ; preds = %165
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %195, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %10, align 4
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MERF_WHITESPACE, align 4
  %206 = load i32, i32* @MERF_ENDPARA, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %185
  %211 = load i8*, i8** @TRUE, align 8
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 4
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %214, %struct.TYPE_35__** %3, align 8
  br label %366

215:                                              ; preds = %185
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MERF_TAB, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %215
  %223 = load i8*, i8** @TRUE, align 8
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 4
  store i8* %223, i8** %225, align 8
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %227, align 8
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %230 = icmp eq %struct.TYPE_35__* %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %233, align 8
  store %struct.TYPE_35__* %234, %struct.TYPE_35__** %3, align 8
  br label %366

235:                                              ; preds = %222
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %236, %struct.TYPE_35__** %3, align 8
  br label %366

237:                                              ; preds = %215
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @MERF_GRAPHICS, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %237
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp sle i64 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %244
  %253 = load i8*, i8** @TRUE, align 8
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 4
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %256, %struct.TYPE_35__** %3, align 8
  br label %366

257:                                              ; preds = %244, %237
  %258 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @MERF_ENDWHITE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %257
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %266 = call i32 @get_text(%struct.TYPE_34__* %265, i32 0)
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @reverse_find_non_whitespace(i32 %266, i32 %267)
  store i32 %268, i32* %11, align 4
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %271 = load i32, i32* %11, align 4
  %272 = call %struct.TYPE_35__* @split_run_extents(%struct.TYPE_33__* %269, %struct.TYPE_35__* %270, i32 %271)
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %273, %struct.TYPE_35__** %3, align 8
  br label %366

274:                                              ; preds = %257
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %276 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %277 = load i32, i32* %10, align 4
  %278 = call %struct.TYPE_35__* @ME_SplitByBacktracking(%struct.TYPE_33__* %275, %struct.TYPE_35__* %276, i32 %277)
  store %struct.TYPE_35__* %278, %struct.TYPE_35__** %6, align 8
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %280 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %281, align 8
  %283 = icmp eq %struct.TYPE_35__* %279, %282
  br i1 %283, label %284, label %308

284:                                              ; preds = %274
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @MERF_STARTWHITE, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %284
  %292 = load i8*, i8** @TRUE, align 8
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 4
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %295, %struct.TYPE_35__** %3, align 8
  br label %366

296:                                              ; preds = %284
  %297 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, %299
  store i64 %304, i64* %302, align 8
  %305 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %306, align 8
  store %struct.TYPE_35__* %307, %struct.TYPE_35__** %3, align 8
  br label %366

308:                                              ; preds = %274
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %311 = icmp ne %struct.TYPE_35__* %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i8*, i8** @TRUE, align 8
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 4
  store i8* %313, i8** %315, align 8
  %316 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %316, %struct.TYPE_35__** %3, align 8
  br label %366

317:                                              ; preds = %308
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 4
  %320 = load i8*, i8** %319, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %323, %struct.TYPE_35__** %3, align 8
  br label %366

324:                                              ; preds = %317
  %325 = call i32 @ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %165, %160
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @MERF_SPLITTABLE, align 4
  %331 = load i32, i32* @MERF_STARTWHITE, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %350, label %335

335:                                              ; preds = %326
  %336 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @MERF_GRAPHICS, align 4
  %340 = load i32, i32* @MERF_TAB, align 4
  %341 = or i32 %339, %340
  %342 = and i32 %338, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %335
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 3
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %347, align 8
  %349 = icmp ne %struct.TYPE_35__* %345, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %344, %326
  %351 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %352 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %352, i32 0, i32 2
  store %struct.TYPE_35__* %351, %struct.TYPE_35__** %353, align 8
  br label %354

354:                                              ; preds = %350, %344, %335
  %355 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %361, %357
  store i64 %362, i64* %360, align 8
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_35__*, %struct.TYPE_35__** %364, align 8
  store %struct.TYPE_35__* %365, %struct.TYPE_35__** %3, align 8
  br label %366

366:                                              ; preds = %354, %322, %312, %296, %291, %264, %252, %235, %231, %210, %152, %140, %129, %73, %62
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  ret %struct.TYPE_35__* %367
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_WrapSizeRun(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i32 @find_non_whitespace(i32, i32, i32) #1

declare dso_local i32 @get_text(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_35__* @split_run_extents(%struct.TYPE_33__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @calc_run_extent(%struct.TYPE_26__*, i32*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @ME_InsertRowStart(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i32 @reverse_find_non_whitespace(i32, i32) #1

declare dso_local %struct.TYPE_35__* @ME_SplitByBacktracking(%struct.TYPE_33__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
