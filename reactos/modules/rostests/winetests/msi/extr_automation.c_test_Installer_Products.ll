; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_test_Installer_Products.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_test_Installer_Products.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Installer_Products failed, hresult 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"StringList_NewEnum failed, hresult 0x%08x\0A\00", align 1
@IID_IEnumVARIANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"IUnknown::QueryInterface returned 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"IEnumVARIANT tests\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"StringList_Count failed, hresult 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"StringList_Item failed (idx %d, count %d), hresult 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Installer_ProductState failed, hresult 0x%08x\0A\00", align 1
@INSTALLSTATE_DEFAULT = common dso_local global i32 0, align 4
@INSTALLSTATE_ADVERTISED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"Installer_ProductState returned %d, expected %d or %d\0A\00", align 1
@szProductCode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [61 x i8] c"IEnumVARIANT_Next failed (idx %d, count %d), hresult 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%d items were retrieved, expected 1\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"IEnumVARIANT_Next returned variant of type %d, expected %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"%s returned by StringList_Item does not match %s returned by IEnumVARIANT_Next\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Product expected to %s installed but product code was %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"not be\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"IEnumVARIANT_Clone failed, hresult 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"IEnumVARIANT_Next failed, hresult 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%d items were retrieved, expected 0\0A\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"IEnumVARIANT::Next of clone will not return success with 0 products\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [42 x i8] c"IEnumVARIANT_Skip failed, hresult 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"IEnumVARIANT_Reset failed, hresult 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"IEnumVARIANT::Skip impossible for 0 products\0A\00", align 1
@DISP_E_BADINDEX = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [85 x i8] c"StringList_Item for an invalid index did not return DISP_E_BADINDEX, hresult 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_Installer_Products to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Installer_Products(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %3, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %13, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %14, align 8
  %21 = call i32 @Installer_Products(i32** %13)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %327

31:                                               ; preds = %1
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @StringList__NewEnum(i32* %32, i32** %7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = bitcast i32** %8 to i8**
  %46 = call i32 @IUnknown_QueryInterface(i32* %44, i32* @IID_IEnumVARIANT, i8** %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @StringList_Count(i32* %59, i32* %11)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %155, %58
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %158

71:                                               ; preds = %67
  %72 = mul nuw i64 4, %17
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(i32* %19, i32 0, i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @StringList_Item(i32* %75, i32 %76, i32* %19)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @S_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %154

89:                                               ; preds = %71
  %90 = call i32 @Installer_ProductState(i32* %19, i32* %12)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @S_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @INSTALLSTATE_DEFAULT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @INSTALLSTATE_ADVERTISED, align 4
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ true, %100 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @INSTALLSTATE_DEFAULT, align 4
  %113 = load i32, i32* @INSTALLSTATE_ADVERTISED, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %89
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @szProductCode, align 4
  %120 = call i32 @lstrcmpW(i32* %19, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* @TRUE, align 8
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %122, %118, %115
  %125 = load i32*, i32** %8, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @IEnumVARIANT_Next(i32* %128, i32 1, i32* %9, i32* %10)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @S_OK, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = call i32 @V_VT(i32* %9)
  %144 = load i32, i32* @VT_BSTR, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @V_VT(i32* %9)
  %148 = load i32, i32* @VT_BSTR, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %147, i32 %148)
  %150 = call i32 @V_BSTR(i32* %9)
  %151 = call i32 @ok_w2(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i32* %19, i32 %150)
  %152 = call i32 @VariantClear(i32* %9)
  br label %153

153:                                              ; preds = %127, %124
  br label %154

154:                                              ; preds = %153, %71
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %67

158:                                              ; preds = %67
  %159 = load i64, i64* %2, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load i64, i64* %2, align 8
  %163 = load i64, i64* %14, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %2, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)
  %170 = load i64, i64* %14, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)
  %174 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* %169, i8* %173)
  br label %175

175:                                              ; preds = %161, %158
  %176 = load i32*, i32** %8, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %300

178:                                              ; preds = %175
  store i32* null, i32** %15, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @IEnumVARIANT_Clone(i32* %179, i32** %15)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @S_OK, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @S_OK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %178
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %190
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @IEnumVARIANT_Next(i32* %194, i32 1, i32* %9, i32* %10)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @S_OK, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %202, 1
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %10, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %205)
  %207 = call i32 @V_VT(i32* %9)
  %208 = load i32, i32* @VT_BSTR, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @V_VT(i32* %9)
  %212 = load i32, i32* @VT_BSTR, align 4
  %213 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %211, i32 %212)
  %214 = call i32 @VariantClear(i32* %9)
  br label %217

