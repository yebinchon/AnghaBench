; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_draw_item.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_draw_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32*, i64 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_29__, i64, %struct.TYPE_28__, i32, %struct.TYPE_27__*, %struct.TYPE_33__* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i8*, i32, i32, i32, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@BUFFER_LEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@IMG_FOLDER_UP = common dso_local global i32 0, align 4
@IMG_FOLDER_CUR = common dso_local global i32 0, align 4
@ODS_FOCUS = common dso_local global i32 0, align 4
@IMG_OPEN_FOLDER = common dso_local global i32 0, align 4
@IMG_FOLDER = common dso_local global i32 0, align 4
@IMG_EXECUTABLE = common dso_local global i32 0, align 4
@IMG_DOCUMENT = common dso_local global i32 0, align 4
@IMG_FILE = common dso_local global i32 0, align 4
@IMG_NONE = common dso_local global i32 0, align 4
@IMAGE_WIDTH = common dso_local global i32 0, align 4
@TREE_LINE_DX = common dso_local global i32 0, align 4
@IMAGE_HEIGHT = common dso_local global i32 0, align 4
@RGN_AND = common dso_local global i32 0, align 4
@COLUMNS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_COMPRESSED = common dso_local global i32 0, align 4
@COLOR_COMPRESSED = common dso_local global i32 0, align 4
@COLOR_SELECTION = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@DI_NORMAL = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@CLR_DEFAULT = common dso_local global i32 0, align 4
@ILD_NORMAL = common dso_local global i32 0, align 4
@COL_SIZE = common dso_local global i32 0, align 4
@COL_DATE = common dso_local global i32 0, align 4
@COL_TIME = common dso_local global i32 0, align 4
@COL_INDEX = common dso_local global i32 0, align 4
@draw_item.fmtlow = internal constant [3 x i8] c"%X\00", align 1
@draw_item.fmthigh = internal constant [7 x i8] c"%X%08X\00", align 1
@DT_RIGHT = common dso_local global i32 0, align 4
@COL_LINKS = common dso_local global i32 0, align 4
@sNumFmt = common dso_local global i8* null, align 8
@DT_CENTER = common dso_local global i32 0, align 4
@COL_ATTRIBUTES = common dso_local global i32 0, align 4
@draw_item.s11Tabs = internal constant [24 x i8] c" \09 \09 \09 \09 \09 \09 \09 \09 \09 \09 \09 \00", align 16
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ENCRYPTED = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_TEMPORARY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SPARSE_FILE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_OFFLINE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32)* @draw_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_item(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1, %struct.TYPE_33__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_30__, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca %struct.TYPE_30__, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = load i32, i32* @BUFFER_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = bitcast %struct.TYPE_30__* %15 to i8*
  %39 = bitcast %struct.TYPE_30__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  store i32 0, i32* %20, align 4
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %41 = icmp ne %struct.TYPE_33__* %40, null
  br i1 %41, label %42, label %133

42:                                               ; preds = %4
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %119

51:                                               ; preds = %42
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %80

60:                                               ; preds = %51
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @IMG_FOLDER_UP, align 4
  store i32 %79, i32* %17, align 4
  br label %118

80:                                               ; preds = %69, %60, %51
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @IMG_FOLDER_CUR, align 4
  store i32 %99, i32* %17, align 4
  br label %117

100:                                              ; preds = %89, %80
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ODS_FOCUS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @IMG_OPEN_FOLDER, align 4
  store i32 %113, i32* %17, align 4
  br label %116

114:                                              ; preds = %105, %100
  %115 = load i32, i32* @IMG_FOLDER, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %78
  br label %132

119:                                              ; preds = %42
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @get_file_type(i8* %123)
  switch i32 %124, label %129 [
    i32 128, label %125
    i32 129, label %127
  ]

125:                                              ; preds = %119
  %126 = load i32, i32* @IMG_EXECUTABLE, align 4
  store i32 %126, i32* %17, align 4
  br label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @IMG_DOCUMENT, align 4
  store i32 %128, i32* %17, align 4
  br label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @IMG_FILE, align 4
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %129, %127, %125
  br label %132

132:                                              ; preds = %131, %118
  br label %135

133:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  %134 = load i32, i32* @IMG_NONE, align 4
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %381

140:                                              ; preds = %135
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %142 = icmp ne %struct.TYPE_33__* %141, null
  br i1 %142, label %143, label %375

143:                                              ; preds = %140
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IMAGE_WIDTH, align 4
  %152 = load i32, i32* @TREE_LINE_DX, align 4
  %153 = add nsw i32 %151, %152
  %154 = mul nsw i32 %150, %153
  %155 = add nsw i32 %147, %154
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %341

158:                                              ; preds = %143
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IMAGE_HEIGHT, align 4
  %164 = sdiv i32 %163, 2
  %165 = add nsw i32 %162, %164
  store i32 %165, i32* %22, align 4
  %166 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %166, i64* %25, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  store i32 %170, i32* %171, align 4
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %180, %187
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 2
  store i32 %188, i32* %189, align 4
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 3
  store i32 %193, i32* %194, align 4
  %195 = call i64 @CreateRectRgnIndirect(%struct.TYPE_30__* %24)
  store i64 %195, i64* %26, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %25, align 8
  %200 = call i32 @GetClipRgn(i32 %198, i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %158
  %203 = load i64, i64* %25, align 8
  %204 = call i32 @DeleteObject(i64 %203)
  store i64 0, i64* %25, align 8
  br label %205

205:                                              ; preds = %202, %158
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* %26, align 8
  %210 = load i32, i32* @RGN_AND, align 4
  %211 = call i32 @ExtSelectClipRgn(i32 %208, i64 %209, i32 %210)
  %212 = load i64, i64* %26, align 8
  %213 = call i32 @DeleteObject(i64 %212)
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %215, align 8
  store %struct.TYPE_33__* %216, %struct.TYPE_33__** %23, align 8
  %217 = icmp ne %struct.TYPE_33__* %216, null
  br i1 %217, label %218, label %285

218:                                              ; preds = %205
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* @IMAGE_WIDTH, align 4
  %224 = sdiv i32 %223, 2
  %225 = sub nsw i32 %222, %224
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @MoveToEx(i32 %221, i32 %225, i32 %226, i32 0)
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %18, align 4
  %232 = sub nsw i32 %231, 2
  %233 = load i32, i32* %22, align 4
  %234 = call i32 @LineTo(i32 %230, i32 %232, i32 %233)
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* @IMAGE_WIDTH, align 4
  %237 = sdiv i32 %236, 2
  %238 = sub nsw i32 %235, %237
  store i32 %238, i32* %21, align 4
  br label %239

239:                                              ; preds = %279, %218
  %240 = load i32, i32* @IMAGE_WIDTH, align 4
  %241 = load i32, i32* @TREE_LINE_DX, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %21, align 4
  %244 = sub nsw i32 %243, %242
  store i32 %244, i32* %21, align 4
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %246, align 8
  %248 = icmp ne %struct.TYPE_27__* %247, null
  br i1 %248, label %249, label %278

249:                                              ; preds = %239
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %249
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %21, align 4
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @MoveToEx(i32 %262, i32 %263, i32 %267, i32 0)
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %21, align 4
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @LineTo(i32 %271, i32 %272, i32 %276)
  br label %278

278:                                              ; preds = %259, %249, %239
  br label %279

279:                                              ; preds = %278
  %280 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %281, align 8
  store %struct.TYPE_33__* %282, %struct.TYPE_33__** %23, align 8
  %283 = icmp ne %struct.TYPE_33__* %282, null
  br i1 %283, label %239, label %284

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %205
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* @IMAGE_WIDTH, align 4
  %288 = sdiv i32 %287, 2
  %289 = sub nsw i32 %286, %288
  store i32 %289, i32* %21, align 4
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %21, align 4
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @MoveToEx(i32 %292, i32 %293, i32 %297, i32 0)
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %21, align 4
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @LineTo(i32 %301, i32 %302, i32 %303)
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %305, i32 0, i32 5
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %306, align 8
  %308 = icmp ne %struct.TYPE_27__* %307, null
  br i1 %308, label %309, label %329

309:                                              ; preds = %285
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %309
  %320 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %21, align 4
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @LineTo(i32 %322, i32 %323, i32 %327)
  br label %329

329:                                              ; preds = %319, %309, %285
  %330 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load i64, i64* %25, align 8
  %334 = call i32 @SelectClipRgn(i32 %332, i64 %333)
  %335 = load i64, i64* %25, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %329
  %338 = load i64, i64* %25, align 8
  %339 = call i32 @DeleteObject(i64 %338)
  br label %340

340:                                              ; preds = %337, %329
  br label %374

341:                                              ; preds = %143
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %349, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* @COLUMNS, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %373

349:                                              ; preds = %345, %341
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* @IMAGE_WIDTH, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32, i32* @TREE_LINE_DX, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %27, align 4
  %355 = load i32, i32* %27, align 4
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %20, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %355, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %349
  %365 = load i32, i32* %27, align 4
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %20, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %365, i32* %371, align 4
  br label %372

372:                                              ; preds = %364, %349
  br label %373

373:                                              ; preds = %372, %345
  br label %374

374:                                              ; preds = %373, %340
  br label %380

375:                                              ; preds = %140
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %18, align 4
  br label %380

380:                                              ; preds = %375, %374
  br label %402

381:                                              ; preds = %135
  %382 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %18, align 4
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %20, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %381
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* @COLUMNS, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %401

393:                                              ; preds = %389, %381
  %394 = load i32, i32* @IMAGE_WIDTH, align 4
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %20, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %394, i32* %400, align 4
  br label %401

401:                                              ; preds = %393, %389
  br label %402

402:                                              ; preds = %401, %380
  %403 = load i32, i32* %8, align 4
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %405, label %514

405:                                              ; preds = %402
  %406 = load i32, i32* %18, align 4
  %407 = sub nsw i32 %406, 2
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  store i32 %407, i32* %408, align 4
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* @FILE_ATTRIBUTE_COMPRESSED, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %405
  %414 = load i32, i32* @COLOR_COMPRESSED, align 4
  store i32 %414, i32* %14, align 4
  br label %417

415:                                              ; preds = %405
  %416 = call i32 @RGB(i32 0, i32 0, i32 0)
  store i32 %416, i32* %14, align 4
  br label %417

417:                                              ; preds = %415, %413
  %418 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @ODS_FOCUS, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %417
  %425 = call i32 @RGB(i32 255, i32 255, i32 255)
  store i32 %425, i32* %14, align 4
  %426 = load i32, i32* @COLOR_SELECTION, align 4
  store i32 %426, i32* %13, align 4
  br label %429

427:                                              ; preds = %417
  %428 = call i32 @RGB(i32 255, i32 255, i32 255)
  store i32 %428, i32* %13, align 4
  br label %429

429:                                              ; preds = %427, %424
  %430 = load i32, i32* %13, align 4
  %431 = call i64 @CreateSolidBrush(i32 %430)
  store i64 %431, i64* %16, align 8
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = load i64, i64* %16, align 8
  %436 = call i32 @FillRect(i32 %434, %struct.TYPE_30__* %15, i64 %435)
  %437 = load i64, i64* %16, align 8
  %438 = call i32 @DeleteObject(i64 %437)
  %439 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @TRANSPARENT, align 4
  %443 = call i32 @SetBkMode(i32 %441, i32 %442)
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %14, align 4
  %448 = call i32 @SetTextColor(i32 %446, i32 %447)
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %449, i32 0, i32 1
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %20, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %19, align 4
  %456 = load i32, i32* %19, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %513

458:                                              ; preds = %429
  %459 = load i32, i32* %17, align 4
  %460 = load i32, i32* @IMG_NONE, align 4
  %461 = icmp ne i32 %459, %460
  br i1 %461, label %462, label %513

462:                                              ; preds = %458
  %463 = load i32, i32* %19, align 4
  %464 = load i32, i32* @IMAGE_WIDTH, align 4
  %465 = icmp sgt i32 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = load i32, i32* @IMAGE_WIDTH, align 4
  store i32 %467, i32* %19, align 4
  br label %468

468:                                              ; preds = %466, %462
  %469 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %495

473:                                              ; preds = %468
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = icmp ne i32 %476, -1
  br i1 %477, label %478, label %495

478:                                              ; preds = %473
  %479 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %18, align 4
  %483 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* %19, align 4
  %491 = load i32, i32* @SM_CYSMICON, align 4
  %492 = call i32 @GetSystemMetrics(i32 %491)
  %493 = load i32, i32* @DI_NORMAL, align 4
  %494 = call i32 @DrawIconEx(i32 %481, i32 %482, i32 %486, i32 %489, i32 %490, i32 %492, i32 0, i32 0, i32 %493)
  br label %512

495:                                              ; preds = %473, %468
  %496 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @Globals, i32 0, i32 0), align 4
  %497 = load i32, i32* %17, align 4
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %18, align 4
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %19, align 4
  %507 = load i32, i32* @IMAGE_HEIGHT, align 4
  %508 = load i32, i32* %13, align 4
  %509 = load i32, i32* @CLR_DEFAULT, align 4
  %510 = load i32, i32* @ILD_NORMAL, align 4
  %511 = call i32 @ImageList_DrawEx(i32 %496, i32 %497, i32 %500, i32 %501, i32 %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %495, %478
  br label %513

513:                                              ; preds = %512, %458, %429
  br label %514

514:                                              ; preds = %513, %402
  %515 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %516 = icmp ne %struct.TYPE_33__* %515, null
  br i1 %516, label %518, label %517

517:                                              ; preds = %514
  store i32 1, i32* %28, align 4
  br label %912

518:                                              ; preds = %514
  %519 = load i32, i32* %20, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %20, align 4
  %521 = load i32, i32* %8, align 4
  %522 = icmp eq i32 %521, -1
  br i1 %522, label %523, label %532

523:                                              ; preds = %518
  %524 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %525 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %526 = load i32, i32* %20, align 4
  %527 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %528 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %528, i32 0, i32 1
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @output_text(%struct.TYPE_31__* %524, %struct.TYPE_32__* %525, i32 %526, i8* %530, i32 0)
  br label %550

532:                                              ; preds = %518
  %533 = load i32, i32* %8, align 4
  %534 = load i32, i32* %20, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %540, label %536

536:                                              ; preds = %532
  %537 = load i32, i32* %8, align 4
  %538 = load i32, i32* @COLUMNS, align 4
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %540, label %549

540:                                              ; preds = %536, %532
  %541 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %542 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %543 = load i32, i32* %20, align 4
  %544 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %544, i32 0, i32 3
  %546 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %545, i32 0, i32 1
  %547 = load i8*, i8** %546, align 8
  %548 = call i32 @calc_width(%struct.TYPE_31__* %541, %struct.TYPE_32__* %542, i32 %543, i8* %547)
  br label %549

549:                                              ; preds = %540, %536
  br label %550

550:                                              ; preds = %549, %523
  %551 = load i32, i32* %20, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %20, align 4
  %553 = load i32, i32* %12, align 4
  %554 = load i32, i32* @COL_SIZE, align 4
  %555 = and i32 %553, %554
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %594

557:                                              ; preds = %550
  %558 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %559 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %559, i32 0, i32 6
  %561 = load i64, i64* %560, align 8
  %562 = trunc i64 %561 to i32
  %563 = shl i32 %562, 32
  %564 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 3
  %566 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = or i32 %563, %567
  %569 = call i32 @format_longlong(i8* %32, i32 %568)
  %570 = load i32, i32* %8, align 4
  %571 = icmp eq i32 %570, -1
  br i1 %571, label %572, label %577

572:                                              ; preds = %557
  %573 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %574 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %575 = load i32, i32* %20, align 4
  %576 = call i32 @output_number(%struct.TYPE_31__* %573, %struct.TYPE_32__* %574, i32 %575, i8* %32)
  br label %591

577:                                              ; preds = %557
  %578 = load i32, i32* %8, align 4
  %579 = load i32, i32* %20, align 4
  %580 = icmp eq i32 %578, %579
  br i1 %580, label %585, label %581

581:                                              ; preds = %577
  %582 = load i32, i32* %8, align 4
  %583 = load i32, i32* @COLUMNS, align 4
  %584 = icmp eq i32 %582, %583
  br i1 %584, label %585, label %590

585:                                              ; preds = %581, %577
  %586 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %587 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %588 = load i32, i32* %20, align 4
  %589 = call i32 @calc_width(%struct.TYPE_31__* %586, %struct.TYPE_32__* %587, i32 %588, i8* %32)
  br label %590

590:                                              ; preds = %585, %581
  br label %591

591:                                              ; preds = %590, %572
  %592 = load i32, i32* %20, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %20, align 4
  br label %594

594:                                              ; preds = %591, %550
  %595 = load i32, i32* %12, align 4
  %596 = load i32, i32* @COL_DATE, align 4
  %597 = load i32, i32* @COL_TIME, align 4
  %598 = or i32 %596, %597
  %599 = and i32 %595, %598
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %689

601:                                              ; preds = %594
  %602 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %602, i32 0, i32 3
  %604 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %603, i32 0, i32 5
  %605 = load i32, i32* %12, align 4
  %606 = call i32 @format_date(i32* %604, i8* %32, i32 %605)
  %607 = load i32, i32* %8, align 4
  %608 = icmp eq i32 %607, -1
  br i1 %608, label %609, label %614

609:                                              ; preds = %601
  %610 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %611 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %612 = load i32, i32* %20, align 4
  %613 = call i32 @output_text(%struct.TYPE_31__* %610, %struct.TYPE_32__* %611, i32 %612, i8* %32, i32 0)
  br label %628

614:                                              ; preds = %601
  %615 = load i32, i32* %8, align 4
  %616 = load i32, i32* %20, align 4
  %617 = icmp eq i32 %615, %616
  br i1 %617, label %622, label %618

618:                                              ; preds = %614
  %619 = load i32, i32* %8, align 4
  %620 = load i32, i32* @COLUMNS, align 4
  %621 = icmp eq i32 %619, %620
  br i1 %621, label %622, label %627

622:                                              ; preds = %618, %614
  %623 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %624 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %625 = load i32, i32* %20, align 4
  %626 = call i32 @calc_width(%struct.TYPE_31__* %623, %struct.TYPE_32__* %624, i32 %625, i8* %32)
  br label %627

627:                                              ; preds = %622, %618
  br label %628

628:                                              ; preds = %627, %609
  %629 = load i32, i32* %20, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %20, align 4
  %631 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %632 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %631, i32 0, i32 3
  %633 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %632, i32 0, i32 4
  %634 = load i32, i32* %12, align 4
  %635 = call i32 @format_date(i32* %633, i8* %32, i32 %634)
  %636 = load i32, i32* %8, align 4
  %637 = icmp eq i32 %636, -1
  br i1 %637, label %638, label %643

638:                                              ; preds = %628
  %639 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %640 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %641 = load i32, i32* %20, align 4
  %642 = call i32 @output_text(%struct.TYPE_31__* %639, %struct.TYPE_32__* %640, i32 %641, i8* %32, i32 0)
  br label %657

643:                                              ; preds = %628
  %644 = load i32, i32* %8, align 4
  %645 = load i32, i32* %20, align 4
  %646 = icmp eq i32 %644, %645
  br i1 %646, label %651, label %647

647:                                              ; preds = %643
  %648 = load i32, i32* %8, align 4
  %649 = load i32, i32* @COLUMNS, align 4
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %656

651:                                              ; preds = %647, %643
  %652 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %653 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %654 = load i32, i32* %20, align 4
  %655 = call i32 @calc_width(%struct.TYPE_31__* %652, %struct.TYPE_32__* %653, i32 %654, i8* %32)
  br label %656

656:                                              ; preds = %651, %647
  br label %657

657:                                              ; preds = %656, %638
  %658 = load i32, i32* %20, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %20, align 4
  %660 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %661 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %661, i32 0, i32 3
  %663 = load i32, i32* %12, align 4
  %664 = call i32 @format_date(i32* %662, i8* %32, i32 %663)
  %665 = load i32, i32* %8, align 4
  %666 = icmp eq i32 %665, -1
  br i1 %666, label %667, label %672

667:                                              ; preds = %657
  %668 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %669 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %670 = load i32, i32* %20, align 4
  %671 = call i32 @output_text(%struct.TYPE_31__* %668, %struct.TYPE_32__* %669, i32 %670, i8* %32, i32 0)
  br label %686

672:                                              ; preds = %657
  %673 = load i32, i32* %8, align 4
  %674 = load i32, i32* %20, align 4
  %675 = icmp eq i32 %673, %674
  br i1 %675, label %680, label %676

676:                                              ; preds = %672
  %677 = load i32, i32* %8, align 4
  %678 = load i32, i32* @COLUMNS, align 4
  %679 = icmp eq i32 %677, %678
  br i1 %679, label %680, label %685

680:                                              ; preds = %676, %672
  %681 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %682 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %683 = load i32, i32* %20, align 4
  %684 = call i32 @calc_width(%struct.TYPE_31__* %681, %struct.TYPE_32__* %682, i32 %683, i8* %32)
  br label %685

685:                                              ; preds = %680, %676
  br label %686

686:                                              ; preds = %685, %667
  %687 = load i32, i32* %20, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %20, align 4
  br label %689

689:                                              ; preds = %686, %594
  %690 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %691 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %690, i32 0, i32 2
  %692 = load i64, i64* %691, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %694, label %785

694:                                              ; preds = %689
  %695 = load i32, i32* %12, align 4
  %696 = load i32, i32* @COL_INDEX, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %747

699:                                              ; preds = %694
  %700 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %701 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %701, i32 0, i32 2
  %703 = load i32, i32* %702, align 4
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %715

705:                                              ; preds = %699
  %706 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %707 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %707, i32 0, i32 2
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %711 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = call i32 (i8*, i8*, i32, ...) @wsprintfW(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @draw_item.fmthigh, i64 0, i64 0), i32 %709, i32 %713)
  br label %721

715:                                              ; preds = %699
  %716 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %717 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = call i32 (i8*, i8*, i32, ...) @wsprintfW(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @draw_item.fmtlow, i64 0, i64 0), i32 %719)
  br label %721

