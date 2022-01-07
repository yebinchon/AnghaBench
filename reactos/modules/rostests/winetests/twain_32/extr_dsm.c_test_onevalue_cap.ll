; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_onevalue_cap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_onevalue_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8* }

@TWON_DONTCARE16 = common dso_local global i8* null, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_CAPABILITY = common dso_local global i32 0, align 4
@MSG_QUERYSUPPORT = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i32 0, align 4
@TWCC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Returned cap.hContainer invalid for QuerySupport on type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Error:  minimum support 0x%x for type 0x%x, got 0x%x\0A\00", align 1
@TWQC_GETCURRENT = common dso_local global i32 0, align 4
@MSG_GETCURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Returned cap.hContainer invalid for GETCURRENT on type 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Returned GETCURRENT type 0x%x for cap 0x%x is not expected 0x%x\0A\00", align 1
@TWQC_GETDEFAULT = common dso_local global i32 0, align 4
@MSG_GETDEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Returned cap.hContainer invalid for GETDEFAULT on type 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Returned GETDEFAULT type 0x%x for cap 0x%x is not expected 0x%x\0A\00", align 1
@TWQC_GET = common dso_local global i32 0, align 4
@MSG_GET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Error [rc %d|cc %d] doing MSG_GET for type 0x%x\0A\00", align 1
@TWQC_SET = common dso_local global i32 0, align 4
@TWON_ONEVALUE = common dso_local global i8* null, align 8
@MSG_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Error [rc %d|cc %d] doing MSG_SET for type 0x%x\0A\00", align 1
@TWQC_RESET = common dso_local global i32 0, align 4
@MSG_RESET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"Error [rc %d|cc %d] doing MSG_RESET for type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @test_onevalue_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_onevalue_cap(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** @TWON_DONTCARE16, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @DG_CONTROL, align 4
  %27 = load i32, i32* @DAT_CAPABILITY, align 4
  %28 = load i32, i32* @MSG_QUERYSUPPORT, align 4
  %29 = call i32 @pDSM_Entry(i32* %24, i32* %25, i32 %26, i32 %27, i32 %28, %struct.TYPE_8__* %14)
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @get_condition_code(i32* %30, i32* %31, %struct.TYPE_7__* %13)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @TWRC_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TWCC_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %36, %5
  %42 = phi i1 [ false, %5 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @TWRC_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %318

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @get_onevalue(i32 %55, i32* %18, i32* null)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @TWQC_GETCURRENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %125

73:                                               ; preds = %53
  %74 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load i8*, i8** @TWON_DONTCARE16, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @DG_CONTROL, align 4
  %82 = load i32, i32* @DAT_CAPABILITY, align 4
  %83 = load i32, i32* @MSG_GETCURRENT, align 4
  %84 = call i32 @pDSM_Entry(i32* %79, i32* %80, i32 %81, i32 %82, i32 %83, %struct.TYPE_8__* %14)
  store i32 %84, i32* %11, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @get_condition_code(i32* %85, i32* %86, %struct.TYPE_7__* %13)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @TWRC_SUCCESS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %73
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TWCC_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %91, %73
  %97 = phi i1 [ false, %73 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %11, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @TWRC_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @get_onevalue(i32 %109, i32* %15, i32* %12)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GlobalFree(i32 %122)
  br label %124

124:                                              ; preds = %107, %96
  br label %125

125:                                              ; preds = %124, %53
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @TWQC_GETDEFAULT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %182

130:                                              ; preds = %125
  %131 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %132 = load i32, i32* %8, align 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = load i8*, i8** @TWON_DONTCARE16, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %134, i8** %135, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* @DG_CONTROL, align 4
  %139 = load i32, i32* @DAT_CAPABILITY, align 4
  %140 = load i32, i32* @MSG_GETDEFAULT, align 4
  %141 = call i32 @pDSM_Entry(i32* %136, i32* %137, i32 %138, i32 %139, i32 %140, %struct.TYPE_8__* %14)
  store i32 %141, i32* %11, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @get_condition_code(i32* %142, i32* %143, %struct.TYPE_7__* %13)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TWRC_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %130
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TWCC_SUCCESS, align 4
  %152 = icmp eq i32 %150, %151
  br label %153

153:                                              ; preds = %148, %130
  %154 = phi i1 [ false, %130 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %11, align 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %158, i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @TWRC_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %153
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @get_onevalue(i32 %166, i32* %17, i32* %12)
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 %174, i32 %175, i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @GlobalFree(i32 %179)
  br label %181

181:                                              ; preds = %164, %153
  br label %182

182:                                              ; preds = %181, %125
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @TWQC_GET, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %231

188:                                              ; preds = %182
  %189 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %190 = load i32, i32* %8, align 4
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  %192 = load i8*, i8** @TWON_DONTCARE16, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %192, i8** %193, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* @DG_CONTROL, align 4
  %197 = load i32, i32* @DAT_CAPABILITY, align 4
  %198 = load i32, i32* @MSG_GET, align 4
  %199 = call i32 @pDSM_Entry(i32* %194, i32* %195, i32 %196, i32 %197, i32 %198, %struct.TYPE_8__* %14)
  store i32 %199, i32* %11, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @get_condition_code(i32* %200, i32* %201, %struct.TYPE_7__* %13)
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @TWRC_SUCCESS, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %188
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TWCC_SUCCESS, align 4
  %210 = icmp eq i32 %208, %209
  br label %211

211:                                              ; preds = %206, %188
  %212 = phi i1 [ false, %188 ], [ %210, %206 ]
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %11, align 4
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i32, i8*, i32, ...) @ok(i32 %213, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %214, i32 %216, i32 %217)
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @check_get(%struct.TYPE_8__* %14, i32 %219, i32 %220, i32 %221, i32* %16)
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @TWRC_SUCCESS, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %211
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @GlobalFree(i32 %228)
  br label %230

230:                                              ; preds = %226, %211
  br label %231

231:                                              ; preds = %230, %182
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* @TWQC_SET, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %274

236:                                              ; preds = %231
  %237 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %238 = load i32, i32* %8, align 4
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %238, i32* %239, align 8
  %240 = load i8*, i8** @TWON_ONEVALUE, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %240, i8** %241, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @alloc_and_set_onevalue(i32 %242, i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %244, i32* %245, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* @DG_CONTROL, align 4
  %249 = load i32, i32* @DAT_CAPABILITY, align 4
  %250 = load i32, i32* @MSG_SET, align 4
  %251 = call i32 @pDSM_Entry(i32* %246, i32* %247, i32 %248, i32 %249, i32 %250, %struct.TYPE_8__* %14)
  store i32 %251, i32* %11, align 4
  %252 = load i32*, i32** %6, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = call i32 @get_condition_code(i32* %252, i32* %253, %struct.TYPE_7__* %13)
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @TWRC_SUCCESS, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %236
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @TWCC_SUCCESS, align 4
  %262 = icmp eq i32 %260, %261
  br label %263

263:                                              ; preds = %258, %236
  %264 = phi i1 [ false, %236 ], [ %262, %258 ]
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %11, align 4
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 (i32, i8*, i32, ...) @ok(i32 %265, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %266, i32 %268, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @GlobalFree(i32 %272)
  br label %274

274:                                              ; preds = %263, %231
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* @TWQC_RESET, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %318

279:                                              ; preds = %274
  %280 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %281 = load i32, i32* %8, align 4
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %281, i32* %282, align 8
  %283 = load i8*, i8** @TWON_DONTCARE16, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i8* %283, i8** %284, align 8
  %285 = load i32*, i32** %6, align 8
  %286 = load i32*, i32** %7, align 8
  %287 = load i32, i32* @DG_CONTROL, align 4
  %288 = load i32, i32* @DAT_CAPABILITY, align 4
  %289 = load i32, i32* @MSG_RESET, align 4
  %290 = call i32 @pDSM_Entry(i32* %285, i32* %286, i32 %287, i32 %288, i32 %289, %struct.TYPE_8__* %14)
  store i32 %290, i32* %11, align 4
  %291 = load i32*, i32** %6, align 8
  %292 = load i32*, i32** %7, align 8
  %293 = call i32 @get_condition_code(i32* %291, i32* %292, %struct.TYPE_7__* %13)
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @TWRC_SUCCESS, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %279
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @TWCC_SUCCESS, align 4
  %301 = icmp eq i32 %299, %300
  br label %302

302:                                              ; preds = %297, %279
  %303 = phi i1 [ false, %279 ], [ %301, %297 ]
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %11, align 4
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %8, align 4
  %309 = call i32 (i32, i8*, i32, ...) @ok(i32 %304, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %305, i32 %307, i32 %308)
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* @TWRC_SUCCESS, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @GlobalFree(i32 %315)
  br label %317

317:                                              ; preds = %313, %302
  br label %318

318:                                              ; preds = %52, %317, %274
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pDSM_Entry(i32*, i32*, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @get_condition_code(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @get_onevalue(i32, i32*, i32*) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @check_get(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @alloc_and_set_onevalue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
