; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psfont.c_cf2_font_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psfont.c_cf2_font_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_30__, %struct.TYPE_35__, %struct.TYPE_35__, i32*, i32, i32, %struct.TYPE_28__, i32, i32, i32, %struct.TYPE_34__*, %struct.TYPE_31__* }
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
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CF2_FlagsHinted, align 4
  %112 = and i32 %110, %111
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 17
  %118 = call i64 @ft_memcmp(%struct.TYPE_35__* %115, %struct.TYPE_35__* %117, i32 32)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %107
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 17
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %124 = bitcast %struct.TYPE_35__* %122 to i8*
  %125 = bitcast %struct.TYPE_35__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false)
  %126 = call i32 @cf2_intToFixed(i32 0)
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 17
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 17
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  store i32 %126, i32* %132, align 4
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i32 0, i32 16
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %136 = bitcast %struct.TYPE_35__* %134 to i8*
  %137 = bitcast %struct.TYPE_35__* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 8, i1 false)
  %138 = call i32 @cf2_intToFixed(i32 1)
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  %145 = call i32 @cf2_intToFixed(i32 0)
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 2
  store i32 %145, i32* %151, align 4
  %152 = load i8*, i8** @TRUE, align 8
  %153 = ptrtoint i8* %152 to i32
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %120, %107
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CF2_FlagsDarkened, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %157, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %154
  %165 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CF2_FlagsDarkened, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** @TRUE, align 8
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %164, %154
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %320

177:                                              ; preds = %174
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 1000, i32* %18, align 4
  br label %184

184:                                              ; preds = %183, %177
  %185 = call i32 @cf2_intToFixed(i32 4)
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = call i64 @FT_MAX(i64 %186, i8* %190)
  store i64 %191, i64* %12, align 8
  %192 = call i32 @cf2_intToFixed(i32 1000)
  %193 = load i32, i32* %18, align 4
  %194 = sdiv i32 %192, %193
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %16, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %197 = call i64 @cf2_getStdVW(%struct.TYPE_31__* %196)
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 7
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %184
  %205 = call i32 @cf2_intToFixed(i32 75)
  %206 = load i64, i64* %16, align 8
  %207 = call i8* @FT_DivFix(i32 %205, i64 %206)
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 7
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %204, %184
  %212 = load i64, i64* %9, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %211
  %215 = load i64, i64* %9, align 8
  %216 = load i32, i32* %18, align 4
  %217 = call i32 @cf2_intToFixed(i32 %216)
  %218 = load i64, i64* %12, align 8
  %219 = call i8* @FT_DivFix(i32 %217, i64 %218)
  %220 = call i64 @FT_MAX(i64 %215, i8* %219)
  store i64 %220, i64* %9, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %12, align 8
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 13
  %228 = load i64, i64* %9, align 8
  %229 = load i8*, i8** @FALSE, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 14
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @cf2_computeDarkening(i64 %221, i64 %222, i64 %225, i32* %227, i64 %228, i8* %229, i32 %232)
  br label %251

234:                                              ; preds = %211
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %240, i32 0, i32 13
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @cf2_computeDarkening(i64 %235, i64 %236, i64 %239, i32* %241, i64 0, i8* %246, i32 %249)
  br label %251

251:                                              ; preds = %234, %214
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %253 = call i64 @cf2_getStdHW(%struct.TYPE_31__* %252)
  store i64 %253, i64* %17, align 8
  %254 = load i64, i64* %17, align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %251
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %17, align 8
  %261 = call i64 @MUL_INT32(i32 2, i64 %260)
  %262 = icmp sgt i64 %259, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %256
  %264 = call i32 @cf2_intToFixed(i32 75)
  %265 = load i64, i64* %16, align 8
  %266 = call i8* @FT_DivFix(i32 %264, i64 %265)
  %267 = ptrtoint i8* %266 to i64
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 8
  store i64 %267, i64* %269, align 8
  br label %277

270:                                              ; preds = %256, %251
  %271 = call i32 @cf2_intToFixed(i32 110)
  %272 = load i64, i64* %16, align 8
  %273 = call i8* @FT_DivFix(i32 %271, i64 %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 8
  store i64 %274, i64* %276, align 8
  br label %277

277:                                              ; preds = %270, %263
  %278 = load i64, i64* %16, align 8
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 12
  %285 = load i64, i64* %10, align 8
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 14
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @cf2_computeDarkening(i64 %278, i64 %279, i64 %282, i32* %284, i64 %285, i8* %290, i32 %293)
  %295 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %295, i32 0, i32 13
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %277
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 12
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299, %277
  %305 = load i8*, i8** @TRUE, align 8
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 11
  store i8* %305, i8** %307, align 8
  br label %312

308:                                              ; preds = %299
  %309 = load i8*, i8** @FALSE, align 8
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 11
  store i8* %309, i8** %311, align 8
  br label %312

312:                                              ; preds = %308, %304
  %313 = load i8*, i8** @FALSE, align 8
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 10
  store i8* %313, i8** %315, align 8
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %316, i32 0, i32 9
  %318 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %319 = call i32 @cf2_blues_init(i32* %317, %struct.TYPE_36__* %318)
  br label %320

320:                                              ; preds = %312, %174
  ret void
}

declare dso_local %struct.TYPE_34__* @cf2_getSubfont(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_33__* @cf2_getVStore(%struct.TYPE_31__*) #1

declare dso_local i64 @cf2_getPpemY(%struct.TYPE_31__*) #1

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
