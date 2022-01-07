; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_mac.c_screen_Capture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_mac.c_screen_Capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_23__, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32*, i64, %struct.TYPE_30__, i32, i64, i32, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"no image!\00", align 1
@kCGColorSpaceGenericRGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't allocate offscreen bitmap\00", align 1
@kCGImageAlphaPremultipliedFirst = common dso_local global i32 0, align 4
@kCGBitmapByteOrder32Little = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"can't create offscreen bitmap context\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"com.apple.coregraphics.GlobalCurrent\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"can't get block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @screen_Capture(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %4, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %5, align 8
  %25 = call i32 @CGEventCreate(i32* null)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call { i64, i64 } @CGEventGetLocation(i32 %26)
  %28 = bitcast %struct.TYPE_21__* %11 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i64 } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i64 } %27, 1
  store i64 %32, i64* %31, align 8
  %33 = bitcast %struct.TYPE_21__* %9 to i8*
  %34 = bitcast %struct.TYPE_21__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @CFRelease(i32 %35)
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %39
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @FollowMouse(%struct.TYPE_28__* %54, i64 %56, i64 %58)
  br label %60

60:                                               ; preds = %53, %1
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CGDisplayCreateImageForRect(i32 %83, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %7)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %60
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %89 = call i32 @msg_Warn(%struct.TYPE_27__* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %261

90:                                               ; preds = %60
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %180, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @kCGColorSpaceGenericRGB, align 4
  %97 = call i32 @CGColorSpaceCreateWithName(i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %102, %107
  %109 = mul nsw i32 %108, 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32* @calloc(i32 1, i32 %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %95
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %124 = call i32 @msg_Warn(%struct.TYPE_27__* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @CFRelease(i32 %125)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %261

127:                                              ; preds = %95
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @kCGImageAlphaPremultipliedFirst, align 4
  %149 = load i32, i32* @kCGBitmapByteOrder32Little, align 4
  %150 = or i32 %148, %149
  %151 = call i64 @CGBitmapContextCreate(i32* %130, i32 %135, i32 %140, i32 8, i32 %146, i32 %147, i32 %150)
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %127
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %160 = call i32 @msg_Warn(%struct.TYPE_27__* %159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @CFRelease(i32 %161)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %261

163:                                              ; preds = %127
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @CGColorSpaceRelease(i32 %164)
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  call void @CGRectMake(%struct.TYPE_30__* sret %13, i32 0, i32 0, i32 %172, i32 %177)
  %178 = bitcast %struct.TYPE_30__* %167 to i8*
  %179 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 32, i1 false)
  br label %180

180:                                              ; preds = %163, %90
  %181 = call i32 (...) @CGSMainConnectionID()
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @CGSCreateRegisteredCursorImage(i32 %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %16)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @CGImageGetWidth(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i64 @CGImageGetHeight(i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %193, %196
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %197, %199
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %213, %216
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %217, %219
  %221 = sub nsw i64 %207, %220
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 3
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @CGContextDrawImage(i64 %226, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %228, i32 %229)
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @CGContextDrawImage(i64 %233, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %17, i32 %234)
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.TYPE_29__* @block_Alloc(i32 %238)
  store %struct.TYPE_29__* %239, %struct.TYPE_29__** %6, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %241 = icmp ne %struct.TYPE_29__* %240, null
  br i1 %241, label %247, label %242

242:                                              ; preds = %180
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %244 = call i32 @msg_Warn(%struct.TYPE_27__* %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @CFRelease(i32 %245)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %261

247:                                              ; preds = %180
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @memmove(i32 %250, i32* %253, i32 %256)
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @CFRelease(i32 %258)
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* %260, %struct.TYPE_29__** %2, align 8
  br label %261

261:                                              ; preds = %247, %242, %158, %122, %87
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  ret %struct.TYPE_29__* %262
}

declare dso_local i32 @CGEventCreate(i32*) #1

declare dso_local { i64, i64 } @CGEventGetLocation(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @FollowMouse(%struct.TYPE_28__*, i64, i64) #1

declare dso_local i32 @CGDisplayCreateImageForRect(i32, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @CGColorSpaceCreateWithName(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @CGBitmapContextCreate(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CGColorSpaceRelease(i32) #1

declare dso_local void @CGRectMake(%struct.TYPE_30__* sret, i32, i32, i32, i32) #1

declare dso_local i32 @CGSMainConnectionID(...) #1

declare dso_local i32 @CGSCreateRegisteredCursorImage(i32, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @CGImageGetWidth(i32) #1

declare dso_local i64 @CGImageGetHeight(i32) #1

declare dso_local i32 @CGContextDrawImage(i64, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, i32) #1

declare dso_local %struct.TYPE_29__* @block_Alloc(i32) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