721:                                              ; preds = %715, %705
  %722 = load i32, i32* %8, align 4
  %723 = icmp eq i32 %722, -1
  br i1 %723, label %724, label %730

724:                                              ; preds = %721
  %725 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %726 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %727 = load i32, i32* %20, align 4
  %728 = load i32, i32* @DT_RIGHT, align 4
  %729 = call i32 @output_text(%struct.TYPE_31__* %725, %struct.TYPE_32__* %726, i32 %727, i8* %32, i32 %728)
  br label %744

730:                                              ; preds = %721
  %731 = load i32, i32* %8, align 4
  %732 = load i32, i32* %20, align 4
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %738, label %734

734:                                              ; preds = %730
  %735 = load i32, i32* %8, align 4
  %736 = load i32, i32* @COLUMNS, align 4
  %737 = icmp eq i32 %735, %736
  br i1 %737, label %738, label %743

738:                                              ; preds = %734, %730
  %739 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %740 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %741 = load i32, i32* %20, align 4
  %742 = call i32 @calc_width(%struct.TYPE_31__* %739, %struct.TYPE_32__* %740, i32 %741, i8* %32)
  br label %743

743:                                              ; preds = %738, %734
  br label %744

744:                                              ; preds = %743, %724
  %745 = load i32, i32* %20, align 4
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %20, align 4
  br label %747

