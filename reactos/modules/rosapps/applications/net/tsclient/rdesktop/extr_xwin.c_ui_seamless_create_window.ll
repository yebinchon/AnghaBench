; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_create_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_25__*, %struct.TYPE_27__*, i64, i64, i64, i64, i64, i32, i8*, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i8*, i8*, i32, i32 }

@InputOutput = common dso_local global i32 0, align 4
@CWBackPixel = common dso_local global i32 0, align 4
@CWBackingStore = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SeamlessRDP\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rdesktop\00", align 1
@USPosition = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"ui_seamless_create_window: No parent window 0x%lx\0A\00", align 1
@SEAMLESSRDP_CREATE_MODAL = common dso_local global i64 0, align 8
@PropertyChangeMask = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@SEAMLESSRDP_NOTYETMAPPED = common dso_local global i32 0, align 4
@WindowGroupHint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_seamless_create_window(%struct.TYPE_29__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %275

25:                                               ; preds = %5
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.TYPE_27__* @sw_get_window_by_id(%struct.TYPE_29__* %26, i64 %27)
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %17, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %30 = icmp ne %struct.TYPE_27__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %275

32:                                               ; preds = %25
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %34 = call i32 @get_window_attribs(%struct.TYPE_29__* %33, i32* %12)
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RootWindowOfScreen(i32 %41)
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @InputOutput, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CWBackPixel, align 4
  %53 = load i32, i32* @CWBackingStore, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CWColormap, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CWBorderPixel, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @XCreateWindow(i32 %37, i32 %42, i32 -1, i32 -1, i32 1, i32 1, i32 0, i32 %46, i32 %47, i32 %51, i32 %58, i32* %12)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @XStoreName(i32 %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ewmh_set_wm_name(%struct.TYPE_29__* %65, i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mwm_hide_decorations(%struct.TYPE_29__* %68, i32 %69)
  %71 = call %struct.TYPE_28__* (...) @XAllocClassHint()
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %13, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %73 = icmp ne %struct.TYPE_28__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %32
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %84 = call i32 @XSetClassHint(i32 %81, i32 %82, %struct.TYPE_28__* %83)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %86 = call i32 @XFree(%struct.TYPE_28__* %85)
  br label %87

87:                                               ; preds = %74, %32
  %88 = call %struct.TYPE_28__* (...) @XAllocSizeHints()
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %14, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %90 = icmp ne %struct.TYPE_28__* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32, i32* @USPosition, align 4
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %100 = call i32 @XSetWMNormalHints(i32 %97, i32 %98, %struct.TYPE_28__* %99)
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %102 = call i32 @XFree(%struct.TYPE_28__* %101)
  br label %103

103:                                              ; preds = %91, %87
  %104 = load i64, i64* %9, align 8
  %105 = icmp eq i64 %104, 4294967295
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @RootWindowOfScreen(i32 %114)
  %116 = call i32 @XSetTransientForHint(i32 %109, i32 %110, i32 %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @ewmh_set_window_popup(%struct.TYPE_29__* %117, i32 %118)
  br label %143

120:                                              ; preds = %103
  %121 = load i64, i64* %9, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call %struct.TYPE_27__* @sw_get_window_by_id(%struct.TYPE_29__* %124, i64 %125)
  store %struct.TYPE_27__* %126, %struct.TYPE_27__** %18, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %128 = icmp ne %struct.TYPE_27__* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @XSetTransientForHint(i32 %132, i32 %133, i32 %136)
  br label %141

138:                                              ; preds = %123
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %138, %129
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @SEAMLESSRDP_CREATE_MODAL, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @RootWindowOfScreen(i32 %159)
  %161 = call i32 @XSetTransientForHint(i32 %154, i32 %155, i32 %160)
  br label %162

162:                                              ; preds = %151, %148
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @ewmh_set_window_modal(%struct.TYPE_29__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %143
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %168 = call i32 @get_input_mask(%struct.TYPE_29__* %167, i64* %16)
  %169 = load i64, i64* @PropertyChangeMask, align 8
  %170 = load i64, i64* %16, align 8
  %171 = or i64 %170, %169
  store i64 %171, i64* %16, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @XSelectInput(i32 %174, i32 %175, i64 %176)
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 1
  %185 = call i32 @XSetWMProtocols(i32 %180, i32 %181, i32* %184, i32 1)
  %186 = call i8* @xmalloc(i32 144)
  %187 = bitcast i8* %186 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %187, %struct.TYPE_27__** %17, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 17
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %197 = load i64, i64* %8, align 8
  %198 = load i32, i32* @False, align 4
  %199 = call %struct.TYPE_25__* @sw_find_group(%struct.TYPE_29__* %196, i64 %197, i32 %198)
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 2
  store %struct.TYPE_25__* %199, %struct.TYPE_25__** %201, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 16
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 15
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 14
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 13
  store i64 0, i64* %215, align 8
  %216 = load i32, i32* @SEAMLESSRDP_NOTYETMAPPED, align 4
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 12
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 11
  store i64 0, i64* %220, align 8
  %221 = call i8* @xmalloc(i32 4)
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 10
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 10
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @timerclear(i8* %226)
  %228 = load i32, i32* @False, align 4
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 9
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 8
  store i64 0, i64* %232, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 6
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 7
  store i64 0, i64* %236, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 4
  store i64 0, i64* %238, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 5
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 3
  store %struct.TYPE_27__* %244, %struct.TYPE_27__** %246, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  store %struct.TYPE_27__* %247, %struct.TYPE_27__** %250, align 8
  %251 = call %struct.TYPE_28__* (...) @XAllocWMHints()
  store %struct.TYPE_28__* %251, %struct.TYPE_28__** %15, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %253 = icmp ne %struct.TYPE_28__* %252, null
  br i1 %253, label %254, label %275

254:                                              ; preds = %166
  %255 = load i32, i32* @WindowGroupHint, align 4
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %272 = call i32 @XSetWMHints(i32 %267, i32 %270, %struct.TYPE_28__* %271)
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %274 = call i32 @XFree(%struct.TYPE_28__* %273)
  br label %275

275:                                              ; preds = %24, %31, %254, %166
  ret void
}

declare dso_local %struct.TYPE_27__* @sw_get_window_by_id(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @get_window_attribs(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RootWindowOfScreen(i32) #1

declare dso_local i32 @XStoreName(i32, i32, i8*) #1

declare dso_local i32 @ewmh_set_wm_name(%struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @mwm_hide_decorations(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @XAllocClassHint(...) #1

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @XFree(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @XAllocSizeHints(...) #1

declare dso_local i32 @XSetWMNormalHints(i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @XSetTransientForHint(i32, i32, i32) #1

declare dso_local i32 @ewmh_set_window_popup(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @warning(i8*, i64) #1

declare dso_local i32 @ewmh_set_window_modal(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @get_input_mask(%struct.TYPE_29__*, i64*) #1

declare dso_local i32 @XSelectInput(i32, i32, i64) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i32*, i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.TYPE_25__* @sw_find_group(%struct.TYPE_29__*, i64, i32) #1

declare dso_local i32 @timerclear(i8*) #1

declare dso_local %struct.TYPE_28__* @XAllocWMHints(...) #1

declare dso_local i32 @XSetWMHints(i32, i32, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
