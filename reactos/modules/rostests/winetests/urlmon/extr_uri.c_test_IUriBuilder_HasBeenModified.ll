; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_IUriBuilder_HasBeenModified.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_IUriBuilder_HasBeenModified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\0A\00", align 1
@test_IUriBuilder_HasBeenModified.hostW = internal constant [11 x i8] c"google.com\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Error: IUriBuilder_HasBeenModified returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Error: IUriBuilder_SetHost returned 0x%08x, expected 0x%08x.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Error: Expected received to be TRUE.\0A\00", align 1
@http_urlW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Error: CreateUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Error: Expected received to be FALSE.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Error: IUriBuilder_GetHost returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Error: Expected %s but got %s instead.\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Error: Expected len to be %d, but was %d instead.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Error: IUriBuilder_SetIUri returned 0x%08x, expected 0x%09x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Error: Expected len to %d, but was %d instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IUriBuilder_HasBeenModified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IUriBuilder_HasBeenModified() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %7 = call i64 @pCreateIUriBuilder(i32* null, i32 0, i32 0, i32** %2)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @SUCCEEDED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %287

18:                                               ; preds = %0
  store i32* null, i32** %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @IUriBuilder_HasBeenModified(i32* %19, i64* null)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @E_POINTER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @E_POINTER, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @IUriBuilder_SetHost(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @IUriBuilder_HasBeenModified(i32* %37, i64* %4)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %1, align 8
  %47 = call i64 @SUCCEEDED(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %18
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %18
  %56 = load i32, i32* @http_urlW, align 4
  %57 = call i64 @pCreateUri(i32 %56, i32 0, i32 0, i32** %3)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %62, i64 %63)
  %65 = load i64, i64* %1, align 8
  %66 = call i64 @SUCCEEDED(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %280

68:                                               ; preds = %55
  store i64 -1, i64* %6, align 8
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @IUriBuilder_SetIUri(i32* %69, i32* %70)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i64 @IUriBuilder_HasBeenModified(i32* %79, i64* %4)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i64, i64* %1, align 8
  %89 = call i64 @SUCCEEDED(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %68
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @FALSE, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %68
  %98 = load i32*, i32** %2, align 8
  %99 = call i64 @IUriBuilder_SetHost(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  store i64 %99, i64* %1, align 8
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = call i64 @IUriBuilder_HasBeenModified(i32* %107, i64* %4)
  store i64 %108, i64* %1, align 8
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %113, i64 %114)
  %116 = load i64, i64* %1, align 8
  %117 = call i64 @SUCCEEDED(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %97
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @TRUE, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %119, %97
  %126 = load i32*, i32** %2, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = call i64 @IUriBuilder_SetIUri(i32* %126, i32* %127)
  store i64 %128, i64* %1, align 8
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* @S_OK, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %1, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %133, i64 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = call i64 @IUriBuilder_HasBeenModified(i32* %136, i64* %4)
  store i64 %137, i64* %1, align 8
  %138 = load i64, i64* %1, align 8
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %1, align 8
  %143 = load i64, i64* @S_OK, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %142, i64 %143)
  %145 = load i64, i64* %1, align 8
  %146 = call i64 @SUCCEEDED(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %125
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @TRUE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %148, %125
  %155 = load i32*, i32** %2, align 8
  %156 = call i64 @IUriBuilder_GetHost(i32* %155, i64* %6, i8** %5)
  store i64 %156, i64* %1, align 8
  %157 = load i64, i64* %1, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %1, align 8
  %162 = load i64, i64* @S_OK, align 8
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i64 %161, i64 %162)
  %164 = load i64, i64* %1, align 8
  %165 = call i64 @SUCCEEDED(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %154
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 @lstrcmpW(i8* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %174 = load i8*, i8** %5, align 8
  %175 = call i64 @wine_dbgstr_w(i8* %174)
  %176 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %173, i64 %175)
  %177 = load i64, i64* %6, align 8
  %178 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %182 = load i64, i64* %6, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 %181, i64 %182)
  br label %184

184:                                              ; preds = %167, %154
  %185 = load i32*, i32** %2, align 8
  %186 = call i64 @IUriBuilder_SetIUri(i32* %185, i32* null)
  store i64 %186, i64* %1, align 8
  %187 = load i64, i64* %1, align 8
  %188 = load i64, i64* @S_OK, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %1, align 8
  %192 = load i64, i64* @S_OK, align 8
  %193 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %191, i64 %192)
  %194 = load i32*, i32** %2, align 8
  %195 = call i64 @IUriBuilder_SetHost(i32* %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  store i64 %195, i64* %1, align 8
  %196 = load i64, i64* %1, align 8
  %197 = load i64, i64* @S_OK, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i64, i64* %1, align 8
  %201 = load i64, i64* @S_OK, align 8
  %202 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %200, i64 %201)
  %203 = load i32*, i32** %2, align 8
  %204 = call i64 @IUriBuilder_HasBeenModified(i32* %203, i64* %4)
  store i64 %204, i64* %1, align 8
  %205 = load i64, i64* %1, align 8
  %206 = load i64, i64* @S_OK, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i64, i64* %1, align 8
  %210 = load i64, i64* @S_OK, align 8
  %211 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %209, i64 %210)
  %212 = load i64, i64* %1, align 8
  %213 = call i64 @SUCCEEDED(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %184
  %216 = load i64, i64* %4, align 8
  %217 = load i64, i64* @TRUE, align 8
  %218 = icmp eq i64 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %221

221:                                              ; preds = %215, %184
  %222 = load i32*, i32** %2, align 8
  %223 = call i64 @IUriBuilder_SetIUri(i32* %222, i32* null)
  store i64 %223, i64* %1, align 8
  %224 = load i64, i64* %1, align 8
  %225 = load i64, i64* @S_OK, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %1, align 8
  %229 = load i64, i64* @S_OK, align 8
  %230 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i64 %228, i64 %229)
  %231 = load i32*, i32** %2, align 8
  %232 = call i64 @IUriBuilder_HasBeenModified(i32* %231, i64* %4)
  store i64 %232, i64* %1, align 8
  %233 = load i64, i64* %1, align 8
  %234 = load i64, i64* @S_OK, align 8
  %235 = icmp eq i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = load i64, i64* %1, align 8
  %238 = load i64, i64* @S_OK, align 8
  %239 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %237, i64 %238)
  %240 = load i64, i64* %1, align 8
  %241 = call i64 @SUCCEEDED(i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %221
  %244 = load i64, i64* %4, align 8
  %245 = load i64, i64* @TRUE, align 8
  %246 = icmp eq i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %249

249:                                              ; preds = %243, %221
  %250 = load i32*, i32** %2, align 8
  %251 = call i64 @IUriBuilder_GetHost(i32* %250, i64* %6, i8** %5)
  store i64 %251, i64* %1, align 8
  %252 = load i64, i64* %1, align 8
  %253 = load i64, i64* @S_OK, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = load i64, i64* %1, align 8
  %257 = load i64, i64* @S_OK, align 8
  %258 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i64 %256, i64 %257)
  %259 = load i64, i64* %1, align 8
  %260 = call i64 @SUCCEEDED(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %279

262:                                              ; preds = %249
  %263 = load i8*, i8** %5, align 8
  %264 = call i32 @lstrcmpW(i8* %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %269 = load i8*, i8** %5, align 8
  %270 = call i64 @wine_dbgstr_w(i8* %269)
  %271 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %268, i64 %270)
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_IUriBuilder_HasBeenModified.hostW, i64 0, i64 0))
  %277 = load i64, i64* %6, align 8
  %278 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i64 %276, i64 %277)
  br label %279

279:                                              ; preds = %262, %249
  br label %280

280:                                              ; preds = %279, %55
  %281 = load i32*, i32** %3, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32*, i32** %3, align 8
  %285 = call i32 @IUri_Release(i32* %284)
  br label %286

286:                                              ; preds = %283, %280
  br label %287

287:                                              ; preds = %286, %0
  %288 = load i32*, i32** %2, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32*, i32** %2, align 8
  %292 = call i32 @IUriBuilder_Release(i32* %291)
  br label %293

293:                                              ; preds = %290, %287
  ret void
}

declare dso_local i64 @pCreateIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IUriBuilder_HasBeenModified(i32*, i64*) #1

declare dso_local i64 @IUriBuilder_SetHost(i32*, i8*) #1

declare dso_local i64 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i64 @IUriBuilder_SetIUri(i32*, i32*) #1

declare dso_local i64 @IUriBuilder_GetHost(i32*, i64*, i8**) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i32 @IUriBuilder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
