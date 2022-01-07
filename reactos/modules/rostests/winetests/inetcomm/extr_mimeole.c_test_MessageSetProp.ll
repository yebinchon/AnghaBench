; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_MessageSetProp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_MessageSetProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@test_MessageSetProp.topic = internal constant [11 x i8] c"wine topic\00", align 1
@test_MessageSetProp.topicW = internal constant [11 x i8] c"wine topic\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@HBODY_ROOT = common dso_local global i32 0, align 4
@IID_IMimeBody = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Thread-Topic\00", align 1
@VT_LPSTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Wine-Topic\00", align 1
@MIME_E_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"got  %s\0A\00", align 1
@PID_HDR_SUBJECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@VT_LPWSTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@PID_HDR_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MessageSetProp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MessageSetProp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = call i64 @MimeOleCreateMessage(i32* null, i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = call i32 @PropVariantInit(%struct.TYPE_8__* %4)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @HBODY_ROOT, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @IMimeMessage_BindToObject(i32* %13, i32 %14, i32* @IID_IMimeBody, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IMimeBody_SetProp(i32* %23, i8* null, i32 0, %struct.TYPE_8__* %4)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @E_INVALIDARG, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @IMimeBody_SetProp(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* null)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @E_INVALIDARG, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @VT_LPSTR, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %42 = add nsw i64 %41, 1
  %43 = call i8* @CoTaskMemAlloc(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @strcpy(i64 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @IMimeBody_SetProp(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @IMimeBody_GetProp(i32* %60, i8* null, i32 0, %struct.TYPE_8__* %4)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @E_INVALIDARG, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %1, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @IMimeBody_GetProp(i32* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* null)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @E_INVALIDARG, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @IMimeBody_GetProp(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @VT_LPSTR, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @IMimeBody_GetProp(i32* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %87, i64* %1, align 8
  %88 = load i64, i64* %1, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %1, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VT_LPSTR, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @strcmp(i64 %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %115)
  %117 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  br label %118

118:                                              ; preds = %97, %0
  %119 = load i64, i64* @VT_LPSTR, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  %121 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %122 = add nsw i64 %121, 1
  %123 = call i8* @CoTaskMemAlloc(i64 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @strcpy(i64 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %133 = call i8* @PIDTOSTR(i32 %132)
  %134 = call i64 @IMimeBody_SetProp(i32* %131, i8* %133, i32 0, %struct.TYPE_8__* %4)
  store i64 %134, i64* %1, align 8
  %135 = load i64, i64* %1, align 8
  %136 = load i64, i64* @S_OK, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %1, align 8
  %140 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %139)
  %141 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %142 = load i64, i64* @VT_LPSTR, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %146 = call i8* @PIDTOSTR(i32 %145)
  %147 = call i64 @IMimeBody_GetProp(i32* %144, i8* %146, i32 0, %struct.TYPE_8__* %4)
  store i64 %147, i64* %1, align 8
  %148 = load i64, i64* %1, align 8
  %149 = load i64, i64* @S_OK, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %1, align 8
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %152)
  %154 = load i64, i64* %1, align 8
  %155 = load i64, i64* @S_OK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %118
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VT_LPSTR, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @strcmp(i64 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ok(i32 %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  br label %178

178:                                              ; preds = %157, %118
  %179 = load i64, i64* @VT_LPSTR, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %179, i64* %180, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = call i64 @IMimeBody_GetProp(i32* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %182, i64* %1, align 8
  %183 = load i64, i64* %1, align 8
  %184 = load i64, i64* @S_OK, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i64, i64* %1, align 8
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %187)
  %189 = load i64, i64* %1, align 8
  %190 = load i64, i64* @S_OK, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %178
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VT_LPSTR, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @ok(i32 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %199)
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @strcmp(i64 %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %210)
  %212 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  br label %213

213:                                              ; preds = %192, %178
  %214 = load i64, i64* @VT_LPWSTR, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = call i64 @IMimeBody_GetProp(i32* %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %217, i64* %1, align 8
  %218 = load i64, i64* %1, align 8
  %219 = load i64, i64* @S_OK, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %1, align 8
  %223 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %222)
  %224 = load i64, i64* %1, align 8
  %225 = load i64, i64* @S_OK, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %249

227:                                              ; preds = %213
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @VT_LPWSTR, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @ok(i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %234)
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @lstrcmpW(i32 %238, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topicW, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @wine_dbgstr_w(i32 %245)
  %247 = call i32 @ok(i32 %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %246)
  %248 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  br label %249

249:                                              ; preds = %227, %213
  %250 = load i64, i64* @VT_LPSTR, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %250, i64* %251, align 8
  %252 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %253 = add nsw i64 %252, 1
  %254 = call i8* @CoTaskMemAlloc(i64 %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @strcpy(i64 %260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* @PID_HDR_TO, align 4
  %264 = call i8* @PIDTOSTR(i32 %263)
  %265 = call i64 @IMimeBody_SetProp(i32* %262, i8* %264, i32 0, %struct.TYPE_8__* %4)
  store i64 %265, i64* %1, align 8
  %266 = load i64, i64* %1, align 8
  %267 = load i64, i64* @S_OK, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load i64, i64* %1, align 8
  %271 = call i32 @ok(i32 %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %270)
  %272 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %273 = load i64, i64* @VT_LPSTR, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %273, i64* %274, align 8
  %275 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %276 = add nsw i64 %275, 1
  %277 = call i8* @CoTaskMemAlloc(i64 %276)
  %278 = ptrtoint i8* %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  store i64 %278, i64* %280, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @strcpy(i64 %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_MessageSetProp.topic, i64 0, i64 0))
  %285 = load i32*, i32** %3, align 8
  %286 = call i8* @PIDTOSTR(i32 124)
  %287 = call i64 @IMimeBody_SetProp(i32* %285, i8* %286, i32 0, %struct.TYPE_8__* %4)
  store i64 %287, i64* %1, align 8
  %288 = load i64, i64* %1, align 8
  %289 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %290 = icmp eq i64 %288, %289
  %291 = zext i1 %290 to i32
  %292 = load i64, i64* %1, align 8
  %293 = call i32 @ok(i32 %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %292)
  %294 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @IMimeBody_Release(i32* %295)
  %297 = load i32*, i32** %2, align 8
  %298 = call i32 @IMimeMessage_Release(i32* %297)
  ret void
}

declare dso_local i64 @MimeOleCreateMessage(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_8__*) #1

declare dso_local i64 @IMimeMessage_BindToObject(i32*, i32, i32*, i8**) #1

declare dso_local i64 @IMimeBody_SetProp(i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i8* @CoTaskMemAlloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_8__*) #1

declare dso_local i64 @IMimeBody_GetProp(i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i8* @PIDTOSTR(i32) #1

declare dso_local i32 @lstrcmpW(i32, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @IMimeBody_Release(i32*) #1

declare dso_local i32 @IMimeMessage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
