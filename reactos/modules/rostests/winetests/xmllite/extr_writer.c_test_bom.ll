; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_bom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_bom.versionW = internal constant [14 x i8] c"version=\221.0\22\00", align 1
@test_bom.utf16W = internal constant [7 x i8] c"utf-16\00", align 1
@test_bom.xmlW = internal constant [4 x i8] c"xml\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_IXmlWriter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@XmlWriterProperty_OmitXmlDeclaration = common dso_local global i32 0, align 4
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"got %x,%x\0A\00", align 1
@aW = common dso_local global i32 0, align 4
@XmlWriterProperty_Indent = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected output: %#x,%#x,%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bom() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %7, i32** %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = trunc i32 %13 to i8
  %15 = call i32 (i32, i8*, i8, ...) @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @CreateXmlWriterOutputWithEncodingName(i32* %16, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_bom.utf16W, i64 0, i64 0), i32** %1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 (i32, i8*, i8, ...) @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %23)
  %25 = bitcast i32** %3 to i8**
  %26 = call i32 @CreateXmlWriter(i32* @IID_IXmlWriter, i8** %25, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = trunc i32 %31 to i8
  %33 = call i32 (i32, i8*, i8, ...) @ok(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @XmlWriterProperty_OmitXmlDeclaration, align 4
  %36 = call i32 @writer_set_property(i32* %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @IXmlWriter_SetOutput(i32* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 (i32, i8*, i8, ...) @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @XmlStandalone_Yes, align 4
  %49 = call i32 @IXmlWriter_WriteStartDocument(i32* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = trunc i32 %54 to i8
  %56 = call i32 (i32, i8*, i8, ...) @ok(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @IXmlWriter_Flush(i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @S_OK, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = trunc i32 %63 to i8
  %65 = call i32 (i32, i8*, i8, ...) @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @GetHGlobalFromStream(i32* %66, i32* %5)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = trunc i32 %72 to i8
  %74 = call i32 (i32, i8*, i8, ...) @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i8* @GlobalLock(i32 %75)
  store i8* %76, i8** %2, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %88

82:                                               ; preds = %0
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 254
  br label %88

88:                                               ; preds = %82, %0
  %89 = phi i1 [ false, %0 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %2, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 (i32, i8*, i8, ...) @ok(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %93, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @GlobalUnlock(i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @IStream_Release(i32* %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @IUnknown_Release(i32* %103)
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %105, i32** %4)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = trunc i32 %111 to i8
  %113 = call i32 (i32, i8*, i8, ...) @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @CreateXmlWriterOutputWithEncodingName(i32* %114, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_bom.utf16W, i64 0, i64 0), i32** %1)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %6, align 4
  %121 = trunc i32 %120 to i8
  %122 = call i32 (i32, i8*, i8, ...) @ok(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %121)
  %123 = load i32*, i32** %3, align 8
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @IXmlWriter_SetOutput(i32* %123, i32* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i32 (i32, i8*, i8, ...) @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @IXmlWriter_WriteProcessingInstruction(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_bom.xmlW, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_bom.versionW, i64 0, i64 0))
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @S_OK, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %6, align 4
  %140 = trunc i32 %139 to i8
  %141 = call i32 (i32, i8*, i8, ...) @ok(i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %140)
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @IXmlWriter_Flush(i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @S_OK, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %6, align 4
  %149 = trunc i32 %148 to i8
  %150 = call i32 (i32, i8*, i8, ...) @ok(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @GetHGlobalFromStream(i32* %151, i32* %5)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @S_OK, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %6, align 4
  %158 = trunc i32 %157 to i8
  %159 = call i32 (i32, i8*, i8, ...) @ok(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %158)
  %160 = load i32, i32* %5, align 4
  %161 = call i8* @GlobalLock(i32 %160)
  store i8* %161, i8** %2, align 8
  %162 = load i8*, i8** %2, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 255
  br i1 %166, label %167, label %173

167:                                              ; preds = %88
  %168 = load i8*, i8** %2, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 254
  br label %173

173:                                              ; preds = %167, %88
  %174 = phi i1 [ false, %88 ], [ %172, %167 ]
  %175 = zext i1 %174 to i32
  %176 = load i8*, i8** %2, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %2, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = call i32 (i32, i8*, i8, ...) @ok(i32 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %178, i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @GlobalUnlock(i32 %184)
  %186 = load i32*, i32** %1, align 8
  %187 = call i32 @IUnknown_Release(i32* %186)
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @IStream_Release(i32* %188)
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %190, i32** %4)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @S_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %6, align 4
  %197 = trunc i32 %196 to i8
  %198 = call i32 (i32, i8*, i8, ...) @ok(i32 %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @CreateXmlWriterOutputWithEncodingName(i32* %199, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_bom.utf16W, i64 0, i64 0), i32** %1)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @S_OK, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %6, align 4
  %206 = trunc i32 %205 to i8
  %207 = call i32 (i32, i8*, i8, ...) @ok(i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %206)
  %208 = load i32*, i32** %3, align 8
  %209 = load i32*, i32** %1, align 8
  %210 = call i32 @IXmlWriter_SetOutput(i32* %208, i32* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @S_OK, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %6, align 4
  %216 = trunc i32 %215 to i8
  %217 = call i32 (i32, i8*, i8, ...) @ok(i32 %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %216)
  %218 = load i32*, i32** %3, align 8
  %219 = load i32, i32* @aW, align 4
  %220 = call i32 @IXmlWriter_WriteStartElement(i32* %218, i32* null, i32 %219, i32* null)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @S_OK, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %6, align 4
  %226 = trunc i32 %225 to i8
  %227 = call i32 (i32, i8*, i8, ...) @ok(i32 %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %226)
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @IXmlWriter_Flush(i32* %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @S_OK, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %6, align 4
  %235 = trunc i32 %234 to i8
  %236 = call i32 (i32, i8*, i8, ...) @ok(i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %235)
  %237 = load i32*, i32** %4, align 8
  %238 = call i32 @GetHGlobalFromStream(i32* %237, i32* %5)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @S_OK, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %6, align 4
  %244 = trunc i32 %243 to i8
  %245 = call i32 (i32, i8*, i8, ...) @ok(i32 %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %244)
  %246 = load i32, i32* %5, align 4
  %247 = call i8* @GlobalLock(i32 %246)
  store i8* %247, i8** %2, align 8
  %248 = load i8*, i8** %2, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp eq i32 %251, 255
  br i1 %252, label %253, label %259

253:                                              ; preds = %173
  %254 = load i8*, i8** %2, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %257, 254
  br label %259

259:                                              ; preds = %253, %173
  %260 = phi i1 [ false, %173 ], [ %258, %253 ]
  %261 = zext i1 %260 to i32
  %262 = load i8*, i8** %2, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = load i8*, i8** %2, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = call i32 (i32, i8*, i8, ...) @ok(i32 %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %264, i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @GlobalUnlock(i32 %270)
  %272 = load i32*, i32** %1, align 8
  %273 = call i32 @IUnknown_Release(i32* %272)
  %274 = load i32*, i32** %4, align 8
  %275 = call i32 @IStream_Release(i32* %274)
  %276 = load i32, i32* @TRUE, align 4
  %277 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %276, i32** %4)
  store i32 %277, i32* %6, align 4
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @S_OK, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %6, align 4
  %283 = trunc i32 %282 to i8
  %284 = call i32 (i32, i8*, i8, ...) @ok(i32 %281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %283)
  %285 = load i32*, i32** %4, align 8
  %286 = call i32 @CreateXmlWriterOutputWithEncodingName(i32* %285, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_bom.utf16W, i64 0, i64 0), i32** %1)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @S_OK, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %6, align 4
  %292 = trunc i32 %291 to i8
  %293 = call i32 (i32, i8*, i8, ...) @ok(i32 %290, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %292)
  %294 = load i32*, i32** %3, align 8
  %295 = load i32*, i32** %1, align 8
  %296 = call i32 @IXmlWriter_SetOutput(i32* %294, i32* %295)
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @S_OK, align 4
  %299 = icmp eq i32 %297, %298
  %300 = zext i1 %299 to i32
  %301 = load i32, i32* %6, align 4
  %302 = trunc i32 %301 to i8
  %303 = call i32 (i32, i8*, i8, ...) @ok(i32 %300, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %302)
  %304 = load i32*, i32** %3, align 8
  %305 = load i32, i32* @XmlWriterProperty_Indent, align 4
  %306 = call i32 @writer_set_property(i32* %304, i32 %305)
  %307 = load i32*, i32** %3, align 8
  %308 = load i32, i32* @aW, align 4
  %309 = call i32 @IXmlWriter_WriteElementString(i32* %307, i32* null, i32 %308, i32* null, i32* null)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* @S_OK, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %6, align 4
  %315 = trunc i32 %314 to i8
  %316 = call i32 (i32, i8*, i8, ...) @ok(i32 %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %315)
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 @IXmlWriter_Flush(i32* %317)
  store i32 %318, i32* %6, align 4
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* @S_OK, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = load i32, i32* %6, align 4
  %324 = trunc i32 %323 to i8
  %325 = call i32 (i32, i8*, i8, ...) @ok(i32 %322, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %324)
  %326 = load i32*, i32** %4, align 8
  %327 = call i32 @GetHGlobalFromStream(i32* %326, i32* %5)
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* @S_OK, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  %332 = load i32, i32* %6, align 4
  %333 = trunc i32 %332 to i8
  %334 = call i32 (i32, i8*, i8, ...) @ok(i32 %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %333)
  %335 = load i32, i32* %5, align 4
  %336 = call i8* @GlobalLock(i32 %335)
  store i8* %336, i8** %2, align 8
  %337 = load i8*, i8** %2, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 0
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %340, 255
  br i1 %341, label %342, label %354

342:                                              ; preds = %259
  %343 = load i8*, i8** %2, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp eq i32 %346, 254
  br i1 %347, label %348, label %354

348:                                              ; preds = %342
  %349 = load i8*, i8** %2, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 2
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp eq i32 %352, 60
  br label %354

354:                                              ; preds = %348, %342, %259
  %355 = phi i1 [ false, %342 ], [ false, %259 ], [ %353, %348 ]
  %356 = zext i1 %355 to i32
  %357 = load i8*, i8** %2, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 0
  %359 = load i8, i8* %358, align 1
  %360 = load i8*, i8** %2, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 1
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = load i8*, i8** %2, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 2
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = call i32 (i32, i8*, i8, ...) @ok(i32 %356, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %359, i32 %363, i32 %367)
  %369 = load i32, i32* %5, align 4
  %370 = call i32 @GlobalUnlock(i32 %369)
  %371 = load i32*, i32** %1, align 8
  %372 = call i32 @IUnknown_Release(i32* %371)
  %373 = load i32*, i32** %4, align 8
  %374 = call i32 @IStream_Release(i32* %373)
  %375 = load i32*, i32** %3, align 8
  %376 = call i32 @IXmlWriter_Release(i32* %375)
  ret void
}

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @CreateXmlWriterOutputWithEncodingName(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @CreateXmlWriter(i32*, i8**, i32*) #1

declare dso_local i32 @writer_set_property(i32*, i32) #1

declare dso_local i32 @IXmlWriter_SetOutput(i32*, i32*) #1

declare dso_local i32 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i32 @IXmlWriter_Flush(i32*) #1

declare dso_local i32 @GetHGlobalFromStream(i32*, i32*) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IXmlWriter_WriteProcessingInstruction(i32*, i8*, i8*) #1

declare dso_local i32 @IXmlWriter_WriteStartElement(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IXmlWriter_WriteElementString(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @IXmlWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
