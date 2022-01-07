; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_USBCCGP_BuildConfigurationDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_USBCCGP_BuildConfigurationDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_23__*, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_27__* }

@.str = private unnamed_addr constant [38 x i8] c"USBCCGP_BuildConfigurationDescriptor\0A\00", align 1
@USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE = common dso_local global i64 0, align 8
@USB_INTERFACE_DESCRIPTOR_TYPE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@NonPagedPool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"[USBCCGP] Failed to allocate %lu Bytes\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"InterfaceDescriptor %p Alternate %x InterfaceNumber %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBCCGP_BuildConfigurationDescriptor(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_21__* @IoGetCurrentIrpStackLocation(i32 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %6, align 8
  %19 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %7, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %8, align 8
  store i64 4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %108, %2
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %27
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %40, i64 %41
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %9, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %16, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %53 = ptrtoint %struct.TYPE_27__* %52 to i64
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = inttoptr i64 %57 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %9, align 8
  br label %59

59:                                               ; preds = %104, %35
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %61 = ptrtoint %struct.TYPE_27__* %60 to i64
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = ptrtoint %struct.TYPE_27__* %62 to i64
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = icmp sge i64 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %107

70:                                               ; preds = %59
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %70
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @USB_INTERFACE_DESCRIPTOR_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i64, i64* %16, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %107

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %90, %70
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %98 = ptrtoint %struct.TYPE_27__* %97 to i64
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %98, %101
  %103 = inttoptr i64 %102 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %103, %struct.TYPE_27__** %9, align 8
  br label %104

104:                                              ; preds = %96
  %105 = load i64, i64* @TRUE, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %59, label %107

107:                                              ; preds = %104, %88, %69
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %27

111:                                              ; preds = %27
  %112 = load i32, i32* @NonPagedPool, align 4
  %113 = load i64, i64* %10, align 8
  %114 = call %struct.TYPE_27__* @AllocateItem(i32 %112, i64 %113)
  store %struct.TYPE_27__* %114, %struct.TYPE_27__** %14, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %116 = icmp ne %struct.TYPE_27__* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %120, i32* %3, align 4
  br label %276

121:                                              ; preds = %111
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %124 = call i32 @RtlCopyMemory(%struct.TYPE_27__* %122, %struct.TYPE_27__* %123, i64 4)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %126 = ptrtoint %struct.TYPE_27__* %125 to i64
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %126, %129
  %131 = inttoptr i64 %130 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %131, %struct.TYPE_27__** %15, align 8
  store i64 0, i64* %11, align 8
  br label %132

132:                                              ; preds = %233, %121
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %133, %138
  br i1 %139, label %140, label %236

140:                                              ; preds = %132
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %145, i64 %146
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  store %struct.TYPE_27__* %148, %struct.TYPE_27__** %9, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %16, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @RtlCopyMemory(%struct.TYPE_27__* %152, %struct.TYPE_27__* %153, i64 %156)
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i64 %160
  store %struct.TYPE_27__* %162, %struct.TYPE_27__** %15, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %164 = ptrtoint %struct.TYPE_27__* %163 to i64
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %164, %167
  %169 = inttoptr i64 %168 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %169, %struct.TYPE_27__** %9, align 8
  br label %170

170:                                              ; preds = %229, %140
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %172 = ptrtoint %struct.TYPE_27__* %171 to i64
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %174 = ptrtoint %struct.TYPE_27__* %173 to i64
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = icmp sge i64 %172, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  br label %232

181:                                              ; preds = %170
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %221

187:                                              ; preds = %181
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @USB_INTERFACE_DESCRIPTOR_TYPE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %187
  %194 = load i64, i64* %16, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %232

200:                                              ; preds = %193
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_27__* %201, i32 %204, i64 %207)
  br label %209

209:                                              ; preds = %200, %187
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @RtlCopyMemory(%struct.TYPE_27__* %210, %struct.TYPE_27__* %211, i64 %214)
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i64 %218
  store %struct.TYPE_27__* %220, %struct.TYPE_27__** %15, align 8
  br label %221

221:                                              ; preds = %209, %181
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %223 = ptrtoint %struct.TYPE_27__* %222 to i64
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %223, %226
  %228 = inttoptr i64 %227 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %228, %struct.TYPE_27__** %9, align 8
  br label %229

229:                                              ; preds = %221
  %230 = load i64, i64* @TRUE, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %170, label %232

232:                                              ; preds = %229, %199, %180
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %11, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %11, align 8
  br label %132

236:                                              ; preds = %132
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %237, %struct.TYPE_27__** %8, align 8
  %238 = load i64, i64* %10, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 4
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %253, %struct.TYPE_28__** %13, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %255 = call i32 @ASSERT(%struct.TYPE_28__* %254)
  %256 = load i64, i64* %10, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @min(i64 %256, i64 %260)
  store i64 %261, i64* %12, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %264, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %267 = load i64, i64* %12, align 8
  %268 = call i32 @RtlCopyMemory(%struct.TYPE_27__* %265, %struct.TYPE_27__* %266, i64 %267)
  %269 = load i64, i64* %12, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  store i64 %269, i64* %272, align 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %274 = call i32 @FreeItem(%struct.TYPE_27__* %273)
  %275 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %236, %117
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.TYPE_21__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local %struct.TYPE_27__* @AllocateItem(i32, i64) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_27__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @ASSERT(%struct.TYPE_28__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @FreeItem(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
