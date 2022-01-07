; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_resolution.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32 }

@TWON_DONTCARE16 = common dso_local global i8* null, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_CAPABILITY = common dso_local global i32 0, align 4
@MSG_QUERYSUPPORT = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i32 0, align 4
@TWCC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Returned cap.hContainer invalid for QuerySupport on type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Error:  minimum support 0x%x for type 0x%x, got 0x%x\0A\00", align 1
@TWQC_GETCURRENT = common dso_local global i32 0, align 4
@MSG_GETCURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\0A\00", align 1
@TWTY_FIX32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"GETCURRENT for RESOLUTION is not type FIX32, is type %d\0A\00", align 1
@TWQC_GETDEFAULT = common dso_local global i32 0, align 4
@MSG_GETDEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"GETDEFAULT for RESOLUTION is not type FIX32, is type %d\0A\00", align 1
@TWQC_GET = common dso_local global i32 0, align 4
@MSG_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Error [rc %d|cc %d] doing MSG_GET for type 0x%x\0A\00", align 1
@TWON_RANGE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [67 x i8] c"MSG_GET for ICAP_[XY]RESOLUTION did not return TWON_RANGE, but %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"MSG_GET of 0x%x returned [ItemType %d|MinValue %d|MaxValue %d|StepSize %d|DefaultValue %d|CurrentValue %d]:\0A\00", align 1
@TWQC_SET = common dso_local global i32 0, align 4
@TWON_ONEVALUE = common dso_local global i8* null, align 8
@MSG_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Error [rc %d|cc %d] doing MSG_SET for type 0x%x\0A\00", align 1
@TWQC_RESET = common dso_local global i32 0, align 4
@MSG_RESET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"Error [rc %d|cc %d] doing MSG_RESET for type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @test_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resolution(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  store i64 0, i64* %16, align 8
  %20 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** @TWON_DONTCARE16, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @DG_CONTROL, align 4
  %29 = load i32, i32* @DAT_CAPABILITY, align 4
  %30 = load i32, i32* @MSG_QUERYSUPPORT, align 4
  %31 = call i32 @pDSM_Entry(i32* %26, i32* %27, i32 %28, i32 %29, i32 %30, %struct.TYPE_13__* %11)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @get_condition_code(i32* %32, i32* %33, %struct.TYPE_10__* %10)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @TWRC_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TWCC_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %38, %4
  %44 = phi i1 [ false, %4 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @TWRC_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %370

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = bitcast i32* %14 to i64*
  %59 = call i32 @get_onevalue(i32 %57, i64* %58, i32* null)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @TWQC_GETCURRENT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %55
  %77 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i8*, i8** @TWON_DONTCARE16, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @DG_CONTROL, align 4
  %85 = load i32, i32* @DAT_CAPABILITY, align 4
  %86 = load i32, i32* @MSG_GETCURRENT, align 4
  %87 = call i32 @pDSM_Entry(i32* %82, i32* %83, i32 %84, i32 %85, i32 %86, %struct.TYPE_13__* %11)
  store i32 %87, i32* %9, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @get_condition_code(i32* %88, i32* %89, %struct.TYPE_10__* %10)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TWRC_SUCCESS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TWCC_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  br label %99

99:                                               ; preds = %94, %76
  %100 = phi i1 [ false, %76 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %102, i64 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @TWRC_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @get_onevalue(i32 %112, i64* %12, i32* %13)
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @TWTY_FIX32, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = call i32 @memcpy(%struct.TYPE_12__* %15, i64* %12, i32 8)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GlobalFree(i32 %122)
  br label %124

124:                                              ; preds = %110, %99
  br label %125

125:                                              ; preds = %124, %55
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @TWQC_GETDEFAULT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %179

130:                                              ; preds = %125
  %131 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = load i8*, i8** @TWON_DONTCARE16, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %134, i8** %135, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @DG_CONTROL, align 4
  %139 = load i32, i32* @DAT_CAPABILITY, align 4
  %140 = load i32, i32* @MSG_GETDEFAULT, align 4
  %141 = call i32 @pDSM_Entry(i32* %136, i32* %137, i32 %138, i32 %139, i32 %140, %struct.TYPE_13__* %11)
  store i32 %141, i32* %9, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @get_condition_code(i32* %142, i32* %143, %struct.TYPE_10__* %10)
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @TWRC_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %130
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TWCC_SUCCESS, align 8
  %152 = icmp eq i64 %150, %151
  br label %153

153:                                              ; preds = %148, %130
  %154 = phi i1 [ false, %130 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %9, align 4
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %156, i64 %158, i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @TWRC_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %153
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @get_onevalue(i32 %166, i64* %12, i32* %13)
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @TWTY_FIX32, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %13, align 4
  %173 = call i32 (i32, i8*, i32, ...) @ok(i32 %171, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = call i32 @memcpy(%struct.TYPE_12__* %17, i64* %12, i32 8)
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @GlobalFree(i32 %176)
  br label %178

178:                                              ; preds = %164, %153
  br label %179

179:                                              ; preds = %178, %125
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @TWQC_GET, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %283

184:                                              ; preds = %179
  %185 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %186 = load i32, i32* %7, align 4
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %186, i32* %187, align 8
  %188 = load i8*, i8** @TWON_DONTCARE16, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %188, i8** %189, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* @DG_CONTROL, align 4
  %193 = load i32, i32* @DAT_CAPABILITY, align 4
  %194 = load i32, i32* @MSG_GET, align 4
  %195 = call i32 @pDSM_Entry(i32* %190, i32* %191, i32 %192, i32 %193, i32 %194, %struct.TYPE_13__* %11)
  store i32 %195, i32* %9, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @get_condition_code(i32* %196, i32* %197, %struct.TYPE_10__* %10)
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @TWRC_SUCCESS, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %184
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @TWCC_SUCCESS, align 8
  %206 = icmp eq i64 %204, %205
  br label %207

207:                                              ; preds = %202, %184
  %208 = phi i1 [ false, %184 ], [ %206, %202 ]
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %9, align 4
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 (i32, i8*, i32, ...) @ok(i32 %209, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %210, i64 %212, i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @TWRC_SUCCESS, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %282

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** @TWON_RANGE, align 8
  %222 = icmp eq i8* %220, %221
  %223 = zext i1 %222 to i32
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = ptrtoint i8* %225 to i32
  %227 = call i32 (i32, i8*, i32, ...) @ok(i32 %223, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call %struct.TYPE_11__* @GlobalLock(i32 %229)
  store %struct.TYPE_11__* %230, %struct.TYPE_11__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @trace(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 %232, i32 %235, i64 %238, i64 %241, i64 %244, i32 %247, i64 %250)
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %16, align 8
  br label %255

255:                                              ; preds = %269, %218
  %256 = load i64, i64* %16, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp slt i64 %256, %259
  br i1 %260, label %261, label %275

261:                                              ; preds = %255
  %262 = load i64, i64* %16, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %262, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %275

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %16, align 8
  %274 = add nsw i64 %273, %272
  store i64 %274, i64* %16, align 8
  br label %255

275:                                              ; preds = %267, %255
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @GlobalUnlock(i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @GlobalFree(i32 %280)
  br label %282

282:                                              ; preds = %275, %207
  br label %283

283:                                              ; preds = %282, %179
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* @TWQC_SET, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %326

288:                                              ; preds = %283
  %289 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %290 = load i32, i32* %7, align 4
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %290, i32* %291, align 8
  %292 = load i8*, i8** @TWON_ONEVALUE, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %292, i8** %293, align 8
  %294 = load i64, i64* %16, align 8
  %295 = load i32, i32* @TWTY_FIX32, align 4
  %296 = call i32 @alloc_and_set_onevalue(i64 %294, i32 %295)
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %296, i32* %297, align 4
  %298 = load i32*, i32** %5, align 8
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* @DG_CONTROL, align 4
  %301 = load i32, i32* @DAT_CAPABILITY, align 4
  %302 = load i32, i32* @MSG_SET, align 4
  %303 = call i32 @pDSM_Entry(i32* %298, i32* %299, i32 %300, i32 %301, i32 %302, %struct.TYPE_13__* %11)
  store i32 %303, i32* %9, align 4
  %304 = load i32*, i32** %5, align 8
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @get_condition_code(i32* %304, i32* %305, %struct.TYPE_10__* %10)
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @TWRC_SUCCESS, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %288
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @TWCC_SUCCESS, align 8
  %314 = icmp eq i64 %312, %313
  br label %315

315:                                              ; preds = %310, %288
  %316 = phi i1 [ false, %288 ], [ %314, %310 ]
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %9, align 4
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %7, align 4
  %322 = call i32 (i32, i8*, i32, ...) @ok(i32 %317, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %318, i64 %320, i32 %321)
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @GlobalFree(i32 %324)
  br label %326

326:                                              ; preds = %315, %283
  %327 = load i32, i32* %14, align 4
  %328 = load i32, i32* @TWQC_RESET, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %370

331:                                              ; preds = %326
  %332 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 16)
  %333 = load i32, i32* %7, align 4
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %333, i32* %334, align 8
  %335 = load i8*, i8** @TWON_DONTCARE16, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i8* %335, i8** %336, align 8
  %337 = load i32*, i32** %5, align 8
  %338 = load i32*, i32** %6, align 8
  %339 = load i32, i32* @DG_CONTROL, align 4
  %340 = load i32, i32* @DAT_CAPABILITY, align 4
  %341 = load i32, i32* @MSG_RESET, align 4
  %342 = call i32 @pDSM_Entry(i32* %337, i32* %338, i32 %339, i32 %340, i32 %341, %struct.TYPE_13__* %11)
  store i32 %342, i32* %9, align 4
  %343 = load i32*, i32** %5, align 8
  %344 = load i32*, i32** %6, align 8
  %345 = call i32 @get_condition_code(i32* %343, i32* %344, %struct.TYPE_10__* %10)
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* @TWRC_SUCCESS, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %331
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @TWCC_SUCCESS, align 8
  %353 = icmp eq i64 %351, %352
  br label %354

354:                                              ; preds = %349, %331
  %355 = phi i1 [ false, %331 ], [ %353, %349 ]
  %356 = zext i1 %355 to i32
  %357 = load i32, i32* %9, align 4
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = call i32 (i32, i8*, i32, ...) @ok(i32 %356, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %357, i64 %359, i32 %360)
  %362 = load i32, i32* %9, align 4
  %363 = load i32, i32* @TWRC_SUCCESS, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %369

365:                                              ; preds = %354
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @GlobalFree(i32 %367)
  br label %369

369:                                              ; preds = %365, %354
  br label %370

370:                                              ; preds = %54, %369, %326
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @pDSM_Entry(i32*, i32*, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @get_condition_code(i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @get_onevalue(i32, i64*, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i64*, i32) #2

declare dso_local i32 @GlobalFree(i32) #2

declare dso_local %struct.TYPE_11__* @GlobalLock(i32) #2

declare dso_local i32 @trace(i8*, i32, i32, i64, i64, i64, i32, i64) #2

declare dso_local i32 @GlobalUnlock(i32) #2

declare dso_local i32 @alloc_and_set_onevalue(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
