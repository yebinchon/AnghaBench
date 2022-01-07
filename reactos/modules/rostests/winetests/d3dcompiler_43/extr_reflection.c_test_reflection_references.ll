; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_references.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_reflection.c_test_reflection_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, i32*, i8**)* }

@test_reflection_blob = common dso_local global i32* null, align 8
@IID_ID3D11ShaderReflection = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"D3DReflect failed, got %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"QueryInterface failed, got %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Release failed %u\0A\00", align 1
@IID_ID3D10ShaderReflection = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@IID_ID3D10ShaderReflection1 = common dso_local global i32 0, align 4
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reflection_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reflection_references() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32*, i32** @test_reflection_blob, align 8
  %8 = load i32*, i32** @test_reflection_blob, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 6
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %struct.TYPE_9__** %3 to i8**
  %12 = call i32 @pD3DReflect(i32* %7, i32 %10, i32* @IID_ID3D11ShaderReflection, i8** %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_9__*, i32*, i8**)*, i32 (%struct.TYPE_9__*, i32*, i8**)** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = bitcast %struct.TYPE_9__** %4 to i8**
  %27 = call i32 %24(%struct.TYPE_9__* %25, i32* @IID_ID3D11ShaderReflection, i8** %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 %39(%struct.TYPE_9__* %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_9__*, i32*, i8**)*, i32 (%struct.TYPE_9__*, i32*, i8**)** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = bitcast i32** %5 to i8**
  %54 = call i32 %51(%struct.TYPE_9__* %52, i32* @IID_ID3D10ShaderReflection, i8** %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @E_NOINTERFACE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @E_NOINTERFACE, align 4
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_9__*, i32*, i8**)*, i32 (%struct.TYPE_9__*, i32*, i8**)** %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = bitcast i32** %6 to i8**
  %69 = call i32 %66(%struct.TYPE_9__* %67, i32* @IID_ID3D10ShaderReflection1, i8** %68)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @E_NOINTERFACE, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @E_NOINTERFACE, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = call i32 %81(%struct.TYPE_9__* %82)
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %2, align 4
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** @test_reflection_blob, align 8
  %90 = load i32*, i32** @test_reflection_blob, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  %92 = load i32, i32* %91, align 4
  %93 = bitcast i32** %5 to i8**
  %94 = call i32 @pD3DReflect(i32* %89, i32 %92, i32* @IID_ID3D10ShaderReflection, i8** %93)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @E_NOINTERFACE, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* @E_NOINTERFACE, align 4
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32*, i32** @test_reflection_blob, align 8
  %103 = load i32*, i32** @test_reflection_blob, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  %105 = load i32, i32* %104, align 4
  %106 = bitcast i32** %6 to i8**
  %107 = call i32 @pD3DReflect(i32* %102, i32 %105, i32* @IID_ID3D10ShaderReflection1, i8** %106)
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @E_NOINTERFACE, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* @E_NOINTERFACE, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32*, i32** @test_reflection_blob, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = bitcast i32** %6 to i8**
  %119 = call i32 @pD3DReflect(i32* null, i32 %117, i32* @IID_ID3D10ShaderReflection1, i8** %118)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32*, i32** @test_reflection_blob, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = bitcast %struct.TYPE_9__** %3 to i8**
  %131 = call i32 @pD3DReflect(i32* null, i32 %129, i32* @IID_ID3D11ShaderReflection, i8** %130)
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* %1, align 4
  %133 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %138 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load i32*, i32** @test_reflection_blob, align 8
  %140 = bitcast i32** %6 to i8**
  %141 = call i32 @pD3DReflect(i32* %139, i32 31, i32* @IID_ID3D10ShaderReflection1, i8** %140)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32*, i32** @test_reflection_blob, align 8
  %150 = bitcast i32** %6 to i8**
  %151 = call i32 @pD3DReflect(i32* %149, i32 32, i32* @IID_ID3D10ShaderReflection1, i8** %150)
  store i32 %151, i32* %1, align 4
  %152 = load i32, i32* %1, align 4
  %153 = load i32, i32* @E_FAIL, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %1, align 4
  %157 = load i32, i32* @E_FAIL, align 4
  %158 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32*, i32** @test_reflection_blob, align 8
  %160 = load i32*, i32** @test_reflection_blob, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  %164 = bitcast i32** %6 to i8**
  %165 = call i32 @pD3DReflect(i32* %159, i32 %163, i32* @IID_ID3D10ShaderReflection1, i8** %164)
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %1, align 4
  %167 = load i32, i32* @E_FAIL, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %1, align 4
  %171 = load i32, i32* @E_FAIL, align 4
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load i32*, i32** @test_reflection_blob, align 8
  %174 = bitcast %struct.TYPE_9__** %3 to i8**
  %175 = call i32 @pD3DReflect(i32* %173, i32 31, i32* @IID_ID3D11ShaderReflection, i8** %174)
  store i32 %175, i32* %1, align 4
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %1, align 4
  %181 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  %182 = call i32 (i32, i8*, i32, ...) @ok(i32 %179, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32*, i32** @test_reflection_blob, align 8
  %184 = bitcast %struct.TYPE_9__** %3 to i8**
  %185 = call i32 @pD3DReflect(i32* %183, i32 32, i32* @IID_ID3D11ShaderReflection, i8** %184)
  store i32 %185, i32* %1, align 4
  %186 = load i32, i32* %1, align 4
  %187 = load i32, i32* @E_FAIL, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %1, align 4
  %191 = load i32, i32* @E_FAIL, align 4
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load i32*, i32** @test_reflection_blob, align 8
  %194 = load i32*, i32** @test_reflection_blob, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 6
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 1
  %198 = bitcast %struct.TYPE_9__** %3 to i8**
  %199 = call i32 @pD3DReflect(i32* %193, i32 %197, i32* @IID_ID3D11ShaderReflection, i8** %198)
  store i32 %199, i32* %1, align 4
  %200 = load i32, i32* %1, align 4
  %201 = load i32, i32* @E_FAIL, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %1, align 4
  %205 = load i32, i32* @E_FAIL, align 4
  %206 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %204, i32 %205)
  ret void
}

declare dso_local i32 @pD3DReflect(i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
