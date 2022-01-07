; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_build_monitor_layout.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_build_monitor_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_25__*, i32, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { i64, i32 }

@xcb = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"RANDR\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"XINERAMA\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Query XINERAMA for monitor layout.\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"No RANDR or Xinerama available for getting monitor layout.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Query RANDR for monitor layout.\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Randr XCB api version: %d.%d.\00", align 1
@XCB_RANDR_MAJOR_VERSION = common dso_local global i64 0, align 8
@XCB_RANDR_MINOR_VERSION = common dso_local global i64 0, align 8
@RANDR_PREF_MAJOR_VERSION = common dso_local global i64 0, align 8
@RANDR_PREF_MINOR_VERSION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Found randr version: %d.%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_build_monitor_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_build_monitor_layout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %240

22:                                               ; preds = %0
  %23 = call i64 @x11_is_extension_present(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = call i64 @x11_is_extension_present(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @x11_build_monitor_layout_xinerama()
  br label %240

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %240

33:                                               ; preds = %22
  %34 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i64, i64* @XCB_RANDR_MAJOR_VERSION, align 8
  %36 = load i64, i64* @XCB_RANDR_MINOR_VERSION, align 8
  %37 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* @RANDR_PREF_MAJOR_VERSION, align 8
  %42 = load i64, i64* @RANDR_PREF_MINOR_VERSION, align 8
  %43 = call i32 @xcb_randr_query_version(i32 %40, i64 %41, i64 %42)
  store i32 %43, i32* %1, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %1, align 4
  %48 = call %struct.TYPE_23__* @xcb_randr_query_version_reply(i32 %46, i32 %47, i32* null)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %2, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %129

51:                                               ; preds = %33
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RANDR_PREF_MAJOR_VERSION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RANDR_PREF_MINOR_VERSION, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64, %51
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RANDR_PREF_MAJOR_VERSION, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xcb_randr_get_monitors(i32 %79, i32 %84, i32 1)
  store i32 %85, i32* %3, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call %struct.TYPE_23__* @xcb_randr_get_monitors_reply(i32 %88, i32 %89, i32* null)
  store %struct.TYPE_23__* %90, %struct.TYPE_23__** %4, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = icmp ne %struct.TYPE_23__* %91, null
  br i1 %92, label %93, label %125

93:                                               ; preds = %76
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = call { i64, i32 } @xcb_randr_get_monitors_monitors_iterator(%struct.TYPE_23__* %94)
  %96 = bitcast %struct.TYPE_24__* %5 to { i64, i32 }*
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 0
  %98 = extractvalue { i64, i32 } %95, 0
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 1
  %100 = extractvalue { i64, i32 } %95, 1
  store i32 %100, i32* %99, align 8
  br label %101

101:                                              ; preds = %120, %93
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_25__* @x11_get_monitor_from_randr_monitor(i32 %107)
  store %struct.TYPE_25__* %108, %struct.TYPE_25__** %6, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = icmp ne %struct.TYPE_25__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  store %struct.TYPE_25__* %117, %struct.TYPE_25__** %119, align 8
  br label %120

120:                                              ; preds = %111, %105
  %121 = call i32 @xcb_randr_monitor_info_next(%struct.TYPE_24__* %5)
  br label %101

122:                                              ; preds = %101
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = call i32 @free(%struct.TYPE_23__* %123)
  br label %125

125:                                              ; preds = %122, %76
  br label %126

126:                                              ; preds = %125, %70
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = call i32 @free(%struct.TYPE_23__* %127)
  br label %129

129:                                              ; preds = %126, %33
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = icmp eq %struct.TYPE_25__* %132, null
  br i1 %133, label %134, label %224

134:                                              ; preds = %129
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @xcb_randr_get_screen_resources_current(i32 %137, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call %struct.TYPE_23__* @xcb_randr_get_screen_resources_current_reply(i32 %146, i32 %147, i32* null)
  store %struct.TYPE_23__* %148, %struct.TYPE_23__** %7, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = icmp ne %struct.TYPE_23__* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %134
  br label %240

152:                                              ; preds = %134
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = call i32 @xcb_randr_get_screen_resources_current_outputs_length(%struct.TYPE_23__* %153)
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = call i64* @xcb_randr_get_screen_resources_current_outputs(%struct.TYPE_23__* %155)
  store i64* %156, i64** %10, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @xcb_randr_get_output_primary(i32 %159, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call %struct.TYPE_23__* @xcb_randr_get_output_primary_reply(i32 %168, i32 %169, i32* null)
  store %struct.TYPE_23__* %170, %struct.TYPE_23__** %12, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %212, %152
  %174 = load i32, i32* %13, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %215

176:                                              ; preds = %173
  %177 = load i64*, i64** %10, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call %struct.TYPE_25__* @x11_get_monitor_from_output(i64 %181)
  store %struct.TYPE_25__* %182, %struct.TYPE_25__** %14, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %184 = icmp ne %struct.TYPE_25__* %183, null
  br i1 %184, label %185, label %211

185:                                              ; preds = %176
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %187, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  store %struct.TYPE_25__* %188, %struct.TYPE_25__** %190, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  store %struct.TYPE_25__* %191, %struct.TYPE_25__** %193, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %195 = icmp ne %struct.TYPE_23__* %194, null
  br i1 %195, label %196, label %210

196:                                              ; preds = %185
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %10, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %199, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load i32, i32* @TRUE, align 4
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %196, %185
  br label %211

211:                                              ; preds = %210, %176
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %13, align 4
  br label %173

215:                                              ; preds = %173
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %217 = icmp ne %struct.TYPE_23__* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %220 = call i32 @free(%struct.TYPE_23__* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %223 = call i32 @free(%struct.TYPE_23__* %222)
  br label %224

224:                                              ; preds = %221, %129
  store i32 0, i32* %15, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** @xcb, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  store %struct.TYPE_25__* %227, %struct.TYPE_25__** %16, align 8
  br label %228

228:                                              ; preds = %236, %224
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %230 = icmp ne %struct.TYPE_25__* %229, null
  br i1 %230, label %231, label %240

231:                                              ; preds = %228
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 8
  br label %236

236:                                              ; preds = %231
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  store %struct.TYPE_25__* %239, %struct.TYPE_25__** %16, align 8
  br label %228

240:                                              ; preds = %21, %28, %31, %151, %228
  ret void
}

declare dso_local i64 @x11_is_extension_present(i8*) #1

declare dso_local i32 @g_debug(i8*, ...) #1

declare dso_local i32 @x11_build_monitor_layout_xinerama(...) #1

declare dso_local i32 @xcb_randr_query_version(i32, i64, i64) #1

declare dso_local %struct.TYPE_23__* @xcb_randr_query_version_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_randr_get_monitors(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @xcb_randr_get_monitors_reply(i32, i32, i32*) #1

declare dso_local { i64, i32 } @xcb_randr_get_monitors_monitors_iterator(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @x11_get_monitor_from_randr_monitor(i32) #1

declare dso_local i32 @xcb_randr_monitor_info_next(%struct.TYPE_24__*) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local i32 @xcb_randr_get_screen_resources_current(i32, i32) #1

declare dso_local %struct.TYPE_23__* @xcb_randr_get_screen_resources_current_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_randr_get_screen_resources_current_outputs_length(%struct.TYPE_23__*) #1

declare dso_local i64* @xcb_randr_get_screen_resources_current_outputs(%struct.TYPE_23__*) #1

declare dso_local i32 @xcb_randr_get_output_primary(i32, i32) #1

declare dso_local %struct.TYPE_23__* @xcb_randr_get_output_primary_reply(i32, i32, i32*) #1

declare dso_local %struct.TYPE_25__* @x11_get_monitor_from_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
