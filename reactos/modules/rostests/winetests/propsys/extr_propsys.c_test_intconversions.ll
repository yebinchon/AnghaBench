; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_intconversions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_intconversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"PropVariantClear fails on invalid vt.\0A\00", align 1
@VT_I8 = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hr=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"got wrong value %s\0A\00", align 1
@ERROR_ARITHMETIC_OVERFLOW = common dso_local global i32 0, align 4
@VT_UI8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"got wrong value %d\0A\00", align 1
@VT_UI4 = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i32 0, align 4
@VT_UI2 = common dso_local global i32 0, align 4
@VT_I2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_intconversions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_intconversions() #0 {
  %1 = alloca %struct.TYPE_15__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 57005, i32* %9, align 4
  %10 = call i32 @PropVariantClear(%struct.TYPE_15__* %1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @FAILED(i32 %11)
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** @VT_I8, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i32 @PropVariantClear(%struct.TYPE_15__* %1)
  %18 = load i8*, i8** @VT_I8, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 undef, i32* %23, align 4
  %24 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, undef
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wine_dbgstr_longlong(i32 %34)
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @PropVariantToUInt64(%struct.TYPE_15__* %1, i32* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %40 = call i32 @HRESULT_FROM_WIN32(i32 %39)
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = call i32 @PropVariantToInt32(%struct.TYPE_15__* %1, i32* %4)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %48 = call i32 @HRESULT_FROM_WIN32(i32 %47)
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 @PropVariantToUInt32(%struct.TYPE_15__* %1, i32* %5)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %56 = call i32 @HRESULT_FROM_WIN32(i32 %55)
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 @PropVariantToInt16(%struct.TYPE_15__* %1, i32* %2)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %64 = call i32 @HRESULT_FROM_WIN32(i32 %63)
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = call i32 @PropVariantToUInt16(%struct.TYPE_15__* %1, i32* %3)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %72 = call i32 @HRESULT_FROM_WIN32(i32 %71)
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @VT_UI8, align 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 5, i32* %81, align 4
  %82 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @S_OK, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 5
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @wine_dbgstr_longlong(i32 %92)
  %94 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = call i32 @PropVariantToUInt64(%struct.TYPE_15__* %1, i32* %7)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @S_OK, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 5
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @wine_dbgstr_longlong(i32 %105)
  %107 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = call i32 @PropVariantToInt32(%struct.TYPE_15__* %1, i32* %4)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @S_OK, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 5
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = call i32 @PropVariantToUInt32(%struct.TYPE_15__* %1, i32* %5)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @S_OK, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %127, 5
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %5, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = call i32 @PropVariantToInt16(%struct.TYPE_15__* %1, i32* %2)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %2, align 4
  %140 = icmp eq i32 %139, 5
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %2, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = call i32 @PropVariantToUInt16(%struct.TYPE_15__* %1, i32* %3)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @S_OK, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %3, align 4
  %152 = icmp eq i32 %151, 5
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %3, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load i8*, i8** @VT_I8, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i32 -5, i32* %161, align 4
  %162 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @S_OK, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, -5
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @wine_dbgstr_longlong(i32 %172)
  %174 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = call i32 @PropVariantToUInt64(%struct.TYPE_15__* %1, i32* %7)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %178 = call i32 @HRESULT_FROM_WIN32(i32 %177)
  %179 = icmp eq i32 %176, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = call i32 @PropVariantToInt32(%struct.TYPE_15__* %1, i32* %4)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @S_OK, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = icmp eq i32 %190, -5
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  %195 = call i32 @PropVariantToUInt32(%struct.TYPE_15__* %1, i32* %5)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %198 = call i32 @HRESULT_FROM_WIN32(i32 %197)
  %199 = icmp eq i32 %196, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %8, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  %203 = call i32 @PropVariantToInt16(%struct.TYPE_15__* %1, i32* %2)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @S_OK, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %8, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %2, align 4
  %211 = icmp eq i32 %210, -5
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %2, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = call i32 @PropVariantToUInt16(%struct.TYPE_15__* %1, i32* %3)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %218 = call i32 @HRESULT_FROM_WIN32(i32 %217)
  %219 = icmp eq i32 %216, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @VT_UI4, align 4
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %223, i32* %224, align 4
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  store i32 6, i32* %226, align 4
  %227 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @S_OK, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %8, align 4
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 6
  %236 = zext i1 %235 to i32
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @wine_dbgstr_longlong(i32 %237)
  %239 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @VT_I4, align 4
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %240, i32* %241, align 4
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  store i32 -6, i32* %243, align 4
  %244 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @S_OK, align 4
  %247 = icmp eq i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %6, align 4
  %252 = icmp eq i32 %251, -6
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @wine_dbgstr_longlong(i32 %254)
  %256 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @VT_UI2, align 4
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %257, i32* %258, align 4
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  store i32 7, i32* %260, align 4
  %261 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @S_OK, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %8, align 4
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %6, align 4
  %269 = icmp eq i32 %268, 7
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @wine_dbgstr_longlong(i32 %271)
  %273 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @VT_I2, align 4
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  store i32 %274, i32* %275, align 4
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 3
  store i32 -7, i32* %277, align 4
  %278 = call i32 @PropVariantToInt64(%struct.TYPE_15__* %1, i32* %6)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @S_OK, align 4
  %281 = icmp eq i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load i32, i32* %8, align 4
  %284 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* %6, align 4
  %286 = icmp eq i32 %285, -7
  %287 = zext i1 %286 to i32
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @wine_dbgstr_longlong(i32 %288)
  %290 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %289)
  ret void
}

declare dso_local i32 @PropVariantClear(%struct.TYPE_15__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @PropVariantToInt64(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @PropVariantToUInt64(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @PropVariantToInt32(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PropVariantToUInt32(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PropVariantToInt16(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PropVariantToUInt16(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
