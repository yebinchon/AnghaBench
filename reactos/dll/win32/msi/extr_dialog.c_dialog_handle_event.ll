; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_dialog_handle_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_dialog_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@szText = common dso_local global i32 0, align 4
@szEmpty = common dso_local global i32* null, align 8
@szProgress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"progress: func %u val1 %u val2 %u\0A\00", align 1
@PBM_SETRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PBM_SETPOS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown progress message %u\0A\00", align 1
@szProperty = common dso_local global i32 0, align 4
@szSelectionPath = common dso_local global i32 0, align 4
@msidbControlAttributesIndirect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Attribute %s not being set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32*, i32*)* @dialog_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dialog_handle_event(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_13__* @msi_dialog_find_control(%struct.TYPE_12__* %21, i32* %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %268

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @szText, align 4
  %30 = call i32 @strcmpW(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @MSI_RecordGetString(i32* %33, i32 1)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @msi_dialog_get_style(i32* %35, i32** %11)
  store i32* %36, i32** %12, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @deformat_string(%struct.TYPE_15__* %39, i32* %40, i32** %13)
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32*, i32** %13, align 8
  store i32* %45, i32** %11, align 8
  br label %48

46:                                               ; preds = %32
  %47 = load i32*, i32** @szEmpty, align 8
  store i32* %47, i32** %11, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @SetWindowTextW(i32 %51, i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @msi_free(i32* %54)
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @msi_free(i32* %56)
  %58 = call i32 @msi_dialog_check_messages(i32* null)
  br label %268

59:                                               ; preds = %27
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @szProgress, align 4
  %62 = call i32 @strcmpW(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %211, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @MSI_RecordGetInteger(i32* %65, i32 1)
  store i32 %66, i32* %14, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @MSI_RecordGetInteger(i32* %67, i32 2)
  store i32 %68, i32* %15, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @MSI_RecordGetInteger(i32* %69, i32 3)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = sdiv i32 %75, 512
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %207 [
    i32 0, label %78
    i32 1, label %129
    i32 2, label %144
    i32 3, label %201
  ]

78:                                               ; preds = %64
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PBM_SETRANGE, align 4
  %83 = call i32 @MAKELPARAM(i32 0, i32 100)
  %84 = call i32 @SendMessageW(i32 %81, i32 %82, i32 0, i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %78
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 100, %92 ]
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PBM_SETPOS, align 4
  %107 = call i32 @SendMessageW(i32 %105, i32 %106, i32 100, i32 0)
  br label %128

108:                                              ; preds = %78
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  br label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 100, %113 ]
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* @FALSE, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PBM_SETPOS, align 4
  %127 = call i32 @SendMessageW(i32 %125, i32 %126, i32 0, i32 0)
  br label %128

128:                                              ; preds = %114, %93
  br label %210

129:                                              ; preds = %64
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %132
  br label %210

144:                                              ; preds = %64
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %144
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %164

161:                                              ; preds = %149
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %155
  br label %188

165:                                              ; preds = %144
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %168, %169
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %165
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %187

181:                                              ; preds = %165
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %181, %175
  br label %188

188:                                              ; preds = %187, %164
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @PBM_SETPOS, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @MulDiv(i32 100, i32 %195, i32 %198)
  %200 = call i32 @SendMessageW(i32 %191, i32 %192, i32 %199, i32 0)
  br label %210

201:                                              ; preds = %64
  %202 = load i32, i32* %17, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %210

207:                                              ; preds = %64
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %207, %201, %188, %143, %128
  br label %267

211:                                              ; preds = %59
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* @szProperty, align 4
  %214 = call i32 @strcmpW(i32* %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %233, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %218 = call %struct.TYPE_14__* @msi_seltree_get_selected_feature(%struct.TYPE_13__* %217)
  store %struct.TYPE_14__* %218, %struct.TYPE_14__** %18, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %220 = icmp ne %struct.TYPE_14__* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @msi_dialog_set_property(%struct.TYPE_15__* %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %221, %216
  br label %266

233:                                              ; preds = %211
  %234 = load i32*, i32** %7, align 8
  %235 = load i32, i32* @szSelectionPath, align 4
  %236 = call i32 @strcmpW(i32* %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %261, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @msidbControlAttributesIndirect, align 4
  %243 = and i32 %241, %242
  store i32 %243, i32* %19, align 4
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %19, align 4
  %249 = call i32* @msi_dialog_dup_property(%struct.TYPE_12__* %244, i32 %247, i32 %248)
  store i32* %249, i32** %20, align 8
  %250 = load i32*, i32** %20, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %238
  br label %268

253:                                              ; preds = %238
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %20, align 8
  %258 = call i32 @SetWindowTextW(i32 %256, i32* %257)
  %259 = load i32*, i32** %20, align 8
  %260 = call i32 @msi_free(i32* %259)
  br label %265

261:                                              ; preds = %233
  %262 = load i32*, i32** %7, align 8
  %263 = call i32 @debugstr_w(i32* %262)
  %264 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %263)
  br label %268

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %232
  br label %267

267:                                              ; preds = %266, %210
  br label %268

268:                                              ; preds = %26, %252, %261, %267, %48
  ret void
}

declare dso_local %struct.TYPE_13__* @msi_dialog_find_control(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @strcmpW(i32*, i32) #1

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32* @msi_dialog_get_style(i32*, i32**) #1

declare dso_local i32 @deformat_string(%struct.TYPE_15__*, i32*, i32**) #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @msi_dialog_check_messages(i32*) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @msi_seltree_get_selected_feature(%struct.TYPE_13__*) #1

declare dso_local i32 @msi_dialog_set_property(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @msi_dialog_dup_property(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