747:                                              ; preds = %744, %694
  %748 = load i32, i32* %12, align 4
  %749 = load i32, i32* @COL_LINKS, align 4
  %750 = and i32 %748, %749
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %784

752:                                              ; preds = %747
  %753 = load i8*, i8** @sNumFmt, align 8
  %754 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %755 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %754, i32 0, i32 1
  %756 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 4
  %758 = call i32 (i8*, i8*, i32, ...) @wsprintfW(i8* %32, i8* %753, i32 %757)
  %759 = load i32, i32* %8, align 4
  %760 = icmp eq i32 %759, -1
  br i1 %760, label %761, label %767

761:                                              ; preds = %752
  %762 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %763 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %764 = load i32, i32* %20, align 4
  %765 = load i32, i32* @DT_CENTER, align 4
  %766 = call i32 @output_text(%struct.TYPE_31__* %762, %struct.TYPE_32__* %763, i32 %764, i8* %32, i32 %765)
  br label %781

767:                                              ; preds = %752
  %768 = load i32, i32* %8, align 4
  %769 = load i32, i32* %20, align 4
  %770 = icmp eq i32 %768, %769
  br i1 %770, label %775, label %771

771:                                              ; preds = %767
  %772 = load i32, i32* %8, align 4
  %773 = load i32, i32* @COLUMNS, align 4
  %774 = icmp eq i32 %772, %773
  br i1 %774, label %775, label %780

