; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlIpv4AddressToStringEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlIpv4AddressToStringEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@__const.test_RtlIpv4AddressToStringEx.ip_1234 = private unnamed_addr constant [8 x i8] c"1.2.3.4\00", align 1
@__const.test_RtlIpv4AddressToStringEx.ip_1234_80 = private unnamed_addr constant [11 x i8] c"1.2.3.4:80\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"got 0x%x and size %d with '%s'\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"got 0x%x with '%s' (expected STATUS_INVALID_PARAMETER)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"got 0x%x and size %d (expected STATUS_INVALID_PARAMETER)\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"got 0x%x and size %d with '%s' (expected STATUS_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIpv4AddressToStringEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIpv4AddressToStringEx() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [11 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = bitcast [8 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_RtlIpv4AddressToStringEx.ip_1234, i32 0, i32 0), i64 8, i1 false)
  %11 = bitcast [11 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_RtlIpv4AddressToStringEx.ip_1234_80, i32 0, i32 0), i64 11, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 3, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32 4, i32* %23, align 4
  %24 = call i64 @htons(i32 80)
  store i64 %24, i64* %9, align 8
  %25 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i64 0, i64 0
  store i8* %25, i8** %3, align 8
  store i32 30, i32* %7, align 4
  %26 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i8 signext 35, i32 29)
  %28 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %28, align 1
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %31 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %29, i8* %30, i32* %7)
  store i64 %31, i64* %5, align 8
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @STATUS_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %0
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %43, %37, %0
  %50 = phi i1 [ false, %37 ], [ false, %0 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %55 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53, i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %59 = call i32 @memset(i8* %58, i8 signext 35, i32 29)
  %60 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %60, align 1
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %63 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %61, i8* %62, i32* %7)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @STATUS_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %70, 1
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcmp(i8* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %73, %67, %49
  %80 = phi i1 [ false, %67 ], [ false, %49 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %85 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %82, i32 %83, i8* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %7, align 4
  %87 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %88 = call i32 @memset(i8* %87, i8 signext 35, i32 29)
  %89 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %89, align 1
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %92 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %90, i8* %91, i32* %7)
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %79
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  %100 = icmp eq i32 %97, %99
  br label %101

101:                                              ; preds = %96, %79
  %102 = phi i1 [ false, %79 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %104, i32 %105, i8* %106, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %113 = call i32 @memset(i8* %112, i8 signext 35, i32 29)
  %114 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %114, align 1
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %117 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %115, i8* %116, i32* %7)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %101
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = icmp eq i32 %122, %124
  br label %126

126:                                              ; preds = %121, %101
  %127 = phi i1 [ false, %101 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 (i32, i8*, i64, ...) @ok(i32 %128, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %129, i32 %130, i8* %131, i32 %133)
  store i64 0, i64* %9, align 8
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8* %135, i8** %3, align 8
  store i32 30, i32* %7, align 4
  %136 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %137 = call i32 @memset(i8* %136, i8 signext 35, i32 29)
  %138 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %138, align 1
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %141 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %139, i8* %140, i32* %7)
  store i64 %141, i64* %5, align 8
  %142 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %143 = call i32 @strlen(i8* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @STATUS_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %126
  %148 = load i32, i32* %7, align 4
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = add nsw i32 %150, 1
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %155 = load i8*, i8** %3, align 8
  %156 = call i32 @strcmp(i8* %154, i8* %155)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br label %159

159:                                              ; preds = %153, %147, %126
  %160 = phi i1 [ false, %147 ], [ false, %126 ], [ %158, %153 ]
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %165 = call i32 (i32, i8*, i64, ...) @ok(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %162, i32 %163, i8* %164)
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  %168 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %169 = call i32 @memset(i8* %168, i8 signext 35, i32 29)
  %170 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %170, align 1
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %173 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %171, i8* %172, i32* %7)
  store i64 %173, i64* %5, align 8
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* @STATUS_SUCCESS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %159
  %178 = load i32, i32* %7, align 4
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = add nsw i32 %180, 1
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @strcmp(i8* %184, i8* %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %177, %159
  %190 = phi i1 [ false, %177 ], [ false, %159 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %195 = call i32 (i32, i8*, i64, ...) @ok(i32 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %192, i32 %193, i8* %194)
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %7, align 4
  %197 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %198 = call i32 @memset(i8* %197, i8 signext 35, i32 29)
  %199 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %199, align 1
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %202 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %200, i8* %201, i32* %7)
  store i64 %202, i64* %5, align 8
  %203 = load i64, i64* %5, align 8
  %204 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %189
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  %210 = icmp eq i32 %207, %209
  br label %211

211:                                              ; preds = %206, %189
  %212 = phi i1 [ false, %189 ], [ %210, %206 ]
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  %219 = call i32 (i32, i8*, i64, ...) @ok(i32 %213, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %214, i32 %215, i8* %216, i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  %222 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %223 = call i32 @memset(i8* %222, i8 signext 35, i32 29)
  %224 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %224, align 1
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %227 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 %225, i8* %226, i32* %7)
  store i64 %227, i64* %5, align 8
  %228 = load i64, i64* %5, align 8
  %229 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %211
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  %235 = icmp eq i32 %232, %234
  br label %236

236:                                              ; preds = %231, %211
  %237 = phi i1 [ false, %211 ], [ %235, %231 ]
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %5, align 8
  %240 = load i32, i32* %7, align 4
  %241 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  %244 = call i32 (i32, i8*, i64, ...) @ok(i32 %238, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %239, i32 %240, i8* %241, i32 %243)
  %245 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %246 = call i32 @memset(i8* %245, i8 signext 35, i32 29)
  %247 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %247, align 1
  %248 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %249 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 0, i8* %248, i32* null)
  store i64 %249, i64* %5, align 8
  %250 = load i64, i64* %5, align 8
  %251 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = load i64, i64* %5, align 8
  %255 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %256 = call i32 (i32, i8*, i64, ...) @ok(i32 %253, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %254, i8* %255)
  store i32 30, i32* %7, align 4
  %257 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* %6, i64 0, i8* null, i32* %7)
  store i64 %257, i64* %5, align 8
  %258 = load i64, i64* %5, align 8
  %259 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i64, i64* %5, align 8
  %263 = load i32, i32* %7, align 4
  %264 = call i32 (i32, i8*, i64, ...) @ok(i32 %261, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %262, i32 %263)
  store i32 30, i32* %7, align 4
  %265 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %266 = call i32 @memset(i8* %265, i8 signext 35, i32 29)
  %267 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 29
  store i8 0, i8* %267, align 1
  %268 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %269 = call i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__* null, i64 0, i8* %268, i32* %7)
  store i64 %269, i64* %5, align 8
  %270 = load i64, i64* %5, align 8
  %271 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %272 = icmp eq i64 %270, %271
  %273 = zext i1 %272 to i32
  %274 = load i64, i64* %5, align 8
  %275 = load i32, i32* %7, align 4
  %276 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %277 = call i32 (i32, i8*, i64, ...) @ok(i32 %273, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %274, i32 %275, i8* %276)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i64 @pRtlIpv4AddressToStringExA(%struct.TYPE_7__*, i64, i8*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
