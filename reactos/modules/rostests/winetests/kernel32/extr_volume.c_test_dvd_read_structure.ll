; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_dvd_read_structure.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_dvd_read_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.COMPLETE_DVD_LAYER_DESCRIPTOR = type { %struct.TYPE_6__ }

@IOCTL_DVD_READ_STRUCTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IOCTL_DVD_READ_STRUCTURE not supported: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Length is 0x%04x instead of 0x0802\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Reserved[0] is %x instead of 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Reserved[1] is %x instead of 0\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"IOCTL_DVD_READ_STRUCTURE should fail with small buffer\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"IOCTL_DVD_READ_STRUCTURE should have failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"IOCTL_DVD_READ_STRUCTURE should have failed %d %u\0A\00", align 1
@ERROR_NOT_READY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [78 x i8] c"IOCTL_DVD_READ_STRUCTURE (DvdManufacturerDescriptor) failed, last error = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_dvd_read_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dvd_read_structure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, align 8
  %8 = alloca %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, align 8
  %9 = alloca %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, align 8
  %10 = alloca %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, align 8
  store i32 %0, i32* %2, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %19 = bitcast %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8 to %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*
  %20 = call i32 @DeviceIoControl(i32 %17, i32 %18, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %19, i32 16, i32* %4, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %262

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2050
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.COMPLETE_DVD_LAYER_DESCRIPTOR, %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %83, %26
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 4
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %70 = bitcast %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8 to %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @DeviceIoControl(i32 %68, i32 %69, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %70, i32 %71, i32* %4, i32* null)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = call i32 (...) @GetLastError()
  %77 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %66
  %80 = phi i1 [ false, %66 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %62

86:                                               ; preds = %62
  %87 = call i32 @SetLastError(i32 -559038737)
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %90 = call i32 @DeviceIoControl(i32 %88, i32 %89, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %7, i32 16, i32* %4, i32* null)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = call i32 (...) @GetLastError()
  %95 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93, %86
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @broken(i32 %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ true, %93 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %108 = bitcast %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8 to %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*
  %109 = call i32 @DeviceIoControl(i32 %106, i32 %107, %struct.TYPE_7__* null, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %108, i32 16, i32* %4, i32* null)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %101
  %113 = call i32 (...) @GetLastError()
  %114 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %115 = icmp eq i32 %113, %114
  br label %116

116:                                              ; preds = %112, %101
  %117 = phi i1 [ false, %101 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %141, %116
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %122, 32
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = call i32 @SetLastError(i32 -559038737)
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %128 = load i32, i32* %3, align 4
  %129 = bitcast %struct.COMPLETE_DVD_LAYER_DESCRIPTOR* %8 to %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*
  %130 = call i32 @DeviceIoControl(i32 %126, i32 %127, %struct.TYPE_7__* %6, i32 %128, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %129, i32 16, i32* %4, i32* null)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = call i32 (...) @GetLastError()
  %135 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %136 = icmp eq i32 %134, %135
  br label %137

137:                                              ; preds = %133, %124
  %138 = phi i1 [ false, %124 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %120

144:                                              ; preds = %120
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = call i32 @SetLastError(i32 -559038737)
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %149 = call i32 @DeviceIoControl(i32 %147, i32 %148, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* null, i32 16, i32* %4, i32* null)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = call i32 (...) @GetLastError()
  %154 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %155 = icmp eq i32 %153, %154
  br label %156

156:                                              ; preds = %152, %144
  %157 = phi i1 [ false, %144 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %159, i32 %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %184, %156
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 16
  br i1 %165, label %166, label %187

166:                                              ; preds = %162
  %167 = call i32 @SetLastError(i32 -559038737)
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @DeviceIoControl(i32 %168, i32 %169, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %9, i32 %170, i32* %4, i32* null)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %166
  %175 = call i32 (...) @GetLastError()
  %176 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %177 = icmp eq i32 %175, %176
  br label %178

178:                                              ; preds = %174, %166
  %179 = phi i1 [ false, %166 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (...) @GetLastError()
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %162

187:                                              ; preds = %162
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 4, i32* %188, align 8
  %189 = call i32 @SetLastError(i32 -559038737)
  %190 = load i32, i32* %2, align 4
  %191 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %192 = call i32 @DeviceIoControl(i32 %190, i32 %191, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 4, i32* %4, i32* null)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %187
  %196 = call i32 (...) @GetLastError()
  %197 = load i32, i32* @ERROR_NOT_READY, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i64 @broken(i32 %199)
  %201 = icmp ne i64 %200, 0
  br label %202

202:                                              ; preds = %195, %187
  %203 = phi i1 [ true, %187 ], [ %201, %195 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 (...) @GetLastError()
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %5, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %262

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 2050
  %215 = zext i1 %214 to i32
  %216 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %231)
  %233 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = getelementptr inbounds %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* %10, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  %246 = call i32 @SetLastError(i32 -559038737)
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* @IOCTL_DVD_READ_STRUCTURE, align 4
  %249 = call i32 @DeviceIoControl(i32 %247, i32 %248, %struct.TYPE_7__* %6, i32 32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR* null, i32 4, i32* %4, i32* null)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %210
  %253 = call i32 (...) @GetLastError()
  %254 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %255 = icmp eq i32 %253, %254
  br label %256

256:                                              ; preds = %252, %210
  %257 = phi i1 [ false, %210 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %5, align 4
  %260 = call i32 (...) @GetLastError()
  %261 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %256, %209, %23
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DeviceIoControl(i32, i32, %struct.TYPE_7__*, i32, %struct.COMPLETE_DVD_MANUFACTURER_DESCRIPTOR*, i32, i32*, i32*) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