775:                                              ; preds = %771, %767
  %776 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %777 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %778 = load i32, i32* %20, align 4
  %779 = call i32 @calc_width(%struct.TYPE_31__* %776, %struct.TYPE_32__* %777, i32 %778, i8* %32)
  br label %780

780:                                              ; preds = %775, %771
  br label %781

781:                                              ; preds = %780, %761
  %782 = load i32, i32* %20, align 4
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %20, align 4
  br label %784

784:                                              ; preds = %781, %747
  br label %788

785:                                              ; preds = %689
  %786 = load i32, i32* %20, align 4
  %787 = add nsw i32 %786, 2
  store i32 %787, i32* %20, align 4
  br label %788

788:                                              ; preds = %785, %784
  %789 = load i32, i32* %12, align 4
  %790 = load i32, i32* @COL_ATTRIBUTES, align 4
  %791 = and i32 %789, %790
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %911

793:                                              ; preds = %788
  %794 = call i32 @lstrcpyW(i8* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @draw_item.s11Tabs, i64 0, i64 0))
  %795 = load i32, i32* %11, align 4
  %796 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %797 = and i32 %795, %796
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %793
  %800 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 78, i8* %800, align 16
  br label %886

801:                                              ; preds = %793
  %802 = load i32, i32* %11, align 4
  %803 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %804 = and i32 %802, %803
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %806, label %808

