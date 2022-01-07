; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_desc_ps_output.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_desc_ps_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)*, i64 (%struct.TYPE_10__*)* }

@test_reflection_desc_ps_output_result = common dso_local global %struct.TYPE_11__* null, align 8
@test_reflection_desc_ps_output_blob = common dso_local global i32** null, align 8
@IID_ID3D11ShaderReflection = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"(%u): D3DReflect failed %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"(%u): GetOutputParameterDesc failed, got %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"(%u): GetOutputParameterDesc SemanticName failed, got \22%s\22, expected \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"(%u): GetOutputParameterDesc SemanticIndex failed, got %u, expected %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"(%u): GetOutputParameterDesc Register failed, got %u, expected %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"(%u): GetOutputParameterDesc SystemValueType failed, got %x, expected %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"(%u): GetOutputParameterDesc ComponentType failed, got %x, expected %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"(%u): GetOutputParameterDesc Mask failed, got %x, expected %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"(%u): GetOutputParameterDesc ReadWriteMask failed, got %x, expected %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"(%u): GetOutputParameterDesc Stream failed, got %u, expected %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"(%u): Release failed %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reflection_desc_ps_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reflection_desc_ps_output() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %182, %0
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @test_reflection_desc_ps_output_result, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %185

13:                                               ; preds = %8
  %14 = load i32**, i32*** @test_reflection_desc_ps_output_blob, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i32**, i32*** @test_reflection_desc_ps_output_blob, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.TYPE_10__** %3 to i8**
  %27 = call i64 @pD3DReflect(i32* %18, i32 %25, i32* @IID_ID3D11ShaderReflection, i8** %26)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @test_reflection_desc_ps_output_result, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)*, i64 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i64 %43(%struct.TYPE_10__* %44, i32 0, %struct.TYPE_11__* %4)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51, i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcmp(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %63, i64 %66, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %77, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %80, i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %92, i64 %94, i64 %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %6, align 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %106, i64 %108, i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %6, align 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %119, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %120, i64 %122, i64 %125)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %6, align 4
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %133, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %134, i64 %136, i64 %139)
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %6, align 4
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %147, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %148, i64 %150, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %6, align 4
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %161, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 %162, i64 %164, i64 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = call i64 %173(%struct.TYPE_10__* %174)
  store i64 %175, i64* %2, align 8
  %176 = load i64, i64* %2, align 8
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %6, align 4
  %180 = load i64, i64* %2, align 8
  %181 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %179, i64 %180)
  br label %182

182:                                              ; preds = %13
  %183 = load i32, i32* %6, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %8

185:                                              ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #2

declare dso_local i64 @pD3DReflect(i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #2

declare dso_local i32 @strcmp(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
