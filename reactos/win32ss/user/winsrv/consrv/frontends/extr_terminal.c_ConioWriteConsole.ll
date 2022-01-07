; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/extr_terminal.c_ConioWriteConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/extr_terminal.c_ConioWriteConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_20__*, %struct.TYPE_27__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i64, i64, i64, i32*, i64)*, i32 (%struct.TYPE_26__*)* }
%struct.TYPE_24__ = type { i64, i64, i32, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@TAB_WIDTH = common dso_local global i32 0, align 4
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*, i32*, i64, i64)* @ConioWriteConsole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConioWriteConsole(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %11, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %16, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 -1, i32* %40, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %395, %5
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %398

50:                                               ; preds = %46
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %316

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @min(i64 %68, i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @max(i32 %77, i64 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  br label %395

85:                                               ; preds = %57
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %96 = call i32 @ConioNextLine(%struct.TYPE_25__* %95, %struct.TYPE_24__* %14, i64* %17)
  br label %395

97:                                               ; preds = %85
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %188

103:                                              ; preds = %97
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 0, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 0, %113
  br i1 %114, label %115, label %187

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 0, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %115
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @min(i64 %136, i64 %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i64 %142, i64* %143, align 8
  br label %150

144:                                              ; preds = %115
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %144, %121
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call %struct.TYPE_28__* @ConioCoordToPointer(%struct.TYPE_25__* %151, i64 %155, i64 %159)
  store %struct.TYPE_28__* %160, %struct.TYPE_28__** %13, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  store i32 32, i32* %163, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @min(i64 %170, i64 %174)
  %176 = ptrtoint i8* %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @max(i32 %179, i64 %183)
  %185 = ptrtoint i8* %184 to i32
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 %185, i32* %186, align 8
  br label %187

187:                                              ; preds = %150, %109
  br label %395

188:                                              ; preds = %97
  %189 = load i32*, i32** %8, align 8
  %190 = load i64, i64* %12, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 9
  br i1 %193, label %194, label %297

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i8* @min(i64 %196, i64 %200)
  %202 = ptrtoint i8* %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i64 %202, i64* %203, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @TAB_WIDTH, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = load i32, i32* @TAB_WIDTH, align 4
  %212 = sub nsw i32 %211, 1
  %213 = xor i32 %212, -1
  %214 = sext i32 %213 to i64
  %215 = and i64 %210, %214
  store i64 %215, i64* %18, align 8
  %216 = load i64, i64* %18, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @min(i64 %216, i64 %220)
  %222 = ptrtoint i8* %221 to i64
  store i64 %222, i64* %18, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call %struct.TYPE_28__* @ConioCoordToPointer(%struct.TYPE_25__* %223, i64 %227, i64 %231)
  store %struct.TYPE_28__* %232, %struct.TYPE_28__** %13, align 8
  br label %233

233:                                              ; preds = %240, %194
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %18, align 8
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %233
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  store i32 32, i32* %243, align 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 1
  store %struct.TYPE_28__* %250, %struct.TYPE_28__** %13, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %253, align 8
  br label %233

256:                                              ; preds = %233
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = sub nsw i64 %262, 1
  %264 = call i8* @max(i32 %258, i64 %263)
  %265 = ptrtoint i8* %264 to i32
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 %265, i32* %266, align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %270, %274
  br i1 %275, label %276, label %296

276:                                              ; preds = %256
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 0
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %288 = call i32 @ConioNextLine(%struct.TYPE_25__* %287, %struct.TYPE_24__* %14, i64* %17)
  br label %295

289:                                              ; preds = %276
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, -1
  store i64 %294, i64* %292, align 8
  br label %295

295:                                              ; preds = %289, %283
  br label %296

296:                                              ; preds = %295, %256
  br label %395

297:                                              ; preds = %188
  %298 = load i32*, i32** %8, align 8
  %299 = load i64, i64* %12, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 7
  br i1 %302, label %303, label %311

303:                                              ; preds = %297
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 1
  %308 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %307, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %310 = call i32 %308(%struct.TYPE_26__* %309)
  br label %395

311:                                              ; preds = %297
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315, %50
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = call i8* @min(i64 %318, i64 %322)
  %324 = ptrtoint i8* %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i64 %324, i64* %325, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = call i8* @max(i32 %327, i64 %331)
  %333 = ptrtoint i8* %332 to i32
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 %333, i32* %334, align 8
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = call %struct.TYPE_28__* @ConioCoordToPointer(%struct.TYPE_25__* %335, i64 %339, i64 %343)
  store %struct.TYPE_28__* %344, %struct.TYPE_28__** %13, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = load i64, i64* %12, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 0
  store i32 %348, i32* %351, align 4
  %352 = load i64, i64* %10, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %316
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  br label %360

360:                                              ; preds = %354, %316
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, 1
  store i64 %365, i64* %363, align 8
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %369, %373
  br i1 %374, label %375, label %394

375:                                              ; preds = %360
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %375
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  store i64 0, i64* %385, align 8
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %387 = call i32 @ConioNextLine(%struct.TYPE_25__* %386, %struct.TYPE_24__* %14, i64* %17)
  br label %393

388:                                              ; preds = %375
  %389 = load i64, i64* %15, align 8
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 0
  store i64 %389, i64* %392, align 8
  br label %393

393:                                              ; preds = %388, %382
  br label %394

394:                                              ; preds = %393, %360
  br label %395

395:                                              ; preds = %394, %303, %296, %187, %91, %63
  %396 = load i64, i64* %12, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %12, align 8
  br label %46

398:                                              ; preds = %46
  %399 = call i32 @ConioIsRectEmpty(%struct.TYPE_24__* %14)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %421, label %401

401:                                              ; preds = %398
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %403 = ptrtoint %struct.TYPE_25__* %402 to i64
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp eq i64 %403, %406
  br i1 %407, label %408, label %421

408:                                              ; preds = %401
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 0
  %413 = load i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i64, i64, i64, i32*, i64)*, i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i64, i64, i64, i32*, i64)** %412, align 8
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %415 = load i64, i64* %15, align 8
  %416 = load i64, i64* %16, align 8
  %417 = load i64, i64* %17, align 8
  %418 = load i32*, i32** %8, align 8
  %419 = load i64, i64* %9, align 8
  %420 = call i32 %413(%struct.TYPE_26__* %414, %struct.TYPE_24__* %14, i64 %415, i64 %416, i64 %417, i32* %418, i64 %419)
  br label %421

421:                                              ; preds = %408, %401, %398
  %422 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %422
}

declare dso_local i8* @min(i64, i64) #1

declare dso_local i8* @max(i32, i64) #1

declare dso_local i32 @ConioNextLine(%struct.TYPE_25__*, %struct.TYPE_24__*, i64*) #1

declare dso_local %struct.TYPE_28__* @ConioCoordToPointer(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @ConioIsRectEmpty(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
