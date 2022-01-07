; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapSchemaToName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapSchemaToName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WICMapSchemaToName.xmW = internal constant [3 x i8] c"xm\00", align 1
@test_WICMapSchemaToName.xmpW = internal constant [4 x i8] c"xmp\00", align 1
@test_WICMapSchemaToName.schemaW = internal global [29 x i8] c"http://ns.adobe.com/xap/1.0/\00", align 16
@test_WICMapSchemaToName.SCHEMAW = internal global [29 x i8] c"HTTP://ns.adobe.com/xap/1.0/\00", align 16
@GUID_MetadataFormatUnknown = common dso_local global i8 0, align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@WINCODEC_ERR_PROPERTYNOTFOUND = common dso_local global i32 0, align 4
@GUID_MetadataFormatXMP = common dso_local global i8 0, align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@schema_list = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Modern schemas are not supported\0A\00", align 1
@guid_list = common dso_local global i8** null, align 8
@GUID_MetadataFormatXMPStruct = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%u: %u: format %s does not support schema %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%u: %u: format %s supports schema %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WICMapSchemaToName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WICMapSchemaToName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatUnknown, i8* null, i32 0, i8* null, i32* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatUnknown, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* null, i32* null)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @E_INVALIDARG, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %1, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatUnknown, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* null, i32* %2)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @WINCODEC_ERR_PROPERTYNOTFOUND, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @WICMapSchemaToName(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* null, i32* %2)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @E_INVALIDARG, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* null, i32* null)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @E_INVALIDARG, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -559038737, i32* %2, align 4
  %41 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* null, i32* %2)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 4
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 -559038737, i32* %2, align 4
  %53 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 4, i8* null, i32* %2)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 4
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 -559038737, i32* %2, align 4
  %65 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.SCHEMAW, i64 0, i64 0), i32 0, i8* null, i32* %2)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @WINCODEC_ERR_PROPERTYNOTFOUND, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %1, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, -559038737
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %77, align 16
  store i32 -559038737, i32* %2, align 4
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %79 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 4, i8* %78, i32* %2)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 4
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %92 = call i32 @lstrcmpW(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WICMapSchemaToName.xmpW, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %97 = call i32 @wine_dbgstr_w(i8* %96)
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  store i32 -559038737, i32* %2, align 4
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %100 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 0, i8* %99, i32* %2)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @E_INVALIDARG, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %1, align 4
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %2, align 4
  %108 = icmp eq i32 %107, -559038737
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %2, align 4
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %112, align 16
  store i32 -559038737, i32* %2, align 4
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %114 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 3, i8* %113, i32* %2)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %117 = call i32 @HRESULT_FROM_WIN32(i32 %116)
  %118 = icmp eq i32 %115, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %1, align 4
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, -559038737
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %128 = call i32 @lstrcmpW(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_WICMapSchemaToName.xmW, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %133 = call i32 @wine_dbgstr_w(i8* %132)
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %136 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_WICMapSchemaToName.schemaW, i64 0, i64 0), i32 4, i8* %135, i32* null)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* @E_INVALIDARG, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %1, align 4
  %142 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load i8**, i8*** @schema_list, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @WICMapSchemaToName(i8* @GUID_MetadataFormatXMP, i8* %145, i32 0, i8* null, i32* %2)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* @WINCODEC_ERR_PROPERTYNOTFOUND, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %0
  %151 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %239

152:                                              ; preds = %0
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %236, %152
  %154 = load i32, i32* %3, align 4
  %155 = load i8**, i8*** @guid_list, align 8
  %156 = call i32 @ARRAY_SIZE(i8** %155)
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %239

158:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %232, %158
  %160 = load i32, i32* %4, align 4
  %161 = load i8**, i8*** @schema_list, align 8
  %162 = call i32 @ARRAY_SIZE(i8** %161)
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %235

164:                                              ; preds = %159
  %165 = load i8**, i8*** @guid_list, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** @schema_list, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @WICMapSchemaToName(i8* %169, i8* %174, i32 0, i8* null, i32* %2)
  store i32 %175, i32* %1, align 4
  %176 = load i8**, i8*** @guid_list, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @IsEqualGUID(i8* %180, i8* @GUID_MetadataFormatXMP)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %164
  %184 = load i8**, i8*** @guid_list, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IsEqualGUID(i8* %188, i8* @GUID_MetadataFormatXMPStruct)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %183, %164
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* @S_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* %4, align 4
  %198 = load i8**, i8*** @guid_list, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @wine_dbgstr_guid(i8* %202)
  %204 = load i8**, i8*** @schema_list, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @wine_dbgstr_w(i8* %208)
  %210 = call i32 (i32, i8*, i32, ...) @ok(i32 %195, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197, i32 %203, i32 %209)
  br label %231

211:                                              ; preds = %183
  %212 = load i32, i32* %1, align 4
  %213 = load i32, i32* @WINCODEC_ERR_PROPERTYNOTFOUND, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* %4, align 4
  %218 = load i8**, i8*** @guid_list, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @wine_dbgstr_guid(i8* %222)
  %224 = load i8**, i8*** @schema_list, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @wine_dbgstr_w(i8* %228)
  %230 = call i32 (i32, i8*, i32, ...) @ok(i32 %215, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %216, i32 %217, i32 %223, i32 %229)
  br label %231

231:                                              ; preds = %211, %191
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %159

235:                                              ; preds = %159
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %3, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %153

239:                                              ; preds = %150, %153
  ret void
}

declare dso_local i32 @WICMapSchemaToName(i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @IsEqualGUID(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_guid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
