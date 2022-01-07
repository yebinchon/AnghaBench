; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_Encap_J2K.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_Encap_J2K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }

@J2K_BOX_JP2C = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"elsmfrat\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"brat\00", align 1
@j2k_profiles_rates = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"tcod\00", align 1
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bcol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, %struct.TYPE_12__*)* @Encap_J2K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @Encap_J2K(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %87, %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %27, %28
  %30 = icmp ugt i64 %29, 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi i1 [ false, %18 ], [ %30, %23 ]
  br i1 %32, label %33, label %91

33:                                               ; preds = %31
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i64 @GetDWBE(i32* %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 4
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 5
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 6
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 7
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @VLC_FOURCC(i32 %46, i32 %53, i32 %60, i32 %67)
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %33
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %78, 8
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %33
  store i64 0, i64* %7, align 8
  br label %91

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @J2K_BOX_JP2C, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %91

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %18

91:                                               ; preds = %85, %80, %31
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @J2K_BOX_JP2C, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = call i32 @block_Release(%struct.TYPE_13__* %96)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %288

98:                                               ; preds = %91
  %99 = load i64, i64* %6, align 8
  %100 = icmp ult i64 %99, 38
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 38, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call %struct.TYPE_13__* @block_Realloc(%struct.TYPE_13__* %102, i32 %105, i64 %109)
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %9, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = icmp ne %struct.TYPE_13__* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = call i32 @block_Release(%struct.TYPE_13__* %118)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %288

120:                                              ; preds = %101
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %4, align 8
  br label %137

122:                                              ; preds = %98
  %123 = load i64, i64* %6, align 8
  %124 = sub i64 %123, 38
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 %124
  store i32* %128, i32** %126, align 8
  %129 = load i64, i64* %6, align 8
  %130 = sub i64 %129, 38
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  br label %137

137:                                              ; preds = %122, %120
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @j2k_get_profile(i32 %141, i32 %145, i32 %149, i32 %153, i32 1)
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @memcpy(i32* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @SetWBE(i32* %162, i32 %166)
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 10
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @SetWBE(i32* %171, i32 %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 12
  %181 = call i32 @memcpy(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** @j2k_profiles_rates, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 1000000
  store i32 %188, i32* %11, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** @j2k_profiles_rates, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %194, 1000000
  store i32 %195, i32* %12, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 16
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @SetDWBE(i32* %199, i32 %200)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 20
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @SetDWBE(i32* %205, i32 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 24
  %212 = call i32 @memcpy(i32* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @SEC_FROM_VLC_TICK(i32 %215)
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = udiv i32 %217, 60
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %14, align 4
  %220 = udiv i32 %219, 60
  store i32 %220, i32* %15, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @CLOCK_FREQ, align 4
  %226 = mul i32 %224, %225
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = udiv i32 %226, %230
  store i32 %231, i32* %16, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @CLOCK_FREQ, align 4
  %236 = urem i32 %234, %235
  %237 = load i32, i32* %16, align 4
  %238 = udiv i32 %236, %237
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 28
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* %14, align 4
  %245 = urem i32 %244, 60
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 29
  store i32 %245, i32* %249, align 4
  %250 = load i32, i32* %13, align 4
  %251 = urem i32 %250, 60
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 30
  store i32 %251, i32* %255, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 31
  store i32 %256, i32* %260, align 4
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 32
  %265 = call i32 @memcpy(i32* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @j2k_get_color_spec(i32 %269, i32 %273, i32 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 36
  store i32 %278, i32* %282, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 37
  store i32 0, i32* %286, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %287, %struct.TYPE_13__** %3, align 8
  br label %288

288:                                              ; preds = %137, %117, %95
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %289
}

declare dso_local i64 @GetDWBE(i32*) #1

declare dso_local i64 @VLC_FOURCC(i32, i32, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @block_Realloc(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @j2k_get_profile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @SetDWBE(i32*, i32) #1

declare dso_local i32 @SEC_FROM_VLC_TICK(i32) #1

declare dso_local i32 @j2k_get_color_spec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
