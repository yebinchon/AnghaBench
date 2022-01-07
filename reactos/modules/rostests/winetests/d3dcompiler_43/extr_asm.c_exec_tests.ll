; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_exec_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_exec_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i64*, i32 }

@D3DCOMPILE_SKIP_VALIDATION = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Test %s, shader %d: D3DAssemble failed with error 0x%x - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"D3DAssemble messages:\0A%s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@D3DSIO_END = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Test %s, shader %d: Generated code differs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.shader_test*, i32)* @exec_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_tests(i8* %0, %struct.shader_test* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.shader_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.shader_test* %1, %struct.shader_test** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %140, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %143

18:                                               ; preds = %14
  store i32* null, i32** %13, align 8
  %19 = load %struct.shader_test*, %struct.shader_test** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %19, i64 %21
  %23 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.shader_test*, %struct.shader_test** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %25, i64 %27
  %29 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strlen(i32 %30)
  %32 = load i32, i32* @D3DCOMPILE_SKIP_VALIDATION, align 4
  %33 = call i32 @pD3DAssemble(i32 %24, i32 %31, i32* null, i32* null, i32* null, i32 %32, i32** %12, i32** %13)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 (i32, i8*, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39, i32 %40, i32 %42)
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %18
  %47 = load i32*, i32** %13, align 8
  %48 = call i64* @ID3D10Blob_GetBufferPointer(i32* %47)
  %49 = bitcast i64* %48 to i8*
  %50 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @ID3D10Blob_Release(i32* %51)
  br label %53

53:                                               ; preds = %46, %18
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %140

58:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i64* @ID3D10Blob_GetBufferPointer(i32* %60)
  store i64* %61, i64** %8, align 8
  br label %62

62:                                               ; preds = %104, %58
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @D3DSIO_END, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load %struct.shader_test*, %struct.shader_test** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %71, i64 %73
  %75 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @D3DSIO_END, align 8
  %82 = icmp ne i64 %80, %81
  br label %83

83:                                               ; preds = %70, %62
  %84 = phi i1 [ false, %62 ], [ %82, %70 ]
  br i1 %84, label %85, label %107

85:                                               ; preds = %83
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.shader_test*, %struct.shader_test** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %91, i64 %93
  %95 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %90, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i64, i64* @TRUE, align 8
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %102, %85
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %62

107:                                              ; preds = %83
  %108 = load i64*, i64** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.shader_test*, %struct.shader_test** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %113, i64 %115
  %117 = getelementptr inbounds %struct.shader_test, %struct.shader_test* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %112, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %124, %107
  %127 = load i64, i64* %11, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i64, i64* @FALSE, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i32, i8*, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %132, i32 %133)
  %135 = load i64*, i64** %8, align 8
  %136 = call i32 @dump_shader(i64* %135)
  br label %137

137:                                              ; preds = %129, %126
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @ID3D10Blob_Release(i32* %138)
  br label %140

140:                                              ; preds = %137, %57
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %14

143:                                              ; preds = %14
  ret void
}

declare dso_local i32 @pD3DAssemble(i32, i32, i32*, i32*, i32*, i32, i32**, i32**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64* @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @dump_shader(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