215:                                              ; preds = %190
  %216 = call i32 @skip(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %193
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @IEnumVARIANT_Release(i32* %218)
  br label %220

220:                                              ; preds = %217, %178
  %221 = load i32*, i32** %8, align 8
  %222 = call i32 @IEnumVARIANT_Skip(i32* %221, i32 1)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @S_FALSE, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %5, align 4
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 %227)
  %229 = load i32*, i32** %8, align 8
  %230 = call i32 @IEnumVARIANT_Next(i32* %229, i32 1, i32* null, i32* %10)
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @S_FALSE, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %5, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %10, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %10, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %240)
  %242 = load i32*, i32** %8, align 8
  %243 = call i32 @IEnumVARIANT_Next(i32* %242, i32 1, i32* %9, i32* %10)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* @S_FALSE, align 4
  %246 = icmp eq i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %5, align 4
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* %10, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %253)
  %255 = call i32 @VariantClear(i32* %9)
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @IEnumVARIANT_Reset(i32* %256)
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* @S_OK, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %5, align 4
  %263 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %297

266:                                              ; preds = %220
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sub nsw i32 %268, 1
  %270 = call i32 @IEnumVARIANT_Skip(i32* %267, i32 %269)
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* @S_OK, align 4
  %273 = icmp eq i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %5, align 4
  %276 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 %275)
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 @IEnumVARIANT_Next(i32* %277, i32 1, i32* %9, i32* null)
  store i32 %278, i32* %5, align 4
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @S_OK, align 4
  %281 = icmp eq i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %5, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %283, i32 %284, i32 %285)
  %287 = call i32 @V_VT(i32* %9)
  %288 = load i32, i32* @VT_BSTR, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @V_VT(i32* %9)
  %292 = load i32, i32* @VT_BSTR, align 4
  %293 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %291, i32 %292)
  %294 = call i32 @V_BSTR(i32* %9)
  %295 = call i32 @ok_w2(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i32* %19, i32 %294)
  %296 = call i32 @VariantClear(i32* %9)
  br label %299

297:                                              ; preds = %220
  %298 = call i32 @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %266
  br label %300

300:                                              ; preds = %299, %175
  %301 = mul nuw i64 4, %17
  %302 = trunc i64 %301 to i32
  %303 = call i32 @memset(i32* %19, i32 0, i32 %302)
  %304 = load i32*, i32** %13, align 8
  %305 = load i32, i32* %11, align 4
  %306 = call i32 @StringList_Item(i32* %304, i32 %305, i32* %19)
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* @DISP_E_BADINDEX, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = load i32, i32* %5, align 4
  %312 = call i32 (i32, i8*, ...) @ok(i32 %310, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0), i32 %311)
  %313 = load i32*, i32** %8, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %300
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @IEnumVARIANT_Release(i32* %316)
  br label %318

318:                                              ; preds = %315, %300
  %319 = load i32*, i32** %7, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i32*, i32** %7, align 8
  %323 = call i32 @IUnknown_Release(i32* %322)
  br label %324

324:                                              ; preds = %321, %318
  %325 = load i32*, i32** %13, align 8
  %326 = call i32 @IDispatch_Release(i32* %325)
  br label %327

327:                                              ; preds = %324, %1
  %328 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %328)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Installer_Products(i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @StringList__NewEnum(i32*, i32**) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @StringList_Count(i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @StringList_Item(i32*, i32, i32*) #2

declare dso_local i32 @Installer_ProductState(i32*, i32*) #2

declare dso_local i32 @lstrcmpW(i32*, i32) #2

declare dso_local i32 @IEnumVARIANT_Next(i32*, i32, i32*, i32*) #2

declare dso_local i32 @V_VT(i32*) #2

declare dso_local i32 @ok_w2(i8*, i32*, i32) #2

declare dso_local i32 @V_BSTR(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @IEnumVARIANT_Clone(i32*, i32**) #2

declare dso_local i32 @IEnumVARIANT_Release(i32*) #2

declare dso_local i32 @IEnumVARIANT_Skip(i32*, i32) #2

declare dso_local i32 @IEnumVARIANT_Reset(i32*) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IDispatch_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
