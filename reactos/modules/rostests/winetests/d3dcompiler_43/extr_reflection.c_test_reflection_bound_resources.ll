; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_bound_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_bound_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*)* }

@test_reflection_bound_resources_blob = common dso_local global i32* null, align 8
@IID_ID3D11ShaderReflection = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"D3DReflect failed %x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"GetResourceBindingDesc failed, got %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"GetResourceBindingDescByName failed, got %x, expected %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sam\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@test_reflection_bound_resources_result = common dso_local global %struct.TYPE_25__* null, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"GetResourceBindingDesc(%u) failed, got %x, expected %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"GetResourceBindingDesc(%u) Name failed, got \22%s\22, expected \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"GetResourceBindingDesc(%u) Type failed, got %x, expected %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"GetResourceBindingDesc(%u) BindPoint failed, got %u, expected %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"GetResourceBindingDesc(%u) BindCount failed, got %u, expected %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"GetResourceBindingDesc(%u) uFlags failed, got %u, expected %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"GetResourceBindingDesc(%u) ReturnType failed, got %x, expected %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"GetResourceBindingDesc(%u) Dimension failed, got %x, expected %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"GetResourceBindingDesc(%u) NumSamples failed, got %u, expected %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"GetResourceBindingDescByName(%u) failed, got %x, expected %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"GetResourceBindingDescByName(%u) Name failed, got \22%s\22, expected \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"GetResourceBindingDescByName(%u) Type failed, got %x, expected %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"GetResourceBindingDescByName(%u) BindPoint failed, got %u, expected %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"GetResourceBindingDescByName(%u) BindCount failed, got %u, expected %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"GetResourceBindingDescByName(%u) uFlags failed, got %u, expected %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"GetResourceBindingDescByName(%u) ReturnType failed, got %x, expected %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"GetResourceBindingDescByName(%u) Dimension failed, got %x, expected %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"GetResourceBindingDescByName(%u) NumSamples failed, got %u, expected %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Release failed %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reflection_bound_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reflection_bound_resources() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = load i32*, i32** @test_reflection_bound_resources_blob, align 8
  %8 = load i32*, i32** @test_reflection_bound_resources_blob, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 6
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %struct.TYPE_24__** %3 to i8**
  %12 = call i64 @pD3DReflect(i32* %7, i32 %10, i32* @IID_ID3D11ShaderReflection, i8** %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 (i32, i8*, i64, ...) @ok(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)** %22, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = call i64 %23(%struct.TYPE_24__* %24, i32 0, %struct.TYPE_25__* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @E_INVALIDARG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @E_INVALIDARG, align 8
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)** %36, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = call i64 %37(%struct.TYPE_24__* %38, i32 -1, %struct.TYPE_25__* %4)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @E_INVALIDARG, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @E_INVALIDARG, align 8
  %46 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = call i64 %51(%struct.TYPE_24__* %52, i8* null, %struct.TYPE_25__* %4)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @E_INVALIDARG, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @E_INVALIDARG, align 8
  %60 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = call i64 %65(%struct.TYPE_24__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_25__* null)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @E_INVALIDARG, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @E_INVALIDARG, align 8
  %74 = call i32 (i32, i8*, i64, ...) @ok(i32 %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %73)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %78, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = call i64 %79(%struct.TYPE_24__* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_25__* null)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @E_INVALIDARG, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @E_INVALIDARG, align 8
  %88 = call i32 (i32, i8*, i64, ...) @ok(i32 %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %86, i64 %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %92, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = call i64 %93(%struct.TYPE_24__* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_25__* %4)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @E_INVALIDARG, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @E_INVALIDARG, align 8
  %102 = call i32 (i32, i8*, i64, ...) @ok(i32 %99, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %100, i64 %101)
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %252, %0
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** @test_reflection_bound_resources_result, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_25__* %105)
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %108, label %255

108:                                              ; preds = %103
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** @test_reflection_bound_resources_result, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i64 %111
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %5, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*)** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i64 %117(%struct.TYPE_24__* %118, i32 %119, %struct.TYPE_25__* %4)
  store i64 %120, i64* %1, align 8
  %121 = load i64, i64* %1, align 8
  %122 = load i64, i64* @S_OK, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %1, align 8
  %128 = load i64, i64* @S_OK, align 8
  %129 = call i32 (i32, i8*, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %126, i64 %127, i64 %128)
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strcmp(i8* %131, i8* %134)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, i64, ...) @ok(i32 %138, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i64 %140, i8* %142, i8* %145)
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %148, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, i64, ...) @ok(i32 %153, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %155, i32 %157, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, i64, ...) @ok(i32 %168, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i64 %170, i32 %172, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32, i8*, i64, ...) @ok(i32 %183, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i64 %185, i32 %187, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %193, %196
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %6, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, i64, ...) @ok(i32 %198, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i64 %200, i32 %202, i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %208, %211
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %6, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i8*, i64, ...) @ok(i32 %213, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i64 %215, i32 %217, i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %223, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %6, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32, i8*, i64, ...) @ok(i32 %228, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i64 %230, i32 %232, i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %238, %241
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %6, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, i64, ...) @ok(i32 %243, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i64 %245, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %108
  %253 = load i32, i32* %6, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %6, align 4
  br label %103

255:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %407, %255
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** @test_reflection_bound_resources_result, align 8
  %259 = call i32 @ARRAY_SIZE(%struct.TYPE_25__* %258)
  %260 = icmp ult i32 %257, %259
  br i1 %260, label %261, label %410

261:                                              ; preds = %256
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** @test_reflection_bound_resources_result, align 8
  %263 = load i32, i32* %6, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i64 %264
  store %struct.TYPE_25__* %265, %struct.TYPE_25__** %5, align 8
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 1
  %270 = load i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)*, i64 (%struct.TYPE_24__*, i8*, %struct.TYPE_25__*)** %269, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 %270(%struct.TYPE_24__* %271, i8* %274, %struct.TYPE_25__* %4)
  store i64 %275, i64* %1, align 8
  %276 = load i64, i64* %1, align 8
  %277 = load i64, i64* @S_OK, align 8
  %278 = icmp eq i64 %276, %277
  %279 = zext i1 %278 to i32
  %280 = load i32, i32* %6, align 4
  %281 = zext i32 %280 to i64
  %282 = load i64, i64* %1, align 8
  %283 = load i64, i64* @S_OK, align 8
  %284 = call i32 (i32, i8*, i64, ...) @ok(i32 %279, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i64 %281, i64 %282, i64 %283)
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @strcmp(i8* %286, i8* %289)
  %291 = icmp ne i32 %290, 0
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* %6, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 (i32, i8*, i64, ...) @ok(i32 %293, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i64 0, i64 0), i64 %295, i8* %297, i8* %300)
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 7
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %303, %306
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 7
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 8
  %316 = call i32 (i32, i8*, i64, ...) @ok(i32 %308, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0), i64 %310, i32 %312, i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %318, %321
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %6, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i32, i8*, i64, ...) @ok(i32 %323, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0), i64 %325, i32 %327, i32 %330)
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %333, %336
  %338 = zext i1 %337 to i32
  %339 = load i32, i32* %6, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (i32, i8*, i64, ...) @ok(i32 %338, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0), i64 %340, i32 %342, i32 %345)
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %348, %351
  %353 = zext i1 %352 to i32
  %354 = load i32, i32* %6, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (i32, i8*, i64, ...) @ok(i32 %353, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), i64 %355, i32 %357, i32 %360)
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = icmp eq i32 %363, %366
  %368 = zext i1 %367 to i32
  %369 = load i32, i32* %6, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = call i32 (i32, i8*, i64, ...) @ok(i32 %368, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i64 0, i64 0), i64 %370, i32 %372, i32 %375)
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %378, %381
  %383 = zext i1 %382 to i32
  %384 = load i32, i32* %6, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (i32, i8*, i64, ...) @ok(i32 %383, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i64 0, i64 0), i64 %385, i32 %387, i32 %390)
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %393, %396
  %398 = zext i1 %397 to i32
  %399 = load i32, i32* %6, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = call i32 (i32, i8*, i64, ...) @ok(i32 %398, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.22, i64 0, i64 0), i64 %400, i32 %402, i32 %405)
  br label %407

407:                                              ; preds = %261
  %408 = load i32, i32* %6, align 4
  %409 = add i32 %408, 1
  store i32 %409, i32* %6, align 4
  br label %256

410:                                              ; preds = %256
  %411 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i32 0, i32 2
  %415 = load i64 (%struct.TYPE_24__*)*, i64 (%struct.TYPE_24__*)** %414, align 8
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %417 = call i64 %415(%struct.TYPE_24__* %416)
  store i64 %417, i64* %2, align 8
  %418 = load i64, i64* %2, align 8
  %419 = icmp eq i64 %418, 0
  %420 = zext i1 %419 to i32
  %421 = load i64, i64* %2, align 8
  %422 = call i32 (i32, i8*, i64, ...) @ok(i32 %420, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i64 %421)
  ret void
}

declare dso_local i64 @pD3DReflect(i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_25__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