806:                                              ; preds = %801
  %807 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 82, i8* %807, align 2
  br label %808

808:                                              ; preds = %806, %801
  %809 = load i32, i32* %11, align 4
  %810 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %811 = and i32 %809, %810
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %815

813:                                              ; preds = %808
  %814 = getelementptr inbounds i8, i8* %32, i64 4
  store i8 72, i8* %814, align 4
  br label %815

815:                                              ; preds = %813, %808
  %816 = load i32, i32* %11, align 4
  %817 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %818 = and i32 %816, %817
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %822

820:                                              ; preds = %815
  %821 = getelementptr inbounds i8, i8* %32, i64 6
  store i8 83, i8* %821, align 2
  br label %822

822:                                              ; preds = %820, %815
  %823 = load i32, i32* %11, align 4
  %824 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %825 = and i32 %823, %824
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %829

827:                                              ; preds = %822
  %828 = getelementptr inbounds i8, i8* %32, i64 8
  store i8 65, i8* %828, align 8
  br label %829

829:                                              ; preds = %827, %822
  %830 = load i32, i32* %11, align 4
  %831 = load i32, i32* @FILE_ATTRIBUTE_COMPRESSED, align 4
  %832 = and i32 %830, %831
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %829
  %835 = getelementptr inbounds i8, i8* %32, i64 10
  store i8 67, i8* %835, align 2
  br label %836

