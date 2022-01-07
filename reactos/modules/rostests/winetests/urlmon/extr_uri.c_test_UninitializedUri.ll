; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_UninitializedUri.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_UninitializedUri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CLSID_CUri = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUri = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Skipping uninitialized Uri tests.\0A\00", align 1
@IID_IUriBuilderFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"QueryInterface(IID_IUriBuillderFactory) failed: %x.\0A\00", align 1
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"QueryInterface(IID_IPersistStream) failed: %x.\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"GetAbsoluteUri returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"GetAuthority returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"GetDisplayUri returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"GetDomain returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"GetExtension returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"GetFragment returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"GetHost returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"GetHostType returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"GetPassword returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"GetPathAndQuery returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"GetPort returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"GetProperties returned %x, expected E_UNEXPECTED.\0A\00", align 1
@Uri_PROPERTY_RAW_URI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [53 x i8] c"GetPropertyBSTR returned %x, expected E_UNEXPECTED.\0A\00", align 1
@Uri_PROPERTY_PORT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [54 x i8] c"GetPropertyDWORD returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"GetPropertyLength returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"GetQuery returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"GetRawUri returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"GetScheme returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"GetSchemeName returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"GetUserInfo returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"GetUserName returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"GetZone returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"IsEqual returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"CreateInitializedIUriBuilder returned %x, expected E_UNEXPECTED.\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"CreateIUriBuilder returned %x, expected S_OK.\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"GetSizeMax returned %x, expected S_OK.\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"ui.LowPart = %d, expected 34.\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"IsDirty returned %x, expected S_FALSE.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UninitializedUri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UninitializedUri() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %11 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %12 = or i32 %10, %11
  %13 = bitcast i32** %1 to i8**
  %14 = call i32 @CoCreateInstance(i32* @CLSID_CUri, i32* null, i32 %12, i32* @IID_IUri, i8** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %292

20:                                               ; preds = %0
  %21 = load i32*, i32** %1, align 8
  %22 = bitcast i32** %2 to i8**
  %23 = call i32 @IUri_QueryInterface(i32* %21, i32* @IID_IUriBuilderFactory, i8** %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @S_OK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = bitcast i32** %3 to i8**
  %32 = call i32 @IUri_QueryInterface(i32* %30, i32* @IID_IPersistStream, i8** %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @IUri_GetAbsoluteUri(i32* %39, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @E_UNEXPECTED, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @IUri_GetAbsoluteUri(i32* %47, i32* %5)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @E_UNEXPECTED, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @IUri_GetAuthority(i32* %55, i32* %5)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @E_UNEXPECTED, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @IUri_GetDisplayUri(i32* %63, i32* %5)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @E_UNEXPECTED, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @IUri_GetDomain(i32* %71, i32* %5)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @E_UNEXPECTED, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @IUri_GetExtension(i32* %79, i32* %5)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @E_UNEXPECTED, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @IUri_GetFragment(i32* %87, i32* %5)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @E_UNEXPECTED, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @IUri_GetHost(i32* %95, i32* %5)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @E_UNEXPECTED, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @IUri_GetHostType(i32* %103, i32* %6)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @E_UNEXPECTED, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @IUri_GetPassword(i32* %111, i32* %5)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @E_UNEXPECTED, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IUri_GetPassword(i32* %119, i32* %5)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @E_UNEXPECTED, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @IUri_GetPathAndQuery(i32* %127, i32* %5)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @E_UNEXPECTED, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %1, align 8
  %136 = call i32 @IUri_GetPort(i32* %135, i32* %6)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @E_UNEXPECTED, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @IUri_GetProperties(i32* %143, i32* %6)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @E_UNEXPECTED, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %1, align 8
  %152 = load i32, i32* @Uri_PROPERTY_RAW_URI, align 4
  %153 = call i32 @IUri_GetPropertyBSTR(i32* %151, i32 %152, i32* %5, i32 0)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @E_UNEXPECTED, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 %158)
  %160 = load i32*, i32** %1, align 8
  %161 = load i32, i32* @Uri_PROPERTY_PORT, align 4
  %162 = call i32 @IUri_GetPropertyDWORD(i32* %160, i32 %161, i32* %6, i32 0)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @E_UNEXPECTED, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %1, align 8
  %170 = load i32, i32* @Uri_PROPERTY_RAW_URI, align 4
  %171 = call i32 @IUri_GetPropertyLength(i32* %169, i32 %170, i32* %6, i32 0)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @E_UNEXPECTED, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %1, align 8
  %179 = call i32 @IUri_GetQuery(i32* %178, i32* %5)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @E_UNEXPECTED, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %184)
  %186 = load i32*, i32** %1, align 8
  %187 = call i32 @IUri_GetRawUri(i32* %186, i32* %5)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @E_UNEXPECTED, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @ok(i32 %191, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %1, align 8
  %195 = call i32 @IUri_GetScheme(i32* %194, i32* %6)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @E_UNEXPECTED, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0), i32 %200)
  %202 = load i32*, i32** %1, align 8
  %203 = call i32 @IUri_GetSchemeName(i32* %202, i32* %5)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @E_UNEXPECTED, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %1, align 8
  %211 = call i32 @IUri_GetUserInfo(i32* %210, i32* %5)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @E_UNEXPECTED, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @ok(i32 %215, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 %216)
  %218 = load i32*, i32** %1, align 8
  %219 = call i32 @IUri_GetUserName(i32* %218, i32* %5)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @E_UNEXPECTED, align 4
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @ok(i32 %223, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0), i32 %224)
  %226 = load i32*, i32** %1, align 8
  %227 = call i32 @IUri_GetZone(i32* %226, i32* %6)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @E_UNEXPECTED, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @ok(i32 %231, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i32 %232)
  %234 = load i32*, i32** %1, align 8
  %235 = load i32*, i32** %1, align 8
  %236 = call i32 @IUri_IsEqual(i32* %234, i32* %235, i32* %7)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @E_UNEXPECTED, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @ok(i32 %240, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i32 %241)
  %243 = load i32*, i32** %2, align 8
  %244 = call i32 @IUriBuilderFactory_CreateInitializedIUriBuilder(i32* %243, i32 0, i32 0, i32** %4)
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @E_UNEXPECTED, align 4
  %247 = icmp eq i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @ok(i32 %248, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.26, i64 0, i64 0), i32 %249)
  %251 = load i32*, i32** %2, align 8
  %252 = call i32 @IUriBuilderFactory_CreateIUriBuilder(i32* %251, i32 0, i32 0, i32** %4)
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @S_OK, align 4
  %255 = icmp eq i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @ok(i32 %256, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 %257)
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @IUriBuilder_Release(i32* %259)
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @IPersistStream_GetSizeMax(i32* %261, %struct.TYPE_5__* %8)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @S_OK, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @ok(i32 %266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i32 %267)
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 34
  %273 = zext i1 %272 to i32
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %276)
  %278 = load i32*, i32** %3, align 8
  %279 = call i32 @IPersistStream_IsDirty(i32* %278)
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @S_FALSE, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @ok(i32 %283, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %284)
  %286 = load i32*, i32** %3, align 8
  %287 = call i32 @IPersistStream_Release(i32* %286)
  %288 = load i32*, i32** %2, align 8
  %289 = call i32 @IUriBuilderFactory_Release(i32* %288)
  %290 = load i32*, i32** %1, align 8
  %291 = call i32 @IUri_Release(i32* %290)
  br label %292

