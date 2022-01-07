; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/opengl32/extr_opengl.c_test_choosepixelformat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/opengl32/extr_opengl.c_test_choosepixelformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Simple pfd failed\0A\00", align 1
@PFD_DOUBLEBUFFER_DONTCARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PFD_DOUBLEBUFFER_DONTCARE failed\0A\00", align 1
@PFD_STEREO_DONTCARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"PFD_STEREO_DONTCARE failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid pixel format 32 failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Expected pixel type PFD_TYPE_RGBA, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid pixel format 33 failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Invalid pixel format 15 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_choosepixelformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_choosepixelformat() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 128, i1 false)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 128, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %7 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %8 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %11 = load i32, i32* @PFD_TYPE_RGBA, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 21
  %13 = load i32, i32* @PFD_MAIN_PLANE, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 32, i32* %40, align 4
  %41 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* %2)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 33, i32* %51, align 4
  %52 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* %2)
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 15, i32* %62, align 4
  %63 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* %2)
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 32, i32* %75, align 4
  %76 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %98 = xor i32 %97, -1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 8, i32* %103, align 4
  %104 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %119 = xor i32 %118, -1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %119
  store i32 %122, i32* %120, align 4
  %123 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %126 = xor i32 %125, -1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  store i32 8, i32* %131, align 4
  %132 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %147 = xor i32 %146, -1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %153 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %154 = xor i32 %153, -1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %154
  store i32 %157, i32* %155, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  store i32 0, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 8
  store i32 1, i32* %159, align 4
  %160 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* @PFD_DOUBLEBUFFER_DONTCARE, align 4
  %175 = xor i32 %174, -1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = call i32 @test_pfd(%struct.TYPE_4__* %1, %struct.TYPE_4__* null)
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32, i32* @PFD_STEREO_DONTCARE, align 4
  %182 = xor i32 %181, -1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %182
  store i32 %185, i32* %183, align 4
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 8
  store i32 0, i32* %186, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @test_pfd(%struct.TYPE_4__*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
