; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_Paint.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_10__*, i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@LBS_NOREDRAW = common dso_local global i32 0, align 4
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@WM_CTLCOLORLISTBOX = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@ETO_CLIPPED = common dso_local global i32 0, align 4
@ODA_FOCUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@ODA_DRAWENTIRE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64)* @LISTBOX_Paint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_Paint(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %15, 1
  store i64 %16, i64* %7, align 8
  %17 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i32 -1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  store i32 -1, i32* %22, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LBS_NOREDRAW, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %364

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @SetRect(%struct.TYPE_11__* %8, i32 0, i32 0, i64 %33, i64 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  store i64 %50, i64* %51, align 8
  br label %70

52:                                               ; preds = %30
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 15
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 15
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @SetWindowOrgEx(i64 %58, i64 %61, i32 0, i32* null)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 15
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %65
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %57, %52
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 14
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 14
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @SelectObject(i64 %76, i64 %79)
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @WM_CTLCOLORLISTBOX, align 4
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 12
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i64 @SendMessageW(i32 %84, i32 %85, i32 %87, i32 %91)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @SelectObject(i64 %96, i64 %97)
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %95, %81
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @IsWindowEnabled(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %5, align 8
  %107 = load i32, i32* @COLOR_GRAYTEXT, align 4
  %108 = call i32 @GetSysColor(i32 %107)
  %109 = call i32 @SetTextColor(i64 %106, i32 %108)
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %155, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %155

120:                                              ; preds = %115
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %136, i64* %137, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load i32, i32* @ETO_OPAQUE, align 4
  %140 = load i32, i32* @ETO_CLIPPED, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @ExtTextOutW(i64 %138, i32 0, i32 0, i32 %141, %struct.TYPE_11__* %8, i32* null, i32 0, i32* null)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* @ODA_FOCUS, align 4
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @LISTBOX_PaintItem(%struct.TYPE_12__* %143, i64 %144, %struct.TYPE_11__* %8, i64 %148, i32 %149, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %130, %125, %120, %115, %110
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %273, %155
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ult i64 %160, %163
  br i1 %164, label %165, label %276

165:                                              ; preds = %159
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %178, i64* %179, align 8
  br label %192

180:                                              ; preds = %165
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 11
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %182, %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %180, %172
  %193 = load i64, i64* %6, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = icmp eq i64 %193, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = bitcast %struct.TYPE_11__* %9 to i8*
  %201 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 48, i1 false)
  br label %202

202:                                              ; preds = %199, %192
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %204 = load i64, i64* %5, align 8
  %205 = load i64, i64* %6, align 8
  %206 = load i32, i32* @ODA_DRAWENTIRE, align 4
  %207 = load i32, i32* @TRUE, align 4
  %208 = call i32 @LISTBOX_PaintItem(%struct.TYPE_12__* %203, i64 %204, %struct.TYPE_11__* %8, i64 %205, i32 %206, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store i64 %210, i64* %211, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %261

218:                                              ; preds = %202
  %219 = load i64, i64* %7, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %261, label %221

221:                                              ; preds = %218
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %223 = call i32 @IS_OWNERDRAW(%struct.TYPE_12__* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp slt i64 %227, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %225
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %235, i64* %236, align 8
  %237 = load i64, i64* %5, align 8
  %238 = load i32, i32* @ETO_OPAQUE, align 4
  %239 = load i32, i32* @ETO_CLIPPED, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @ExtTextOutW(i64 %237, i32 0, i32 0, i32 %240, %struct.TYPE_11__* %8, i32* null, i32 0, i32* null)
  br label %242

242:                                              ; preds = %232, %225
  br label %243

243:                                              ; preds = %242, %221
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 10
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %246
  store i64 %249, i64* %247, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 10
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, %252
  store i64 %255, i64* %253, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = sub i64 %259, 1
  store i64 %260, i64* %7, align 8
  br label %272

261:                                              ; preds = %218, %202
  %262 = load i64, i64* %7, align 8
  %263 = add i64 %262, -1
  store i64 %263, i64* %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp sge i64 %265, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %276

271:                                              ; preds = %261
  br label %272

272:                                              ; preds = %271, %243
  br label %273

273:                                              ; preds = %272
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %6, align 8
  br label %159

276:                                              ; preds = %270, %159
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %278, %280
  br i1 %281, label %282, label %302

282:                                              ; preds = %276
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 9
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %282
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %287
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = load i64, i64* %5, align 8
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = load i32, i32* @ODA_FOCUS, align 4
  %300 = load i32, i32* @FALSE, align 4
  %301 = call i32 @LISTBOX_PaintItem(%struct.TYPE_12__* %293, i64 %294, %struct.TYPE_11__* %9, i64 %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %292, %287, %282, %276
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %304 = call i32 @IS_OWNERDRAW(%struct.TYPE_12__* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %349, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = icmp slt i64 %308, %311
  br i1 %312, label %313, label %323

313:                                              ; preds = %306
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %316, i64* %317, align 8
  %318 = load i64, i64* %5, align 8
  %319 = load i32, i32* @ETO_OPAQUE, align 4
  %320 = load i32, i32* @ETO_CLIPPED, align 4
  %321 = or i32 %319, %320
  %322 = call i32 @ExtTextOutW(i64 %318, i32 0, i32 0, i32 %321, %struct.TYPE_11__* %8, i32* null, i32 0, i32* null)
  br label %323

323:                                              ; preds = %313, %306
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 7
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 7
  store i64 %332, i64* %333, align 8
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 7
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  store i64 %336, i64* %337, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store i64 0, i64* %338, align 8
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i64 %341, i64* %342, align 8
  %343 = load i64, i64* %5, align 8
  %344 = load i32, i32* @ETO_OPAQUE, align 4
  %345 = load i32, i32* @ETO_CLIPPED, align 4
  %346 = or i32 %344, %345
  %347 = call i32 @ExtTextOutW(i64 %343, i32 0, i32 0, i32 %346, %struct.TYPE_11__* %8, i32* null, i32 0, i32* null)
  br label %348

348:                                              ; preds = %330, %323
  br label %349

349:                                              ; preds = %348, %302
  %350 = load i64, i64* %10, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %349
  %353 = load i64, i64* %5, align 8
  %354 = load i64, i64* %10, align 8
  %355 = call i64 @SelectObject(i64 %353, i64 %354)
  br label %356

356:                                              ; preds = %352, %349
  %357 = load i64, i64* %12, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load i64, i64* %5, align 8
  %361 = load i64, i64* %12, align 8
  %362 = call i64 @SelectObject(i64 %360, i64 %361)
  br label %363

363:                                              ; preds = %359, %356
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %363, %29
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetRect(%struct.TYPE_11__*, i32, i32, i64, i64) #2

declare dso_local i32 @SetWindowOrgEx(i64, i64, i32, i32*) #2

declare dso_local i64 @SelectObject(i64, i64) #2

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @IsWindowEnabled(i64) #2

declare dso_local i32 @SetTextColor(i64, i32) #2

declare dso_local i32 @GetSysColor(i32) #2

declare dso_local i32 @ExtTextOutW(i64, i32, i32, i32, %struct.TYPE_11__*, i32*, i32, i32*) #2

declare dso_local i32 @LISTBOX_PaintItem(%struct.TYPE_12__*, i64, %struct.TYPE_11__*, i64, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_OWNERDRAW(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