292:                                              ; preds = %20, %18
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IUri_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IUri_GetAbsoluteUri(i32*, i32*) #1

declare dso_local i32 @IUri_GetAuthority(i32*, i32*) #1

declare dso_local i32 @IUri_GetDisplayUri(i32*, i32*) #1

declare dso_local i32 @IUri_GetDomain(i32*, i32*) #1

declare dso_local i32 @IUri_GetExtension(i32*, i32*) #1

declare dso_local i32 @IUri_GetFragment(i32*, i32*) #1

declare dso_local i32 @IUri_GetHost(i32*, i32*) #1

declare dso_local i32 @IUri_GetHostType(i32*, i32*) #1

declare dso_local i32 @IUri_GetPassword(i32*, i32*) #1

declare dso_local i32 @IUri_GetPathAndQuery(i32*, i32*) #1

declare dso_local i32 @IUri_GetPort(i32*, i32*) #1

declare dso_local i32 @IUri_GetProperties(i32*, i32*) #1

declare dso_local i32 @IUri_GetPropertyBSTR(i32*, i32, i32*, i32) #1

declare dso_local i32 @IUri_GetPropertyDWORD(i32*, i32, i32*, i32) #1

declare dso_local i32 @IUri_GetPropertyLength(i32*, i32, i32*, i32) #1

declare dso_local i32 @IUri_GetQuery(i32*, i32*) #1

declare dso_local i32 @IUri_GetRawUri(i32*, i32*) #1

declare dso_local i32 @IUri_GetScheme(i32*, i32*) #1

declare dso_local i32 @IUri_GetSchemeName(i32*, i32*) #1

declare dso_local i32 @IUri_GetUserInfo(i32*, i32*) #1

declare dso_local i32 @IUri_GetUserName(i32*, i32*) #1

declare dso_local i32 @IUri_GetZone(i32*, i32*) #1

declare dso_local i32 @IUri_IsEqual(i32*, i32*, i32*) #1

declare dso_local i32 @IUriBuilderFactory_CreateInitializedIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i32 @IUriBuilderFactory_CreateIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i32 @IUriBuilder_Release(i32*) #1

declare dso_local i32 @IPersistStream_GetSizeMax(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @IPersistStream_IsDirty(i32*) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IUriBuilderFactory_Release(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
