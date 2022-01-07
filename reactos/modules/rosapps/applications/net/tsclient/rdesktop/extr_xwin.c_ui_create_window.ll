; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_20__, i32, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_20__ = type { i64, i32*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32*, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@__const.ui_create_window.null_pointer_mask = private unnamed_addr constant [1 x i32] [i32 128], align 4
@InputOutput = common dso_local global i32 0, align 4
@CWBackPixel = common dso_local global i32 0, align 4
@CWBackingStore = common dso_local global i32 0, align 4
@CWOverrideRedirect = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rdesktop\00", align 1
@PMinSize = common dso_local global i32 0, align 4
@PMaxSize = common dso_local global i32 0, align 4
@PPosition = common dso_local global i32 0, align 4
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@XNFocusWindow = common dso_local global i32 0, align 4
@XNFilterEvents = common dso_local global i32 0, align 4
@VisibilityChangeMask = common dso_local global i32 0, align 4
@VisibilityNotify = common dso_local global i64 0, align 8
@VisibilityUnobscured = common dso_local global i64 0, align 8
@False = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"WM_PROTOCOLS\00", align 1
@True = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_window(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca [24 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %13 = bitcast [1 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([1 x i32]* @__const.ui_create_window.null_pointer_mask to i8*), i64 4, i1 false)
  %14 = bitcast [24 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 96, i1 false)
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 13
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @WidthOfScreen(i32 %23)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %24, %19 ], [ %28, %25 ]
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 13
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @HeightOfScreen(i32 %39)
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %40, %35 ], [ %44, %41 ]
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %56, %45
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @WidthOfScreen(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %72, %76
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %62, %56, %51
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90, %80
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @HeightOfScreen(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %106, %110
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %96, %90, %85
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %116 = call i32 @get_window_attribs(%struct.TYPE_23__* %115, i32* %5)
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @RootWindowOfScreen(i32 %123)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @InputOutput, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CWBackPixel, align 4
  %143 = load i32, i32* @CWBackingStore, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @CWOverrideRedirect, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @CWColormap, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @CWBorderPixel, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @XCreateWindow(i32 %119, i32 %124, i64 %127, i64 %130, i32 %131, i32 %132, i32 0, i32 %136, i32 %137, i32 %141, i32 %150, i32* %5)
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 8
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %114
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @XCreateGC(i32 %162, i32 %165, i32 0, i32* null)
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 8
  store i32* %167, i32** %170, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %172 = call i32 @ui_reset_clip(%struct.TYPE_23__* %171)
  br label %173

173:                                              ; preds = %159, %114
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 11
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %173
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @XCreateGC(i32 %182, i32 %185, i32 0, i32* null)
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 11
  store i32* %187, i32** %190, align 8
  br label %191

191:                                              ; preds = %179, %173
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 12
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %254

196:                                              ; preds = %191
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %254

202:                                              ; preds = %196
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @XCreatePixmap(i32 %205, i32 %208, i32 %211, i32 %214, i32 %218)
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 8
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @BlackPixelOfScreen(i32 %233)
  %235 = call i32 @XSetForeground(i32 %225, i32* %229, i32 %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 8
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @XFillRectangle(i32 %238, i64 %242, i32* %246, i32 0, i32 0, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %202, %196, %191
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 11
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @XStoreName(i32 %257, i32 %260, i32 %263)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %254
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @mwm_hide_decorations(%struct.TYPE_23__* %270, i32 %273)
  br label %275

275:                                              ; preds = %269, %254
  %276 = call %struct.TYPE_21__* (...) @XAllocClassHint()
  store %struct.TYPE_21__* %276, %struct.TYPE_21__** %6, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %278 = icmp ne %struct.TYPE_21__* %277, null
  br i1 %278, label %279, label %294

279:                                              ; preds = %275
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %281, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %283, align 8
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %291 = call i32 @XSetClassHint(i32 %286, i32 %289, %struct.TYPE_21__* %290)
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %293 = call i32 @XFree(%struct.TYPE_21__* %292)
  br label %294

294:                                              ; preds = %279, %275
  %295 = call %struct.TYPE_21__* (...) @XAllocSizeHints()
  store %struct.TYPE_21__* %295, %struct.TYPE_21__** %7, align 8
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %297 = icmp ne %struct.TYPE_21__* %296, null
  br i1 %297, label %298, label %339

298:                                              ; preds = %294
  %299 = load i32, i32* @PMinSize, align 4
  %300 = load i32, i32* @PMaxSize, align 4
  %301 = or i32 %299, %300
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %298
  %309 = load i32, i32* @PPosition, align 4
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 8
  br label %314

314:                                              ; preds = %308, %298
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 3
  store i32 %317, i32* %321, align 4
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 6
  store i32 %324, i32* %326, align 8
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 5
  store i32 %324, i32* %328, align 4
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %336 = call i32 @XSetWMNormalHints(i32 %331, i32 %334, %struct.TYPE_21__* %335)
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %338 = call i32 @XFree(%struct.TYPE_21__* %337)
  br label %339

339:                                              ; preds = %314, %294
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 9
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %339
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 9
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  %355 = call i32 @XReparentWindow(i32 %347, i32 %350, i32 %354, i32 0, i32 0)
  br label %356

356:                                              ; preds = %344, %339
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %358 = call i32 @get_input_mask(%struct.TYPE_23__* %357, i64* %10)
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 6
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 7
  %362 = load i32*, i32** %361, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %403

364:                                              ; preds = %356
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 6
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 7
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* @XNInputStyle, align 4
  %370 = load i32, i32* @XIMPreeditNothing, align 4
  %371 = load i32, i32* @XIMStatusNothing, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* @XNClientWindow, align 4
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @XNFocusWindow, align 4
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 8
  %381 = call i32* @XCreateIC(i32* %368, i32 %369, i32 %372, i32 %373, i32 %376, i32 %377, i32 %380, i32* null)
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 6
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 6
  store i32* %381, i32** %384, align 8
  %385 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 6
  %388 = load i32*, i32** %387, align 8
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %402

390:                                              ; preds = %364
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 6
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 6
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* @XNFilterEvents, align 4
  %396 = call i32* @XGetICValues(i32* %394, i32 %395, i64* %11, i32* null)
  %397 = icmp eq i32* %396, null
  br i1 %397, label %398, label %402

398:                                              ; preds = %390
  %399 = load i64, i64* %11, align 8
  %400 = load i64, i64* %10, align 8
  %401 = or i64 %400, %399
  store i64 %401, i64* %10, align 8
  br label %402

402:                                              ; preds = %398, %390, %364
  br label %403

403:                                              ; preds = %402, %356
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 8
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 8
  %410 = load i64, i64* %10, align 8
  %411 = call i32 @XSelectInput(i32 %406, i32 %409, i64 %410)
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @XMapWindow(i32 %414, i32 %417)
  br label %419

419:                                              ; preds = %425, %403
  %420 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %420, i32 0, i32 8
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @VisibilityChangeMask, align 4
  %424 = call i32 @XMaskEvent(i32 %422, i32 %423, %struct.TYPE_22__* %12)
  br label %425

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @VisibilityNotify, align 8
  %429 = icmp ne i64 %427, %428
  br i1 %429, label %419, label %430

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @VisibilityUnobscured, align 8
  %435 = icmp eq i64 %433, %434
  %436 = zext i1 %435 to i32
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 5
  store i32 %436, i32* %438, align 8
  %439 = load i8*, i8** @False, align 8
  %440 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %440, i32 0, i32 6
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 5
  store i8* %439, i8** %442, align 8
  %443 = load i8*, i8** @False, align 8
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 6
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 4
  store i8* %443, i8** %446, align 8
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @True, align 4
  %451 = call i8* @XInternAtom(i32 %449, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %450)
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 6
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 3
  store i8* %451, i8** %454, align 8
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 8
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @True, align 4
  %459 = call i8* @XInternAtom(i32 %457, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %458)
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 6
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 2
  store i8* %459, i8** %462, align 8
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 8
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 7
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %469, i32 0, i32 6
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 2
  %472 = call i32 @XSetWMProtocols(i32 %465, i32 %468, i8** %471, i32 1)
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 6
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = icmp eq i32* %476, null
  br i1 %477, label %478, label %486

478:                                              ; preds = %430
  %479 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %480 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %481 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 0
  %482 = call i32* @ui_create_cursor(%struct.TYPE_23__* %479, i32 0, i32 0, i32 1, i32 1, i32* %480, i32* %481)
  %483 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 6
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 1
  store i32* %482, i32** %485, align 8
  br label %486

486:                                              ; preds = %478, %430
  %487 = load i32, i32* @True, align 4
  ret i32 %487
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WidthOfScreen(i32) #2

declare dso_local i32 @HeightOfScreen(i32) #2

declare dso_local i32 @get_window_attribs(%struct.TYPE_23__*, i32*) #2

declare dso_local i32 @XCreateWindow(i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @RootWindowOfScreen(i32) #2

declare dso_local i8* @XCreateGC(i32, i32, i32, i32*) #2

declare dso_local i32 @ui_reset_clip(%struct.TYPE_23__*) #2

declare dso_local i64 @XCreatePixmap(i32, i32, i32, i32, i32) #2

declare dso_local i32 @XSetForeground(i32, i32*, i32) #2

declare dso_local i32 @BlackPixelOfScreen(i32) #2

declare dso_local i32 @XFillRectangle(i32, i64, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @XStoreName(i32, i32, i32) #2

declare dso_local i32 @mwm_hide_decorations(%struct.TYPE_23__*, i32) #2

declare dso_local %struct.TYPE_21__* @XAllocClassHint(...) #2

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @XFree(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @XAllocSizeHints(...) #2

declare dso_local i32 @XSetWMNormalHints(i32, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @XReparentWindow(i32, i32, i32, i32, i32) #2

declare dso_local i32 @get_input_mask(%struct.TYPE_23__*, i64*) #2

declare dso_local i32* @XCreateIC(i32*, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32* @XGetICValues(i32*, i32, i64*, i32*) #2

declare dso_local i32 @XSelectInput(i32, i32, i64) #2

declare dso_local i32 @XMapWindow(i32, i32) #2

declare dso_local i32 @XMaskEvent(i32, i32, %struct.TYPE_22__*) #2

declare dso_local i8* @XInternAtom(i32, i8*, i32) #2

declare dso_local i32 @XSetWMProtocols(i32, i32, i8**, i32) #2

declare dso_local i32* @ui_create_cursor(%struct.TYPE_23__*, i32, i32, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