836:                                              ; preds = %834, %829
  %837 = load i32, i32* %11, align 4
  %838 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %839 = and i32 %837, %838
  %840 = icmp ne i32 %839, 0
  br i1 %840, label %841, label %843

841:                                              ; preds = %836
  %842 = getelementptr inbounds i8, i8* %32, i64 12
  store i8 68, i8* %842, align 4
  br label %843

843:                                              ; preds = %841, %836
  %844 = load i32, i32* %11, align 4
  %845 = load i32, i32* @FILE_ATTRIBUTE_ENCRYPTED, align 4
  %846 = and i32 %844, %845
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %850

848:                                              ; preds = %843
  %849 = getelementptr inbounds i8, i8* %32, i64 14
  store i8 69, i8* %849, align 2
  br label %850

850:                                              ; preds = %848, %843
  %851 = load i32, i32* %11, align 4
  %852 = load i32, i32* @FILE_ATTRIBUTE_TEMPORARY, align 4
  %853 = and i32 %851, %852
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %857

855:                                              ; preds = %850
  %856 = getelementptr inbounds i8, i8* %32, i64 16
  store i8 84, i8* %856, align 16
  br label %857

857:                                              ; preds = %855, %850
  %858 = load i32, i32* %11, align 4
  %859 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %860 = and i32 %858, %859
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %864

