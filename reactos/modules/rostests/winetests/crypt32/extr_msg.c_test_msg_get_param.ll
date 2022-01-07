; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_get_param.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_test_msg_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CryptMsgOpenToDecode failed: %x\0A\00", align 1
@CMSG_TYPE_PARAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"CryptMsgGetParam failed: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected type 0, got %d\0A\00", align 1
@CMSG_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Expected CMSG_DATA, got %d\0A\00", align 1
@CMSG_CONTENT_PARAM = common dso_local global i64 0, align 8
@old_crypt32 = common dso_local global i32 0, align 4
@CMSG_CMS_SIGNER_INFO_PARAM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Parameter %d: expected failure\0A\00", align 1
@CMSG_ENVELOPED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Expected CMSG_ENVELOPED, got %d\0A\00", align 1
@CMSG_HASHED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Expected CMSG_HASHED, got %d\0A\00", align 1
@CMSG_SIGNED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Expected CMSG_SIGNED, got %d\0A\00", align 1
@CMSG_ENCRYPTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"Expected CMSG_ENCRYPTED, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Expected 1000, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_msg_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msg_get_param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %7 = call i32* @CryptMsgOpenToDecode(i32 %6, i32 0, i32 0, i32 0, i32* null, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 (...) @GetLastError()
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %11)
  store i64 0, i64* %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %15 = call i32 @CryptMsgGetParam(i32* %13, i64 %14, i32 0, i64* null, i64* %3)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i64 8, i64* %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %21 = call i32 @CryptMsgGetParam(i32* %19, i64 %20, i32 0, i64* %5, i64* %3)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i64 (...) @GetLastError()
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @CryptMsgClose(i32* %30)
  %32 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %33 = load i64, i64* @CMSG_DATA, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32* @CryptMsgOpenToDecode(i32 %32, i32 0, i32 %34, i32 0, i32* null, i32* null)
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i64 8, i64* %3, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %43 = call i32 @CryptMsgGetParam(i32* %41, i64 %42, i32 0, i64* %5, i64* %3)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @CMSG_DATA, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* @CMSG_CONTENT_PARAM, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %73, %0
  %55 = load i32, i32* @old_crypt32, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @CMSG_CMS_SIGNER_INFO_PARAM, align 8
  %60 = icmp sle i64 %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @CryptMsgGetParam(i32* %64, i64 %65, i32 0, i64* null, i64* %3)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %54

76:                                               ; preds = %61
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @CryptMsgClose(i32* %77)
  %79 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %80 = load i64, i64* @CMSG_ENVELOPED, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32* @CryptMsgOpenToDecode(i32 %79, i32 0, i32 %81, i32 0, i32* null, i32* null)
  store i32* %82, i32** %2, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = icmp ne i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i64 (...) @GetLastError()
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %86)
  store i64 8, i64* %3, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %90 = call i32 @CryptMsgGetParam(i32* %88, i64 %89, i32 0, i64* %5, i64* %3)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @CMSG_ENVELOPED, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* @CMSG_CONTENT_PARAM, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %120, %76
  %102 = load i32, i32* @old_crypt32, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @CMSG_CMS_SIGNER_INFO_PARAM, align 8
  %107 = icmp sle i64 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %110, label %123

110:                                              ; preds = %108
  store i64 0, i64* %3, align 8
  %111 = load i32*, i32** %2, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @CryptMsgGetParam(i32* %111, i64 %112, i32 0, i64* null, i64* %3)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %4, align 8
  br label %101

123:                                              ; preds = %108
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @CryptMsgClose(i32* %124)
  %126 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %127 = load i64, i64* @CMSG_HASHED, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32* @CryptMsgOpenToDecode(i32 %126, i32 0, i32 %128, i32 0, i32* null, i32* null)
  store i32* %129, i32** %2, align 8
  %130 = load i32*, i32** %2, align 8
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i64 (...) @GetLastError()
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %133)
  store i64 8, i64* %3, align 8
  %135 = load i32*, i32** %2, align 8
  %136 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %137 = call i32 @CryptMsgGetParam(i32* %135, i64 %136, i32 0, i64* %5, i64* %3)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i64 (...) @GetLastError()
  %140 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @CMSG_HASHED, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* @CMSG_CONTENT_PARAM, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %167, %123
  %149 = load i32, i32* @old_crypt32, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* @CMSG_CMS_SIGNER_INFO_PARAM, align 8
  %154 = icmp sle i64 %152, %153
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi i1 [ false, %148 ], [ %154, %151 ]
  br i1 %156, label %157, label %170

157:                                              ; preds = %155
  store i64 0, i64* %3, align 8
  %158 = load i32*, i32** %2, align 8
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @CryptMsgGetParam(i32* %158, i64 %159, i32 0, i64* null, i64* %3)
  store i32 %160, i32* %1, align 4
  %161 = load i32, i32* %1, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %165)
  br label %167

