; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldo.c_luaD_precall.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldo.c_luaD_precall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i64, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i64, i64, i32, i32 }
%struct.TYPE_31__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_30__ }
%struct.TYPE_24__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_28__*)* }

@LUA_MASKCALL = common dso_local global i32 0, align 4
@LUA_HOOKCALL = common dso_local global i32 0, align 4
@PCRLUA = common dso_local global i32 0, align 4
@LUA_MINSTACK = common dso_local global i64 0, align 8
@PCRYIELD = common dso_local global i32 0, align 4
@PCRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaD_precall(%struct.TYPE_28__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ttisfunction(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @tryfuncTM(%struct.TYPE_28__* %21, i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @savestack(%struct.TYPE_28__* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_26__* @clvalue(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %8, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %176, label %42

42:                                               ; preds = %24
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %44, align 8
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %13, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @luaD_checkstack(%struct.TYPE_28__* %46, i64 %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @restorestack(%struct.TYPE_28__* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %42
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %59
  br label %96

80:                                               ; preds = %42
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @cast_int(i64 %85)
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @adjust_varargs(%struct.TYPE_28__* %88, %struct.TYPE_29__* %89, i32 %90)
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @restorestack(%struct.TYPE_28__* %92, i32 %93)
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %80, %79
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = call %struct.TYPE_31__* @inc_ci(%struct.TYPE_28__* %97)
  store %struct.TYPE_31__* %98, %struct.TYPE_31__** %10, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 1
  store i64 %102, i64* %106, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %118, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @lua_assert(i32 %123)
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %147, %96
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @setnilvalue(i64 %145)
  br label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %11, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %11, align 8
  br label %138

150:                                              ; preds = %138
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @LUA_MASKCALL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %150
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %168 = load i32, i32* @LUA_HOOKCALL, align 4
  %169 = call i32 @luaD_callhook(%struct.TYPE_28__* %167, i32 %168, i32 -1)
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %162, %150
  %175 = load i32, i32* @PCRLUA, align 4
  store i32 %175, i32* %4, align 4
  br label %251

176:                                              ; preds = %24
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %178 = load i64, i64* @LUA_MINSTACK, align 8
  %179 = call i32 @luaD_checkstack(%struct.TYPE_28__* %177, i64 %178)
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %181 = call %struct.TYPE_31__* @inc_ci(%struct.TYPE_28__* %180)
  store %struct.TYPE_31__* %181, %struct.TYPE_31__** %15, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i8* @restorestack(%struct.TYPE_28__* %182, i32 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  store i64 %191, i64* %195, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @LUA_MINSTACK, align 8
  %200 = add nsw i64 %198, %199
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp sle i64 %205, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @lua_assert(i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @LUA_MASKCALL, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %176
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %223 = load i32, i32* @LUA_HOOKCALL, align 4
  %224 = call i32 @luaD_callhook(%struct.TYPE_28__* %222, i32 %223, i32 -1)
  br label %225

225:                                              ; preds = %221, %176
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %227 = call i32 @lua_unlock(%struct.TYPE_28__* %226)
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %229 = call %struct.TYPE_24__* @curr_func(%struct.TYPE_28__* %228)
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %231, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %234 = call i32 %232(%struct.TYPE_28__* %233)
  store i32 %234, i32* %16, align 4
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %236 = call i32 @lua_lock(%struct.TYPE_28__* %235)
  %237 = load i32, i32* %16, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %225
  %240 = load i32, i32* @PCRYIELD, align 4
  store i32 %240, i32* %4, align 4
  br label %251

241:                                              ; preds = %225
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = sub nsw i64 %245, %247
  %249 = call i32 @luaD_poscall(%struct.TYPE_28__* %242, i64 %248)
  %250 = load i32, i32* @PCRC, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %241, %239, %174
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @ttisfunction(i64) #1

declare dso_local i64 @tryfuncTM(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @savestack(%struct.TYPE_28__*, i64) #1

declare dso_local %struct.TYPE_26__* @clvalue(i64) #1

declare dso_local i32 @luaD_checkstack(%struct.TYPE_28__*, i64) #1

declare dso_local i8* @restorestack(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i64 @adjust_varargs(%struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_31__* @inc_ci(%struct.TYPE_28__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setnilvalue(i64) #1

declare dso_local i32 @luaD_callhook(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_24__* @curr_func(%struct.TYPE_28__*) #1

declare dso_local i32 @lua_lock(%struct.TYPE_28__*) #1

declare dso_local i32 @luaD_poscall(%struct.TYPE_28__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