862:                                              ; preds = %857
  %863 = getelementptr inbounds i8, i8* %32, i64 18
  store i8 80, i8* %863, align 2
  br label %864

864:                                              ; preds = %862, %857
  %865 = load i32, i32* %11, align 4
  %866 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %867 = and i32 %865, %866
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %871

869:                                              ; preds = %864
  %870 = getelementptr inbounds i8, i8* %32, i64 20
  store i8 81, i8* %870, align 4
  br label %871

871:                                              ; preds = %869, %864
  %872 = load i32, i32* %11, align 4
  %873 = load i32, i32* @FILE_ATTRIBUTE_OFFLINE, align 4
  %874 = and i32 %872, %873
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %878

876:                                              ; preds = %871
  %877 = getelementptr inbounds i8, i8* %32, i64 22
  store i8 79, i8* %877, align 2
  br label %878

878:                                              ; preds = %876, %871
  %879 = load i32, i32* %11, align 4
  %880 = load i32, i32* @FILE_ATTRIBUTE_NOT_CONTENT_INDEXED, align 4
  %881 = and i32 %879, %880
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %885

883:                                              ; preds = %878
  %884 = getelementptr inbounds i8, i8* %32, i64 24
  store i8 88, i8* %884, align 8
  br label %885

885:                                              ; preds = %883, %878
  br label %886

