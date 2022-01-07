; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_safety.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_safety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IObjectSafety = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not get IObjectSafety: %08x\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"GetInterfaceSafetyOptions failed: %08x, expected E_POINTER\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"GetInterfaceSafetyOptions failed: %08x\0A\00", align 1
@INTERFACESAFE_FOR_UNTRUSTED_DATA = common dso_local global i32 0, align 4
@INTERFACE_USES_DISPEX = common dso_local global i32 0, align 4
@INTERFACE_USES_SECURITY_MANAGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"supported=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"enabled=%x\0A\00", align 1
@IID_IActiveScript = common dso_local global i32 0, align 4
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@INTERFACESAFE_FOR_UNTRUSTED_CALLER = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"SetInterfaceSafetyOptions failed: %08x, expected E_FAIL\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SetInterfaceSafetyOptions failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_safety to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_safety(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32** %3 to i8**
  %9 = call i32 @IUnknown_QueryInterface(i32* %7, i32* @IID_IObjectSafety, i8** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %282

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %21, i32* @IID_NULL, i32* %4, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @E_POINTER, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %29, i32* @IID_NULL, i32* null, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @E_POINTER, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %37, i32* @IID_NULL, i32* %4, i32* %5)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %47 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %50 = or i32 %48, %49
  %51 = icmp eq i32 %45, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %61, i32* @IID_IActiveScript, i32* %4, i32* %5)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %71 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %69, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %85, i32* @IID_IActiveScriptParse, i32* %4, i32* %5)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @S_OK, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %95 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %98 = or i32 %96, %97
  %99 = icmp eq i32 %93, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %111 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_CALLER, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %118 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @IObjectSafety_SetInterfaceSafetyOptions(i32* %109, i32* @IID_IActiveScriptParse, i32 %116, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @E_FAIL, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %131 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %136 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @IObjectSafety_SetInterfaceSafetyOptions(i32* %129, i32* @IID_IActiveScriptParse, i32 %134, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @S_OK, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %147, i32* @IID_IActiveScriptParse, i32* %4, i32* %5)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @S_OK, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %157 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %160 = or i32 %158, %159
  %161 = icmp eq i32 %155, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %167 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %170 = or i32 %168, %169
  %171 = icmp eq i32 %165, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @ok(i32 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %177 = call i32 @IObjectSafety_SetInterfaceSafetyOptions(i32* %175, i32* @IID_IActiveScriptParse, i32 %176, i32 0)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @S_OK, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %184, i32* @IID_IActiveScriptParse, i32* %4, i32* %5)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @S_OK, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %194 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %197 = or i32 %195, %196
  %198 = icmp eq i32 %192, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %204 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %205 = or i32 %203, %204
  %206 = icmp eq i32 %202, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %3, align 8
  %211 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %212 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @IObjectSafety_SetInterfaceSafetyOptions(i32* %210, i32* @IID_IActiveScriptParse, i32 %215, i32 0)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @S_OK, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @ok(i32 %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %223, i32* @IID_IActiveScriptParse, i32* %4, i32* %5)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @S_OK, align 4
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @ok(i32 %228, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %233 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %236 = or i32 %234, %235
  %237 = icmp eq i32 %231, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %4, align 4
  %240 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %243 = icmp eq i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @ok(i32 %244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %3, align 8
  %248 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %249 = call i32 @IObjectSafety_SetInterfaceSafetyOptions(i32* %247, i32* @IID_IActiveScriptParse, i32 %248, i32 0)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @S_OK, align 4
  %252 = icmp eq i32 %250, %251
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @ok(i32 %253, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %254)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %256 = load i32*, i32** %3, align 8
  %257 = call i32 @IObjectSafety_GetInterfaceSafetyOptions(i32* %256, i32* @IID_IActiveScriptParse, i32* %4, i32* %5)
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @S_OK, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @ok(i32 %261, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %266 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %269 = or i32 %267, %268
  %270 = icmp eq i32 %264, %269
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %4, align 4
  %273 = call i32 @ok(i32 %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %276 = icmp eq i32 %274, %275
  %277 = zext i1 %276 to i32
  %278 = load i32, i32* %5, align 4
  %279 = call i32 @ok(i32 %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %278)
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @IObjectSafety_Release(i32* %280)
  br label %282

282:                                              ; preds = %20, %19
  ret void
}

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IObjectSafety_GetInterfaceSafetyOptions(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IObjectSafety_SetInterfaceSafetyOptions(i32*, i32*, i32, i32) #1

declare dso_local i32 @IObjectSafety_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
