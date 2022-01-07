; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_AddFontMemResourceEx.c_test_font_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_AddFontMemResourceEx.c_test_font_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@test_data = common dso_local global %struct.TYPE_8__* null, align 8
@FW_DONTCARE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GetTextMetricsA() for %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GetTextFaceA error %lu for %s/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"FontName was %s, expected %s for %s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_font_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_font_caps(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 84, i1 false)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @test_data, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %175, %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @test_data, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %178

33:                                               ; preds = %20
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @test_data, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %12, align 8
  %43 = load i32, i32* @FW_DONTCARE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @DEFAULT_CHARSET, align 4
  %48 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %49 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %50 = load i32, i32* @DEFAULT_QUALITY, align 4
  %51 = load i32, i32* @DEFAULT_PITCH, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @CreateFontA(i32 0, i32 0, i32 0, i32 0, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %174

58:                                               ; preds = %33
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @SelectObject(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = call i32 @memset(%struct.TYPE_7__* %6, i32 170, i32 84)
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @GetTextMetricsA(i32 %63, %struct.TYPE_7__* %6)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %71)
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* %3, align 4
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %76 = call i64 @GetTextFaceA(i32 %74, i32 64, i8* %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (...) @GetLastError()
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %82, i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %58
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @strcmp(i8* %90, i64 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8*, i8** %11, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %102, i8* %103, i64 %106)
  br label %108

108:                                              ; preds = %89, %58
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 19
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ok_int2(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 18
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ok_int2(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 17
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ok_int2(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 16
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ok_int2(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ok_int2(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ok_int2(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 13
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ok_int2(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ok_int2(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ok_int2(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ok_int2(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ok_int2(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ok_int2(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ok_int2(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ok_int2(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ok_int2(i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ok_int2(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ok_int2(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ok_int2(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ok_hex2(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ok_int2(i32 %167)
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @SelectObject(i32 %169, i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @DeleteObject(i32 %172)
  br label %174

174:                                              ; preds = %108, %33
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %20

178:                                              ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreateFontA(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i64 @GetTextMetricsA(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ok(i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @GetTextFaceA(i32, i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @strcmp(i8*, i64) #2

declare dso_local i32 @ok_int2(i32) #2

declare dso_local i32 @ok_hex2(i32) #2

declare dso_local i32 @DeleteObject(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