886:                                              ; preds = %885, %799
  %887 = load i32, i32* %8, align 4
  %888 = icmp eq i32 %887, -1
  br i1 %888, label %889, label %894

889:                                              ; preds = %886
  %890 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %891 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %892 = load i32, i32* %20, align 4
  %893 = call i32 @output_tabbed_text(%struct.TYPE_31__* %890, %struct.TYPE_32__* %891, i32 %892, i8* %32)
  br label %908

894:                                              ; preds = %886
  %895 = load i32, i32* %8, align 4
  %896 = load i32, i32* %20, align 4
  %897 = icmp eq i32 %895, %896
  br i1 %897, label %902, label %898

898:                                              ; preds = %894
  %899 = load i32, i32* %8, align 4
  %900 = load i32, i32* @COLUMNS, align 4
  %901 = icmp eq i32 %899, %900
  br i1 %901, label %902, label %907

902:                                              ; preds = %898, %894
  %903 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %904 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %905 = load i32, i32* %20, align 4
  %906 = call i32 @calc_tabbed_width(%struct.TYPE_31__* %903, %struct.TYPE_32__* %904, i32 %905, i8* %32)
  br label %907

907:                                              ; preds = %902, %898
  br label %908

908:                                              ; preds = %907, %889
  %909 = load i32, i32* %20, align 4
  %910 = add nsw i32 %909, 1
  store i32 %910, i32* %20, align 4
  br label %911

911:                                              ; preds = %908, %788
  store i32 0, i32* %28, align 4
  br label %912

912:                                              ; preds = %911, %517
  %913 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %913)
  %914 = load i32, i32* %28, align 4
  switch i32 %914, label %916 [
    i32 0, label %915
    i32 1, label %915
  ]

915:                                              ; preds = %912, %912
  ret void

916:                                              ; preds = %912
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_file_type(i8*) #3

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #3

declare dso_local i64 @CreateRectRgnIndirect(%struct.TYPE_30__*) #3

declare dso_local i32 @GetClipRgn(i32, i64) #3

declare dso_local i32 @DeleteObject(i64) #3

declare dso_local i32 @ExtSelectClipRgn(i32, i64, i32) #3

declare dso_local i32 @MoveToEx(i32, i32, i32, i32) #3

declare dso_local i32 @LineTo(i32, i32, i32) #3

declare dso_local i32 @SelectClipRgn(i32, i64) #3

declare dso_local i32 @RGB(i32, i32, i32) #3

declare dso_local i64 @CreateSolidBrush(i32) #3

declare dso_local i32 @FillRect(i32, %struct.TYPE_30__*, i64) #3

declare dso_local i32 @SetBkMode(i32, i32) #3

declare dso_local i32 @SetTextColor(i32, i32) #3

declare dso_local i32 @DrawIconEx(i32, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare dso_local i32 @GetSystemMetrics(i32) #3

declare dso_local i32 @ImageList_DrawEx(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare dso_local i32 @output_text(%struct.TYPE_31__*, %struct.TYPE_32__*, i32, i8*, i32) #3

declare dso_local i32 @calc_width(%struct.TYPE_31__*, %struct.TYPE_32__*, i32, i8*) #3

declare dso_local i32 @format_longlong(i8*, i32) #3

declare dso_local i32 @output_number(%struct.TYPE_31__*, %struct.TYPE_32__*, i32, i8*) #3

declare dso_local i32 @format_date(i32*, i8*, i32) #3

declare dso_local i32 @wsprintfW(i8*, i8*, i32, ...) #3

declare dso_local i32 @lstrcpyW(i8*, i8*) #3

declare dso_local i32 @output_tabbed_text(%struct.TYPE_31__*, %struct.TYPE_32__*, i32, i8*) #3

declare dso_local i32 @calc_tabbed_width(%struct.TYPE_31__*, %struct.TYPE_32__*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
