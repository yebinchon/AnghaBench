; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_LoadRegTypeLib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_LoadRegTypeLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LANG_RUSSIAN = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"testdep.manifest\00", align 1
@manifest_dep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"main.manifest\00", align 1
@manifest_main = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"test_actctx_tlb.tlb\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"test_actctx_tlb2.tlb\00", align 1
@LIBID_TestTypelib = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@TYPE_E_LIBNOTREGISTERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@LIBID_register_test = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ActivateActCtx failed: %u\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@LIBFLAG_FHASDISKIMAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"DeactivateActCtx failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadRegTypeLib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadRegTypeLib() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @LANG_ENGLISH, align 4
  %11 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %12 = call i32 @MAKELANGID(i32 %10, i32 %11)
  %13 = load i32, i32* @SORT_DEFAULT, align 4
  %14 = call i32 @MAKELCID(i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @LANG_RUSSIAN, align 4
  %16 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %17 = call i32 @MAKELANGID(i32 %15, i32 %16)
  %18 = load i32, i32* @SORT_DEFAULT, align 4
  %19 = call i32 @MAKELCID(i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @manifest_dep, align 4
  %21 = call i32 @create_manifest_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @manifest_main, align 4
  %23 = call i32 @create_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @create_actctx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  %25 = call i32 @DeleteFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @write_typelib(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @write_typelib(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %30 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 1, i32 0, i32 %29, i32** %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %38 = call i32 @LoadRegTypeLib(i32* @LIBID_register_test, i32 1, i32 0, i32 %37, i32** %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %46 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %45, i32** %8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pActivateActCtx(i32 %53, i32* %3)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  store i32* null, i32** %8, align 8
  %58 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %59 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %58, i32** %8)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @SysFreeString(i32* %66)
  store i32* null, i32** %8, align 8
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %68, i32** %8)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @SysFreeString(i32* %76)
  store i32* null, i32** %8, align 8
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %78, i32** %8)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @SysFreeString(i32* %86)
  %88 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %89 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 8, i32 %88, i32** %8)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %0
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @S_OK, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @broken(i32 %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %93, %0
  %101 = phi i1 [ true, %0 ], [ %99, %93 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  store i32* null, i32** %8, align 8
  %105 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %106 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 7, i32 %105, i32** %8)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @SysFreeString(i32* %113)
  store i32* null, i32** %8, align 8
  %115 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %116 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 1, i32 0, i32 %115, i32** %8)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @S_OK, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i64 @broken(i32 %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %120, %100
  %128 = phi i1 [ true, %100 ], [ %126, %120 ]
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @SysFreeString(i32* %132)
  store i32* null, i32** %8, align 8
  %134 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %135 = call i32 @QueryPathOfRegTypeLib(i32* @LIBID_TestTypelib, i32 65535, i32 65535, i32 %134, i32** %8)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @S_OK, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @SysFreeString(i32* %142)
  %144 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %145 = call i32 @LoadRegTypeLib(i32* @LIBID_register_test, i32 1, i32 0, i32 %144, i32** %6)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %127
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @S_OK, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @broken(i32 %153)
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %149, %127
  %157 = phi i1 [ true, %127 ], [ %155, %149 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @S_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @ITypeLib_Release(i32* %165)
  br label %167

167:                                              ; preds = %164, %156
  %168 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %169 = call i32 @LoadRegTypeLib(i32* @LIBID_register_test, i32 2, i32 0, i32 %168, i32** %6)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %177 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %176, i32** %6)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @S_OK, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @S_OK, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %167
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 @ITypeLib_Release(i32* %188)
  br label %190

190:                                              ; preds = %187, %167
  %191 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %192 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 1, i32 %191, i32** %6)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @S_OK, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @ok(i32 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @S_OK, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %190
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 @ITypeLib_Release(i32* %203)
  br label %205

205:                                              ; preds = %202, %190
  %206 = load i32, i32* %1, align 4
  %207 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %206, i32** %6)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @S_OK, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @S_OK, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %205
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @ITypeLib_Release(i32* %218)
  br label %220

220:                                              ; preds = %217, %205
  %221 = load i32, i32* %2, align 4
  %222 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 0, i32 %221, i32** %6)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @S_OK, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @ok(i32 %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @S_OK, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %220
  %233 = load i32*, i32** %6, align 8
  %234 = call i32 @ITypeLib_Release(i32* %233)
  br label %235

235:                                              ; preds = %232, %220
  %236 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %237 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 7, i32 %236, i32** %6)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @ok(i32 %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %245 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 2, i32 5, i32 %244, i32** %6)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @S_OK, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %6, align 8
  %253 = call i32 @ITypeLib_GetLibAttr(i32* %252, %struct.TYPE_4__** %4)
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @S_OK, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @ok(i32 %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ok(i32 %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %267)
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i32
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 5
  %282 = zext i1 %281 to i32
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @ok(i32 %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %285)
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @LIBFLAG_FHASDISKIMAGE, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @ok(i32 %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %295)
  %297 = load i32*, i32** %6, align 8
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %299 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %297, %struct.TYPE_4__* %298)
  %300 = load i32*, i32** %6, align 8
  %301 = call i32 @ITypeLib_Release(i32* %300)
  %302 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %303 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 1, i32 7, i32 %302, i32** %6)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* @TYPE_E_LIBNOTREGISTERED, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @ok(i32 %307, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %308)
  store i32* null, i32** %6, align 8
  %310 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %311 = call i32 @LoadRegTypeLib(i32* @LIBID_TestTypelib, i32 65535, i32 65535, i32 %310, i32** %6)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @S_OK, align 4
  %314 = icmp eq i32 %312, %313
  %315 = zext i1 %314 to i32
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @ok(i32 %315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %316)
  %318 = load i32*, i32** %6, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %371

320:                                              ; preds = %235
  %321 = load i32*, i32** %6, align 8
  %322 = call i32 @ITypeLib_GetLibAttr(i32* %321, %struct.TYPE_4__** %4)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @S_OK, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @ok(i32 %326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %327)
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 0
  %333 = zext i1 %332 to i32
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ok(i32 %333, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %336)
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i32
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @ok(i32 %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %345)
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 5
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @ok(i32 %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %354)
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @LIBFLAG_FHASDISKIMAGE, align 4
  %360 = icmp eq i32 %358, %359
  %361 = zext i1 %360 to i32
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @ok(i32 %361, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  %366 = load i32*, i32** %6, align 8
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %368 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %366, %struct.TYPE_4__* %367)
  %369 = load i32*, i32** %6, align 8
  %370 = call i32 @ITypeLib_Release(i32* %369)
  br label %371

371:                                              ; preds = %320, %235
  %372 = call i32 @DeleteFileA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %373 = call i32 @DeleteFileA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %374 = load i32, i32* %3, align 4
  %375 = call i32 @pDeactivateActCtx(i32 0, i32 %374)
  store i32 %375, i32* %9, align 4
  %376 = load i32, i32* %9, align 4
  %377 = call i32 (...) @GetLastError()
  %378 = call i32 @ok(i32 %376, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %377)
  %379 = load i32, i32* %5, align 4
  %380 = call i32 @pReleaseActCtx(i32 %379)
  ret void
}

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @create_manifest_file(i8*, i32) #1

declare dso_local i32 @create_actctx(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @write_typelib(i32, i8*) #1

declare dso_local i32 @LoadRegTypeLib(i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @QueryPathOfRegTypeLib(i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @pActivateActCtx(i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_GetLibAttr(i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @ITypeLib_ReleaseTLibAttr(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