167:                                              ; preds = %157
  %168 = load i64, i64* %4, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %4, align 8
  br label %148

170:                                              ; preds = %155
  %171 = load i32*, i32** %2, align 8
  %172 = call i32 @CryptMsgClose(i32* %171)
  %173 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %174 = load i64, i64* @CMSG_SIGNED, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32* @CryptMsgOpenToDecode(i32 %173, i32 0, i32 %175, i32 0, i32* null, i32* null)
  store i32* %176, i32** %2, align 8
  %177 = load i32*, i32** %2, align 8
  %178 = icmp ne i32* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i64 (...) @GetLastError()
  %181 = call i32 @ok(i32 %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %180)
  store i64 8, i64* %3, align 8
  %182 = load i32*, i32** %2, align 8
  %183 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %184 = call i32 @CryptMsgGetParam(i32* %182, i64 %183, i32 0, i64* %5, i64* %3)
  store i32 %184, i32* %1, align 4
  %185 = load i32, i32* %1, align 4
  %186 = call i64 (...) @GetLastError()
  %187 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @CMSG_SIGNED, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %5, align 8
  %193 = call i32 @ok(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %192)
  %194 = load i64, i64* @CMSG_CONTENT_PARAM, align 8
  store i64 %194, i64* %4, align 8
  br label %195

195:                                              ; preds = %214, %170
  %196 = load i32, i32* @old_crypt32, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @CMSG_CMS_SIGNER_INFO_PARAM, align 8
  %201 = icmp sle i64 %199, %200
  br label %202

202:                                              ; preds = %198, %195
  %203 = phi i1 [ false, %195 ], [ %201, %198 ]
  br i1 %203, label %204, label %217

204:                                              ; preds = %202
  store i64 0, i64* %3, align 8
  %205 = load i32*, i32** %2, align 8
  %206 = load i64, i64* %4, align 8
  %207 = call i32 @CryptMsgGetParam(i32* %205, i64 %206, i32 0, i64* null, i64* %3)
  store i32 %207, i32* %1, align 4
  %208 = load i32, i32* %1, align 4
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %204
  %215 = load i64, i64* %4, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %4, align 8
  br label %195

217:                                              ; preds = %202
  %218 = load i32*, i32** %2, align 8
  %219 = call i32 @CryptMsgClose(i32* %218)
  %220 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %221 = load i64, i64* @CMSG_ENCRYPTED, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32* @CryptMsgOpenToDecode(i32 %220, i32 0, i32 %222, i32 0, i32* null, i32* null)
  store i32* %223, i32** %2, align 8
  %224 = load i32*, i32** %2, align 8
  %225 = icmp ne i32* %224, null
  %226 = zext i1 %225 to i32
  %227 = call i64 (...) @GetLastError()
  %228 = call i32 @ok(i32 %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %227)
  store i64 8, i64* %3, align 8
  %229 = load i32*, i32** %2, align 8
  %230 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %231 = call i32 @CryptMsgGetParam(i32* %229, i64 %230, i32 0, i64* %5, i64* %3)
  store i32 %231, i32* %1, align 4
  %232 = load i32, i32* %1, align 4
  %233 = call i64 (...) @GetLastError()
  %234 = call i32 @ok(i32 %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %233)
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* @CMSG_ENCRYPTED, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %5, align 8
  %240 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %239)
  %241 = load i32*, i32** %2, align 8
  %242 = call i32 @CryptMsgClose(i32* %241)
  %243 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %244 = call i32* @CryptMsgOpenToDecode(i32 %243, i32 0, i32 1000, i32 0, i32* null, i32* null)
  store i32* %244, i32** %2, align 8
  %245 = load i32*, i32** %2, align 8
  %246 = icmp ne i32* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i64 (...) @GetLastError()
  %249 = call i32 @ok(i32 %247, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %248)
  store i64 8, i64* %3, align 8
  %250 = load i32*, i32** %2, align 8
  %251 = load i64, i64* @CMSG_TYPE_PARAM, align 8
  %252 = call i32 @CryptMsgGetParam(i32* %250, i64 %251, i32 0, i64* %5, i64* %3)
  store i32 %252, i32* %1, align 4
  %253 = load i32, i32* %1, align 4
  %254 = call i64 (...) @GetLastError()
  %255 = call i32 @ok(i32 %253, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %254)
  %256 = load i64, i64* %5, align 8
  %257 = icmp eq i64 %256, 1000
  %258 = zext i1 %257 to i32
  %259 = load i64, i64* %5, align 8
  %260 = call i32 @ok(i32 %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %259)
  %261 = load i32*, i32** %2, align 8
  %262 = call i32 @CryptMsgClose(i32* %261)
  ret void
}

declare dso_local i32* @CryptMsgOpenToDecode(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptMsgGetParam(i32*, i64, i32, i64*, i64*) #1

declare dso_local i32 @CryptMsgClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
