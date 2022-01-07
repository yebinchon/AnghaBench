; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevice_GetPropValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevice_GetPropValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i8* }
%struct.TYPE_11__ = type { i32, i8* }

@S_OK = common dso_local global i32 0, align 4
@propkey_formatW = common dso_local global i32 0, align 4
@RRF_RT_ANY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Reading %s returned %d\0A\00", align 1
@VT_LPWSTR = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@RRF_RT_REG_SZ = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@RRF_RT_REG_DWORD = common dso_local global i32 0, align 4
@VT_BLOB = common dso_local global i32 0, align 4
@RRF_RT_REG_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown/unhandled type: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, %struct.TYPE_14__*)* @MMDevice_GetPropValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDevice_GetPropValue(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca [80 x i32], align 16
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  %19 = load i32, i32* @S_OK, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MMDevPropStore_OpenPropKey(%struct.TYPE_15__* %20, i32 %21, i32* %15)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %185

28:                                               ; preds = %4
  %29 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* @propkey_formatW, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @wsprintfW(i32* %29, i32 %30, i32 %33, i32 %36, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* @RRF_RT_ANY, align 4
  %87 = call i64 @RegGetValueW(i32 %84, i32* null, i32* %85, i32 %86, i32* %12, i32* null, i32* %13)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %28
  %92 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %93 = call i32 @debugstr_w(i32* %92)
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %93, i64 %94)
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = call i32 @PropVariantClear(%struct.TYPE_14__* %98)
  %100 = load i32, i32* @S_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %185

101:                                              ; preds = %28
  %102 = load i32, i32* %12, align 4
  switch i32 %102, label %176 [
    i32 128, label %103
    i32 129, label %130
    i32 130, label %141
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* @VT_LPWSTR, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i8* @CoTaskMemAlloc(i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %103
  %118 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %118, i32* %14, align 4
  br label %129

119:                                              ; preds = %103
  %120 = load i32, i32* %15, align 4
  %121 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %122 = load i32, i32* @RRF_RT_REG_SZ, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = call i64 @RegGetValueW(i32 %120, i32* null, i32* %121, i32 %122, i32* null, i32* %127, i32* %13)
  br label %129

129:                                              ; preds = %119, %117
  br label %181

130:                                              ; preds = %101
  %131 = load i32, i32* @VT_UI4, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %136 = load i32, i32* @RRF_RT_REG_DWORD, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = call i64 @RegGetValueW(i32 %134, i32* null, i32* %135, i32 %136, i32* null, i32* %139, i32* %13)
  br label %181

141:                                              ; preds = %101
  %142 = load i32, i32* @VT_BLOB, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i8* @CoTaskMemAlloc(i32 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i8* %151, i8** %155, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %141
  %163 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %163, i32* %14, align 4
  br label %175

164:                                              ; preds = %141
  %165 = load i32, i32* %15, align 4
  %166 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %167 = load i32, i32* @RRF_RT_REG_BINARY, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = call i64 @RegGetValueW(i32 %165, i32* null, i32* %166, i32 %167, i32* null, i32* %173, i32* %13)
  br label %175

175:                                              ; preds = %164, %162
  br label %181

176:                                              ; preds = %101
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %180 = call i32 @PropVariantClear(%struct.TYPE_14__* %179)
  br label %181

181:                                              ; preds = %176, %175, %130, %129
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @RegCloseKey(i32 %182)
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %91, %26
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @MMDevPropStore_OpenPropKey(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wsprintfW(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @RegGetValueW(i32, i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_14__*) #1

declare dso_local i8* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
