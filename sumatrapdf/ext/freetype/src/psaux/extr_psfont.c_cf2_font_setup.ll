; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/psaux/extr_psfont.c_cf2_font_setup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/psaux/extr_psfont.c_cf2_font_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i64, i64, i32, i32, i32, i64, i64, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_30__, %struct.TYPE_35__, %struct.TYPE_35__, i8*, i32*, i32, i32, %struct.TYPE_28__, i32, i32, i32, %struct.TYPE_34__*, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i32 (i32, %struct.TYPE_34__*, i32, i32*)*, i64 (%struct.TYPE_26__*, i32, i32, i32*)* }

@FALSE = common dso_local global i8* null, align 8
@FT_Err_Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@CF2_FlagsHinted = common dso_local global i32 0, align 4
@CF2_FlagsDarkened = common dso_local global i32 0, align 4
@fontMatrix = common dso_local global %struct.TYPE_27__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_35__*)* @cf2_font_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_font_setup(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %4, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 26
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  store %struct.TYPE_31__* %21, %struct.TYPE_31__** %5, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** @FALSE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %32 = load i32, i32* @FT_Err_Ok, align 4
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 22
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %36 = call %struct.TYPE_34__* @cf2_getSubfont(%struct.TYPE_31__* %35)
  store %struct.TYPE_34__* %36, %struct.TYPE_34__** %11, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 25
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %38, align 8
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %41 = icmp ne %struct.TYPE_34__* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 25
  store %struct.TYPE_34__* %43, %struct.TYPE_34__** %45, align 8
  %46 = load i8*, i8** @TRUE, align 8
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %2
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 24
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 23
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %58, %struct.TYPE_32__** %15, align 8
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = call %struct.TYPE_33__* @cf2_getVStore(%struct.TYPE_31__* %59)
  store %struct.TYPE_33__* %60, %struct.TYPE_33__** %7, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %53
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 21
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 21
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 20
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 19
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 18
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %68, %53
  br label %93

93:                                               ; preds = %92, %48
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %95 = call i64 @cf2_getPpemY(%struct.TYPE_31__* %94)
  store i64 %95, i64* %12, align 8
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i8*, i8** @TRUE, align 8
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CF2_FlagsHinted, align 4
  %112 = and i32 %110, %111
  %113 = call i8* @FT_BOOL(i32 %112)
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 17
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 16
  %119 = call i64 @ft_memcmp(%struct.TYPE_35__* %116, %struct.TYPE_35__* %118, i32 32)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %107
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 16
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %125 = bitcast %struct.TYPE_35__* %123 to i8*
  %126 = bitcast %struct.TYPE_35__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 8, i1 false)
  %127 = call i32 @cf2_intToFixed(i32 0)
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 16
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 16
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 15
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %137 = bitcast %struct.TYPE_35__* %135 to i8*
  %138 = bitcast %struct.TYPE_35__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 8, i1 false)
  %139 = call i32 @cf2_intToFixed(i32 1)
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 14
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 14
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 4
  %146 = call i32 @cf2_intToFixed(i32 0)
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 14
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 14
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 2
  store i32 %146, i32* %152, align 4
  %153 = load i8*, i8** @TRUE, align 8
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %121, %107
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CF2_FlagsDarkened, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %158, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %155
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CF2_FlagsDarkened, align 4
  %170 = and i32 %168, %169
  %171 = call i8* @FT_BOOL(i32 %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load i8*, i8** @TRUE, align 8
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %165, %155
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %323

180:                                              ; preds = %177
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i32 1000, i32* %18, align 4
  br label %187

187:                                              ; preds = %186, %180
  %188 = call i32 @cf2_intToFixed(i32 4)
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = call i64 @FT_MAX(i64 %189, i8* %193)
  store i64 %194, i64* %12, align 8
  %195 = call i32 @cf2_intToFixed(i32 1000)
  %196 = load i32, i32* %18, align 4
  %197 = sdiv i32 %195, %196
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %16, align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %200 = call i64 @cf2_getStdVW(%struct.TYPE_31__* %199)
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 6
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = icmp sle i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %187
  %208 = call i32 @cf2_intToFixed(i32 75)
  %209 = load i64, i64* %16, align 8
  %210 = call i8* @FT_DivFix(i32 %208, i64 %209)
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 6
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %207, %187
  %215 = load i64, i64* %9, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %214
  %218 = load i64, i64* %9, align 8
  %219 = load i32, i32* %18, align 4
  %220 = call i32 @cf2_intToFixed(i32 %219)
  %221 = load i64, i64* %12, align 8
  %222 = call i8* @FT_DivFix(i32 %220, i64 %221)
  %223 = call i64 @FT_MAX(i64 %218, i8* %222)
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 12
  %231 = load i64, i64* %9, align 8
  %232 = load i8*, i8** @FALSE, align 8
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %233, i32 0, i32 13
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @cf2_computeDarkening(i64 %224, i64 %225, i64 %228, i32* %230, i64 %231, i8* %232, i32 %235)
  br label %254

237:                                              ; preds = %214
  %238 = load i64, i64* %16, align 8
  %239 = load i64, i64* %12, align 8
  %240 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 12
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 13
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @cf2_computeDarkening(i64 %238, i64 %239, i64 %242, i32* %244, i64 0, i8* %249, i32 %252)
  br label %254

254:                                              ; preds = %237, %217
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %256 = call i64 @cf2_getStdHW(%struct.TYPE_31__* %255)
  store i64 %256, i64* %17, align 8
  %257 = load i64, i64* %17, align 8
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %254
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %17, align 8
  %264 = call i64 @MUL_INT32(i32 2, i64 %263)
  %265 = icmp sgt i64 %262, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = call i32 @cf2_intToFixed(i32 75)
  %268 = load i64, i64* %16, align 8
  %269 = call i8* @FT_DivFix(i32 %267, i64 %268)
  %270 = ptrtoint i8* %269 to i64
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 7
  store i64 %270, i64* %272, align 8
  br label %280

273:                                              ; preds = %259, %254
  %274 = call i32 @cf2_intToFixed(i32 110)
  %275 = load i64, i64* %16, align 8
  %276 = call i8* @FT_DivFix(i32 %274, i64 %275)
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %278, i32 0, i32 7
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %273, %266
  %281 = load i64, i64* %16, align 8
  %282 = load i64, i64* %12, align 8
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 7
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 11
  %288 = load i64, i64* %10, align 8
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 13
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @cf2_computeDarkening(i64 %281, i64 %282, i64 %285, i32* %287, i64 %288, i8* %293, i32 %296)
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 12
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %280
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %302, %280
  %308 = load i8*, i8** @TRUE, align 8
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 10
  store i8* %308, i8** %310, align 8
  br label %315

311:                                              ; preds = %302
  %312 = load i8*, i8** @FALSE, align 8
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %313, i32 0, i32 10
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %311, %307
  %316 = load i8*, i8** @FALSE, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 9
  store i8* %316, i8** %318, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 8
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %322 = call i32 @cf2_blues_init(i32* %320, %struct.TYPE_36__* %321)
  br label %323

323:                                              ; preds = %315, %177
  ret void
}

declare dso_local %struct.TYPE_34__* @cf2_getSubfont(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_33__* @cf2_getVStore(%struct.TYPE_31__*) #1

declare dso_local i64 @cf2_getPpemY(%struct.TYPE_31__*) #1

declare dso_local i8* @FT_BOOL(i32) #1

declare dso_local i64 @ft_memcmp(%struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cf2_intToFixed(i32) #1

declare dso_local i64 @FT_MAX(i64, i8*) #1

declare dso_local i64 @cf2_getStdVW(%struct.TYPE_31__*) #1

declare dso_local i8* @FT_DivFix(i32, i64) #1

declare dso_local i32 @cf2_computeDarkening(i64, i64, i64, i32*, i64, i8*, i32) #1

declare dso_local i64 @cf2_getStdHW(%struct.TYPE_31__*) #1

declare dso_local i64 @MUL_INT32(i32, i64) #1

declare dso_local i32 @cf2_blues_init(i32*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
