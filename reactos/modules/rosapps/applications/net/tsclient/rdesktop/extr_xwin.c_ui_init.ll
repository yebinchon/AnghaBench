; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__, i64, i32*, i64, i64, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32, i32, i8*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to open display: %s\0A\00", align 1
@False = common dso_local global i8* null, align 8
@MSBFirst = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"Performance optimization possible: avoiding image translation (colour depth conversion).\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Remote desktop colour depth %d higher than display colour depth %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"RDP depth: %d, display depth: %d, display bpp: %d, X server BE: %d, host BE: %d\0A\00", align 1
@AllocNone = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"Display colour depth is %d bit: you may want to use -C for a private colourmap.\0A\00", align 1
@Always = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"External BackingStore not available. Using internal.\0A\00", align 1
@True = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [86 x i8] c"Failed to get workarea: probably your window manager does not support extended hints\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"server bpp %d client bpp %d depth %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ui_init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = call i32* @XOpenDisplay(i32* null)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  store i32* %10, i32** %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @XDisplayName(i32* null)
  %19 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** @False, align 8
  store i8* %20, i8** %2, align 8
  br label %339

21:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %22 = bitcast i32* %5 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = inttoptr i64 %23 to i8*
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @ImageByteOrder(i32* %33)
  %35 = load i64, i64* @MSBFirst, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @DefaultScreen(i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ConnectionNumber(i32* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 11
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ScreenOfDisplay(i32* %54, i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DefaultDepthOfScreen(i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @select_visual(%struct.TYPE_11__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %21
  %72 = load i8*, i8** @False, align 8
  store i8* %72, i8** %2, align 8
  br label %339

73:                                               ; preds = %21
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @DEBUG(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %97)
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @DEBUG(i8* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %156, label %126

126:                                              ; preds = %99
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @RootWindowOfScreen(i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AllocNone, align 4
  %140 = call i32 @XCreateColormap(i32* %129, i32 %134, i32 %138, i32 %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 9
  store i32 %140, i32* %143, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sle i32 %147, 8
  br i1 %148, label %149, label %155

149:                                              ; preds = %126
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %126
  br label %156

156:                                              ; preds = %155, %99
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 8
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %174, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @DoesBackingStore(i32 %165)
  %167 = load i64, i64* @Always, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %171 = load i8*, i8** @True, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 8
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %169, %161, %156
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %174
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @WidthOfScreen(i32 %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @HeightOfScreen(i32 %190)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load i8*, i8** @True, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 7
  store i8* %194, i8** %197, align 8
  br label %282

198:                                              ; preds = %174
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %241

203:                                              ; preds = %198
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 0, %206
  %208 = icmp sge i32 %207, 100
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load i8*, i8** @True, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 7
  store i8* %210, i8** %213, align 8
  br label %214

214:                                              ; preds = %209, %203
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @HeightOfScreen(i32 %218)
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 0, %222
  %224 = mul nsw i32 %219, %223
  %225 = sdiv i32 %224, 100
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @WidthOfScreen(i32 %231)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 0, %235
  %237 = mul nsw i32 %232, %236
  %238 = sdiv i32 %237, 100
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 8
  br label %281

241:                                              ; preds = %198
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %241
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %248 = call i64 @get_current_workarea(%struct.TYPE_11__* %247, i8** %6, i8** %7, i8** %8, i8** %9)
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %246
  %251 = load i8*, i8** %8, align 8
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 8
  %255 = load i8*, i8** %9, align 8
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  %259 = load i8*, i8** @True, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 7
  store i8* %259, i8** %262, align 8
  br label %279

263:                                              ; preds = %246
  %264 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0))
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @WidthOfScreen(i32 %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @HeightOfScreen(i32 %275)
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %263, %250
  br label %280

280:                                              ; preds = %279, %241
  br label %281

281:                                              ; preds = %280, %214
  br label %282

282:                                              ; preds = %281, %179
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 3
  %287 = and i32 %286, -4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @XGetModifierMapping(i32* %292)
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 5
  store i32 %293, i32* %296, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %298 = call i32 @xkeymap_init(%struct.TYPE_11__* %297)
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %282
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @XOpenIM(i32* %306, i32* null, i32* null, i32* null)
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 4
  store i32 %307, i32* %310, align 8
  br label %311

311:                                              ; preds = %303, %282
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %313 = call i32 @xclip_init(%struct.TYPE_11__* %312)
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %315 = call i32 @ewmh_init(%struct.TYPE_11__* %314)
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %311
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %322 = call i32 @seamless_init(%struct.TYPE_11__* %321)
  br label %323

323:                                              ; preds = %320, %311
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to i8*
  %337 = call i32 @DEBUG_RDP5(i8* %336)
  %338 = load i8*, i8** @True, align 8
  store i8* %338, i8** %2, align 8
  br label %339

339:                                              ; preds = %323, %71, %17
  %340 = load i8*, i8** %2, align 8
  ret i8* %340
}

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @XDisplayName(i32*) #1

declare dso_local i64 @ImageByteOrder(i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @ConnectionNumber(i32*) #1

declare dso_local i32 @ScreenOfDisplay(i32*, i32) #1

declare dso_local i32 @DefaultDepthOfScreen(i32) #1

declare dso_local i32 @select_visual(%struct.TYPE_11__*) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @XCreateColormap(i32*, i32, i32, i32) #1

declare dso_local i32 @RootWindowOfScreen(i32) #1

declare dso_local i64 @DoesBackingStore(i32) #1

declare dso_local i32 @WidthOfScreen(i32) #1

declare dso_local i32 @HeightOfScreen(i32) #1

declare dso_local i64 @get_current_workarea(%struct.TYPE_11__*, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @XGetModifierMapping(i32*) #1

declare dso_local i32 @xkeymap_init(%struct.TYPE_11__*) #1

declare dso_local i32 @XOpenIM(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xclip_init(%struct.TYPE_11__*) #1

declare dso_local i32 @ewmh_init(%struct.TYPE_11__*) #1

declare dso_local i32 @seamless_init(%struct.TYPE_11__*) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
