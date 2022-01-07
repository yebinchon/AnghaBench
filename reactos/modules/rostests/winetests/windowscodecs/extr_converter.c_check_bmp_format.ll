; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_check_bmp_format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_check_bmp_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IStream_Read error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"wrong BMP signature %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"wrong bfReserved1 %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"wrong bfReserved2 %02x\0A\00", align 1
@GUID_WICPixelFormat1bppIndexed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"wrong bfOffBits %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"wrong width %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong height %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"wrong Planes %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"wrong BitCount %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"wrong ClrUsed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"wrong ClrImportant %d\0A\00", align 1
@GUID_WICPixelFormat4bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat8bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppBGR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"unknown BMP pixel format %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @check_bmp_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_bmp_format(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @IStream_Read(i32* %8, %struct.TYPE_4__* %6, i32 40, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 19778
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @IStream_Read(i32* %37, %struct.TYPE_4__* %7, i32 40, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @IsEqualGUID(i32* %45, i32* @GUID_WICPixelFormat1bppIndexed)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1078
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 32
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 256
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 256
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %96)
  br label %267

98:                                               ; preds = %2
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @IsEqualGUID(i32* %99, i32* @GUID_WICPixelFormat4bppIndexed)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %152

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1078
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 32
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 4
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 256
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 256
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  br label %266

152:                                              ; preds = %98
  %153 = load i32*, i32** %4, align 8
  %154 = call i64 @IsEqualGUID(i32* %153, i32* @GUID_WICPixelFormat8bppIndexed)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %206

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1078
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 32
  %167 = zext i1 %166 to i32
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i32
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  %181 = zext i1 %180 to i32
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 8
  %188 = zext i1 %187 to i32
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ok(i32 %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 256
  %195 = zext i1 %194 to i32
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 256
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ok(i32 %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %204)
  br label %265

206:                                              ; preds = %152
  %207 = load i32*, i32** %4, align 8
  %208 = call i64 @IsEqualGUID(i32* %207, i32* @GUID_WICPixelFormat32bppBGR)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %260

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 54
  %214 = zext i1 %213 to i32
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ok(i32 %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 32
  %221 = zext i1 %220 to i32
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 2
  %228 = zext i1 %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ok(i32 %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 1
  %235 = zext i1 %234 to i32
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %237)
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 32
  %242 = zext i1 %241 to i32
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ok(i32 %242, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ok(i32 %256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %258)
  br label %264

260:                                              ; preds = %206
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @wine_dbgstr_guid(i32* %261)
  %263 = call i32 @ok(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %260, %210
  br label %265

265:                                              ; preds = %264, %156
  br label %266

266:                                              ; preds = %265, %102
  br label %267

267:                                              ; preds = %266, %48
  ret void
}

declare dso_local i32 @IStream_Read(i32*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
