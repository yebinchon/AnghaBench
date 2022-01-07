; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_pdb.c_test_SymFromAddr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/dbghelp/extr_pdb.c_test_SymFromAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MAX_SYM_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_MOD_NOT_FOUND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SymTagFunction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DllMain\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FfsChkdsk\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"dbghelp.dll too old or cannot read this symbol!\0A\00", align 1
@SymTagPublicSymbol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"__imp__DbgPrint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_SymFromAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SymFromAddr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_SYM_NAME, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 4, %13
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 @INIT_PSYM(i8* %16)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = call i32 @SymFromAddr(i32 %19, i32 %21, i32* %9, %struct.TYPE_3__* %22)
  store i32 %23, i32* %5, align 4
  %24 = call i32 (...) @GetLastError()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @ok_int(i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %30 = call i32 @ok_hex(i32 %28, i32 %29)
  store i32 0, i32* %9, align 4
  %31 = call i32 @INIT_PSYM(i8* %16)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = call i32 @SymFromAddr(i32 %32, i32 %33, i32* %9, %struct.TYPE_3__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @ok_int(i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ok_ulonglong(i32 %39, i32 -1)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ok_ulonglong(i32 %43, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ok_hex(i32 %48, i32 0)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 4112
  %55 = call i32 @ok_ulonglong(i32 %52, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SymTagFunction, align 4
  %60 = call i32 @ok_hex(i32 %58, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ok_str(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %65 = call i32 @INIT_PSYM(i8* %16)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 4112
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = call i32 @SymFromAddr(i32 %66, i32 %68, i32* %9, %struct.TYPE_3__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32 @ok_int(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ok_ulonglong(i32 %74, i32 0)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @ok_ulonglong(i32 %78, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ok_hex(i32 %83, i32 0)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 4112
  %90 = call i32 @ok_ulonglong(i32 %87, i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SymTagFunction, align 4
  %95 = call i32 @ok_hex(i32 %93, i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ok_str(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %100 = call i32 @INIT_PSYM(i8* %16)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 4141
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = call i32 @SymFromAddr(i32 %101, i32 %103, i32* %9, %struct.TYPE_3__* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @TRUE, align 4
  %108 = call i32 @ok_int(i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ok_ulonglong(i32 %109, i32 29)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @ok_ulonglong(i32 %113, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ok_hex(i32 %118, i32 0)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 4112
  %125 = call i32 @ok_ulonglong(i32 %122, i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SymTagFunction, align 4
  %130 = call i32 @ok_hex(i32 %128, i32 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ok_str(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %135 = call i32 @INIT_PSYM(i8* %16)
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 4142
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %140 = call i32 @SymFromAddr(i32 %136, i32 %138, i32* %9, %struct.TYPE_3__* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32 @ok_int(i32 %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @ok_ulonglong(i32 %144, i32 30)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @ok_ulonglong(i32 %148, i32 %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ok_hex(i32 %153, i32 0)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 4112
  %160 = call i32 @ok_ulonglong(i32 %157, i32 %159)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SymTagFunction, align 4
  %165 = call i32 @ok_hex(i32 %163, i32 %164)
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ok_str(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %170 = call i32 @INIT_PSYM(i8* %16)
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 4159
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %175 = call i32 @SymFromAddr(i32 %171, i32 %173, i32* %9, %struct.TYPE_3__* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @TRUE, align 4
  %178 = call i32 @ok_int(i32 %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @ok_ulonglong(i32 %179, i32 47)
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @ok_ulonglong(i32 %183, i32 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ok_hex(i32 %188, i32 0)
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 4112
  %195 = call i32 @ok_ulonglong(i32 %192, i32 %194)
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SymTagFunction, align 4
  %200 = call i32 @ok_hex(i32 %198, i32 %199)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ok_str(i32 %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %205 = call i32 @INIT_PSYM(i8* %16)
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 4160
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %210 = call i32 @SymFromAddr(i32 %206, i32 %208, i32* %9, %struct.TYPE_3__* %209)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @TRUE, align 4
  %213 = call i32 @ok_int(i32 %211, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @ok_ulonglong(i32 %214, i32 0)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @ok_ulonglong(i32 %218, i32 %219)
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ok_hex(i32 %223, i32 0)
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 4160
  %230 = call i32 @ok_ulonglong(i32 %227, i32 %229)
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @SymTagFunction, align 4
  %235 = call i32 @ok_hex(i32 %233, i32 %234)
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ok_str(i32 %238, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %240 = load i32, i32* %3, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @supports_pdb(i32 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %2
  %245 = call i32 @skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %282

246:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %247 = call i32 @INIT_PSYM(i8* %16)
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 8192
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %252 = call i32 @SymFromAddr(i32 %248, i32 %250, i32* %9, %struct.TYPE_3__* %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @TRUE, align 4
  %255 = call i32 @ok_int(i32 %253, i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @ok_ulonglong(i32 %256, i32 0)
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @ok_ulonglong(i32 %260, i32 %261)
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @ok_hex(i32 %265, i32 0)
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, 8192
  %272 = call i32 @ok_ulonglong(i32 %269, i32 %271)
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @SymTagPublicSymbol, align 4
  %277 = call i32 @ok_hex(i32 %275, i32 %276)
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ok_str(i32 %280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %282

282:                                              ; preds = %246, %244
  %283 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %283)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INIT_PSYM(i8*) #2

declare dso_local i32 @SymFromAddr(i32, i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ok_int(i32, i32) #2

declare dso_local i32 @ok_hex(i32, i32) #2

declare dso_local i32 @ok_ulonglong(i32, i32) #2

declare dso_local i32 @ok_str(i32, i8*) #2

declare dso_local i32 @supports_pdb(i32, i32) #2

declare dso_local i32 @skip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
