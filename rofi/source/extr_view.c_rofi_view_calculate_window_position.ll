; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_calculate_window_position.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_calculate_window_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@loc_transtable = common dso_local global i32* null, align 8
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@CacheState = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"x-offset\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"y-offset\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @rofi_view_calculate_window_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_calculate_window_position(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @WIDGET(i32 %9)
  %11 = load i32*, i32** @loc_transtable, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rofi_theme_get_position(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @listview_get_fixed_num_lines(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 136
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 134, i32* %4, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 135
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 133, i32* %4, align 4
  br label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 132, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @WIDGET(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rofi_theme_get_position(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 1), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %257

54:                                               ; preds = %38
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 0), align 8
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 1), align 4
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %3, align 4
  switch i32 %69, label %115 [
    i32 132, label %70
    i32 134, label %74
    i32 133, label %78
    i32 135, label %82
    i32 130, label %89
    i32 131, label %96
    i32 129, label %103
    i32 128, label %110
    i32 136, label %114
  ]

70:                                               ; preds = %54
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %54, %70
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %116

78:                                               ; preds = %54
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %54, %78
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 1), align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  br label %116

89:                                               ; preds = %54
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 1), align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %54, %89
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 0), align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %116

103:                                              ; preds = %54
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 3), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 0), align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %54, %103
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 2), align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  br label %116

114:                                              ; preds = %54
  br label %115

115:                                              ; preds = %54, %114
  br label %116

116:                                              ; preds = %115, %110, %96, %82, %74
  %117 = load i32, i32* %4, align 4
  switch i32 %117, label %229 [
    i32 129, label %118
    i32 131, label %127
    i32 130, label %145
    i32 133, label %162
    i32 132, label %171
    i32 134, label %172
    i32 135, label %182
    i32 128, label %200
    i32 136, label %210
  ]

118:                                              ; preds = %116
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  br label %230

127:                                              ; preds = %116
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %230

145:                                              ; preds = %116
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, %157
  store i64 %161, i64* %159, align 8
  br label %230

162:                                              ; preds = %116
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %230

171:                                              ; preds = %116
  br label %230

172:                                              ; preds = %116
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  br label %230

182:                                              ; preds = %116
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %189, %186
  store i64 %190, i64* %188, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  br label %230

200:                                              ; preds = %116
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sdiv i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %208, %205
  store i64 %209, i64* %207, align 8
  br label %230

210:                                              ; preds = %116
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sdiv i32 %213, 2
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  br label %230

229:                                              ; preds = %116
  br label %230

230:                                              ; preds = %229, %210, %200, %182, %172, %171, %162, %145, %127, %118
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @WIDGET(i32 %233)
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 2), align 4
  %236 = call i32 @rofi_theme_get_distance(i32 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %235)
  store i32 %236, i32* %5, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @WIDGET(i32 %239)
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %242 = call i32 @rofi_theme_get_distance(i32 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %245 = call i64 @distance_get_pixel(i32 %243, i32 %244)
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %245
  store i64 %249, i64* %247, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %252 = call i64 @distance_get_pixel(i32 %250, i32 %251)
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %252
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %230, %47
  ret void
}

declare dso_local i32 @rofi_theme_get_position(i32, i8*, i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @listview_get_fixed_num_lines(i32) #1

declare dso_local i32 @rofi_theme_get_distance(i32, i8*, i32) #1

declare dso_local i64 @distance_get_pixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
