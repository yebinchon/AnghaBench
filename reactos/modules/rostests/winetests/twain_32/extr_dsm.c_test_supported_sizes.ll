; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_supported_sizes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_supported_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8*, i8* }

@TWSS_NONE = common dso_local global i32 0, align 4
@ICAP_SUPPORTEDSIZES = common dso_local global i8* null, align 8
@TWON_DONTCARE16 = common dso_local global i8* null, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_CAPABILITY = common dso_local global i32 0, align 4
@MSG_QUERYSUPPORT = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i32 0, align 4
@TWCC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for ICAP_SUPPORTEDSIZES\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Returned cap.hContainer invalid for QuerySupport on ICAP_SUPPORTEDSIZES\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Error:  minimum support 0x%x for ICAP_SUPPORTEDSIZES, got 0x%x\0A\00", align 1
@TWQC_GETCURRENT = common dso_local global i32 0, align 4
@MSG_GETCURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Error [rc %d|cc %d] doing MSG_GETCURRENT for ICAP_SUPPORTEDSIZES\0A\00", align 1
@TWTY_UINT16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"GETCURRENT for ICAP_SUPPORTEDSIZES is not type UINT16, is type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Current size is %d\0A\00", align 1
@TWQC_GETDEFAULT = common dso_local global i32 0, align 4
@MSG_GETDEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [66 x i8] c"Error [rc %d|cc %d] doing MSG_GETDEFAULT for ICAP_SUPPORTEDSIZES\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"GETDEFAULT for PHYSICALXXX is not type TWTY_UINT16, is type %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Default size is %d\0A\00", align 1
@TWQC_GET = common dso_local global i32 0, align 4
@MSG_GET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c"Error [rc %d|cc %d] doing MSG_GET for ICAP_SUPPORTEDSIZES\0A\00", align 1
@TWQC_SET = common dso_local global i32 0, align 4
@TWON_ONEVALUE = common dso_local global i8* null, align 8
@MSG_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"Error [rc %d|cc %d] doing MSG_SET for ICAP_SUPPORTEDSIZES\0A\00", align 1
@TWQC_RESET = common dso_local global i32 0, align 4
@MSG_RESET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"Error [rc %d|cc %d] doing MSG_RESET for ICAP_SUPPORTEDSIZES\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @test_supported_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_supported_sizes(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @TWSS_NONE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @TWSS_NONE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @TWSS_NONE, align 4
  store i32 %18, i32* %15, align 4
  %19 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %20 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @TWON_DONTCARE16, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @DG_CONTROL, align 4
  %27 = load i32, i32* @DAT_CAPABILITY, align 4
  %28 = load i32, i32* @MSG_QUERYSUPPORT, align 4
  %29 = call i32 @pDSM_Entry(i32* %24, i32* %25, i32 %26, i32 %27, i32 %28, %struct.TYPE_8__* %9)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @get_condition_code(i32* %30, i32* %31, %struct.TYPE_7__* %8)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TWRC_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TWCC_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %36, %3
  %42 = phi i1 [ false, %3 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @TWRC_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %299

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @get_onevalue(i32 %54, i32* %12, i32* null)
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @TWQC_GETCURRENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %52
  %71 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %72 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** @TWON_DONTCARE16, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @DG_CONTROL, align 4
  %79 = load i32, i32* @DAT_CAPABILITY, align 4
  %80 = load i32, i32* @MSG_GETCURRENT, align 4
  %81 = call i32 @pDSM_Entry(i32* %76, i32* %77, i32 %78, i32 %79, i32 %80, %struct.TYPE_8__* %9)
  store i32 %81, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @get_condition_code(i32* %82, i32* %83, %struct.TYPE_7__* %8)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @TWRC_SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TWCC_SUCCESS, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %88, %70
  %94 = phi i1 [ false, %70 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @TWRC_SUCCESS, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @get_onevalue(i32 %105, i32* %10, i32* %11)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @TWTY_UINT16, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @GlobalFree(i32 %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %103, %93
  br label %120

120:                                              ; preds = %119, %52
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @TWQC_GETDEFAULT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %175

125:                                              ; preds = %120
  %126 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %127 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %127, i8** %128, align 8
  %129 = load i8*, i8** @TWON_DONTCARE16, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* @DG_CONTROL, align 4
  %134 = load i32, i32* @DAT_CAPABILITY, align 4
  %135 = load i32, i32* @MSG_GETDEFAULT, align 4
  %136 = call i32 @pDSM_Entry(i32* %131, i32* %132, i32 %133, i32 %134, i32 %135, %struct.TYPE_8__* %9)
  store i32 %136, i32* %7, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @get_condition_code(i32* %137, i32* %138, %struct.TYPE_7__* %8)
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @TWRC_SUCCESS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %125
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TWCC_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  br label %148

148:                                              ; preds = %143, %125
  %149 = phi i1 [ false, %125 ], [ %147, %143 ]
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %7, align 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @TWRC_SUCCESS, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @get_onevalue(i32 %160, i32* %10, i32* %11)
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @TWTY_UINT16, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @GlobalFree(i32 %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %158, %148
  br label %175

175:                                              ; preds = %174, %120
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @TWQC_GET, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %214

180:                                              ; preds = %175
  %181 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %182 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load i8*, i8** @TWON_DONTCARE16, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %184, i8** %185, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @DG_CONTROL, align 4
  %189 = load i32, i32* @DAT_CAPABILITY, align 4
  %190 = load i32, i32* @MSG_GET, align 4
  %191 = call i32 @pDSM_Entry(i32* %186, i32* %187, i32 %188, i32 %189, i32 %190, %struct.TYPE_8__* %9)
  store i32 %191, i32* %7, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @get_condition_code(i32* %192, i32* %193, %struct.TYPE_7__* %8)
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @TWRC_SUCCESS, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %180
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @TWCC_SUCCESS, align 4
  %202 = icmp eq i32 %200, %201
  br label %203

203:                                              ; preds = %198, %180
  %204 = phi i1 [ false, %180 ], [ %202, %198 ]
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %7, align 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i32 %206, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @check_get(%struct.TYPE_8__* %9, i32 %210, i32 %211, i32 %212, i32* %15)
  br label %214

214:                                              ; preds = %203, %175
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @TWQC_SET, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %256

219:                                              ; preds = %214
  %220 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %221 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %221, i8** %222, align 8
  %223 = load i8*, i8** @TWON_ONEVALUE, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %223, i8** %224, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @TWTY_UINT16, align 4
  %227 = call i32 @alloc_and_set_onevalue(i32 %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %227, i32* %228, align 8
  %229 = load i32*, i32** %4, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* @DG_CONTROL, align 4
  %232 = load i32, i32* @DAT_CAPABILITY, align 4
  %233 = load i32, i32* @MSG_SET, align 4
  %234 = call i32 @pDSM_Entry(i32* %229, i32* %230, i32 %231, i32 %232, i32 %233, %struct.TYPE_8__* %9)
  store i32 %234, i32* %7, align 4
  %235 = load i32*, i32** %4, align 8
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @get_condition_code(i32* %235, i32* %236, %struct.TYPE_7__* %8)
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @TWRC_SUCCESS, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %219
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @TWCC_SUCCESS, align 4
  %245 = icmp eq i32 %243, %244
  br label %246

246:                                              ; preds = %241, %219
  %247 = phi i1 [ false, %219 ], [ %245, %241 ]
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %7, align 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i32 %249, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @GlobalFree(i32 %254)
  br label %256

256:                                              ; preds = %246, %214
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @TWQC_RESET, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %299

261:                                              ; preds = %256
  %262 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 24)
  %263 = load i8*, i8** @ICAP_SUPPORTEDSIZES, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i8* %263, i8** %264, align 8
  %265 = load i8*, i8** @TWON_DONTCARE16, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %265, i8** %266, align 8
  %267 = load i32*, i32** %4, align 8
  %268 = load i32*, i32** %5, align 8
  %269 = load i32, i32* @DG_CONTROL, align 4
  %270 = load i32, i32* @DAT_CAPABILITY, align 4
  %271 = load i32, i32* @MSG_RESET, align 4
  %272 = call i32 @pDSM_Entry(i32* %267, i32* %268, i32 %269, i32 %270, i32 %271, %struct.TYPE_8__* %9)
  store i32 %272, i32* %7, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = load i32*, i32** %5, align 8
  %275 = call i32 @get_condition_code(i32* %273, i32* %274, %struct.TYPE_7__* %8)
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @TWRC_SUCCESS, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %261
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @TWCC_SUCCESS, align 4
  %283 = icmp eq i32 %281, %282
  br label %284

284:                                              ; preds = %279, %261
  %285 = phi i1 [ false, %261 ], [ %283, %279 ]
  %286 = zext i1 %285 to i32
  %287 = load i32, i32* %7, align 4
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %287, i32 %289)
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @TWRC_SUCCESS, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %284
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @GlobalFree(i32 %296)
  br label %298

298:                                              ; preds = %294, %284
  br label %299

299:                                              ; preds = %51, %298, %256
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pDSM_Entry(i32*, i32*, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @get_condition_code(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @get_onevalue(i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @check_get(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @alloc_and_set_onevalue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
