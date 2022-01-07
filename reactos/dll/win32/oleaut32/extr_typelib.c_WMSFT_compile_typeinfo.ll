; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_compile_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_compile_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_26__*, %struct.TYPE_25__, %struct.TYPE_24__*, i32, i32, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32 }

@TYPEFLAG_FDUAL = common dso_local global i32 0, align 4
@TKIND_DISPATCH = common dso_local global i32 0, align 4
@TKIND_COCLASS = common dso_local global i64 0, align 8
@TKIND_ALIAS = common dso_local global i64 0, align 8
@TKIND_MODULE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.TYPE_27__*, i8*)* @WMSFT_compile_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMSFT_compile_typeinfo(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_27__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 152, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %302

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %10, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @TKIND_DISPATCH, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %34

27:                                               ; preds = %13
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 11
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 6
  %51 = or i32 %45, %50
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %58 = call i32 @WMSFT_compile_typeinfo_aux(%struct.TYPE_19__* %56, %struct.TYPE_27__* %57)
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 25
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 24
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 23
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  store i32 3, i32* %66, align 4
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 22
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %73, %77
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 21
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 20
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 19
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 18
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 10
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = icmp ne %struct.TYPE_20__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %34
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 10
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %104

101:                                              ; preds = %34
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  store i32 -1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 9
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = icmp ne %struct.TYPE_22__* %113, null
  br i1 %114, label %115, label %152

115:                                              ; preds = %104
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 9
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %127, i64 %134
  store i8 56, i8* %135, align 1
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 9
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %143, i64 %149
  %151 = bitcast i8* %150 to i32*
  store i32 %138, i32* %151, align 4
  br label %155

152:                                              ; preds = %104
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 5
  store i32 -1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %115
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %160, %164
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = icmp ne %struct.TYPE_23__* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %155
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %183

180:                                              ; preds = %155
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 7
  store i32 -1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %172
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 17
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 16
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %198 = call i32 @WMSFT_compile_custdata(i32 %196, %struct.TYPE_27__* %197)
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 15
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 8
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 14
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* @TKIND_COCLASS, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %183
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %229 = call i32 @WMSFT_compile_typeinfo_ref(%struct.TYPE_19__* %227, %struct.TYPE_27__* %228)
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 9
  store i32 %229, i32* %231, align 8
  br label %294

232:                                              ; preds = %183
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @TKIND_ALIAS, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %232
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %245 = call i32 @WMSFT_append_typedesc(i32 %243, %struct.TYPE_27__* %244, i32* null, i32* null)
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 9
  store i32 %245, i32* %247, align 8
  br label %293

248:                                              ; preds = %232
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* @TKIND_MODULE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %248
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = icmp ne %struct.TYPE_24__* %259, null
  br i1 %260, label %261, label %269

261:                                              ; preds = %256
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 9
  store i32 %266, i32* %268, align 8
  br label %272

269:                                              ; preds = %256
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 9
  store i32 -1, i32* %271, align 8
  br label %272

272:                                              ; preds = %269, %261
  br label %292

273:                                              ; preds = %248
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 9
  store i32 %285, i32* %287, align 8
  br label %291

288:                                              ; preds = %273
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 9
  store i32 -1, i32* %290, align 8
  br label %291

291:                                              ; preds = %288, %279
  br label %292

292:                                              ; preds = %291, %272
  br label %293

293:                                              ; preds = %292, %240
  br label %294

294:                                              ; preds = %293, %226
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 10
  store i32 %295, i32* %297, align 4
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 12
  store i64 0, i64* %299, align 8
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 11
  store i32 -1, i32* %301, align 8
  br label %302

302:                                              ; preds = %294, %4
  %303 = load i32, i32* %9, align 4
  ret i32 %303
}

declare dso_local i32 @WMSFT_compile_typeinfo_aux(%struct.TYPE_19__*, %struct.TYPE_27__*) #1

declare dso_local i32 @WMSFT_compile_custdata(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @WMSFT_compile_typeinfo_ref(%struct.TYPE_19__*, %struct.TYPE_27__*) #1

declare dso_local i32 @WMSFT_append_typedesc(i32, %struct.TYPE_27__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
