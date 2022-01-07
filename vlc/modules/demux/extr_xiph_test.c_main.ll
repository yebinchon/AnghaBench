; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_s = type { i32, i32, i32**, i32*, i32*, i64, i8* }

@VLC_CODEC_VORBIS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@test_xiph_IsLavcFormat = common dso_local global i32 0, align 4
@xiph0 = common dso_local global i32* null, align 8
@OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lavc0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lavc1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lavc2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lavc3\00", align 1
@xiphlavc0 = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"lavc4\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lavc5\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lavc6\00", align 1
@test_xiph_CountHeaders = common dso_local global i32 0, align 4
@xiph1 = common dso_local global i32* null, align 8
@test_xiph_CountLavcHeaders = common dso_local global i32 0, align 4
@test_xiph_SplitHeaders = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@test_xiph_SplitLavcHeaders = common dso_local global i32 0, align 4
@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@test_xiph_PackHeaders = common dso_local global i32 0, align 4
@test_xiph_AppendHeaders = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.params_s, align 8
  %3 = alloca [265 x i32], align 16
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load i8*, i8** @VLC_CODEC_VORBIS, align 8
  %7 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 6
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %9 = load i32*, i32** @xiph0, align 8
  %10 = load i32, i32* @OK, align 4
  %11 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %8, i32* %9, i32 0, i32 %10)
  %12 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %13 = load i32*, i32** @xiph0, align 8
  %14 = load i32, i32* @OK, align 4
  %15 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32* %13, i32 1, i32 %14)
  %16 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %17 = load i32*, i32** @xiph0, align 8
  %18 = load i32, i32* @OK, align 4
  %19 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32* %17, i32 2, i32 %18)
  %20 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %21 = load i32*, i32** @xiph0, align 8
  %22 = load i32, i32* @OK, align 4
  %23 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32* %21, i32 6, i32 %22)
  %24 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %25 = load i32*, i32** @xiph0, align 8
  %26 = load i32, i32* @OK, align 4
  %27 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32* %25, i32 0, i32 %26)
  %28 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %29 = load i32*, i32** @xiph0, align 8
  %30 = load i32, i32* @OK, align 4
  %31 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32* %29, i32 1, i32 %30)
  %32 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %33 = load i32*, i32** @xiph0, align 8
  %34 = load i32, i32* @OK, align 4
  %35 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %32, i32* %33, i32 6, i32 %34)
  %36 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %37 = load i32*, i32** @xiphlavc0, align 8
  %38 = load i32, i32* @OK, align 4
  %39 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %36, i32* %37, i32 0, i32 %38)
  %40 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %41 = load i32*, i32** @xiphlavc0, align 8
  %42 = load i32, i32* @OK, align 4
  %43 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %40, i32* %41, i32 1, i32 %42)
  %44 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %46 = load i32*, i32** @xiphlavc0, align 8
  %47 = load i32, i32* @OK, align 4
  %48 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %45, i32* %46, i32 37, i32 %47)
  %49 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 6
  store i8* null, i8** %49, align 8
  %50 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* @test_xiph_IsLavcFormat, align 4
  %52 = load i32*, i32** @xiphlavc0, align 8
  %53 = load i32, i32* @OK, align 4
  %54 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %51, i32* %52, i32 37, i32 %53)
  %55 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @test_xiph_CountHeaders, align 4
  %57 = load i32*, i32** @xiph0, align 8
  %58 = load i32, i32* @OK, align 4
  %59 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %56, i32* %57, i32 0, i32 %58)
  %60 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @test_xiph_CountHeaders, align 4
  %62 = load i32*, i32** @xiph0, align 8
  %63 = load i32, i32* @OK, align 4
  %64 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32* %62, i32 1, i32 %63)
  %65 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 3, i32* %65, align 4
  %66 = load i32, i32* @test_xiph_CountHeaders, align 4
  %67 = load i32*, i32** @xiph1, align 8
  %68 = load i32, i32* @OK, align 4
  %69 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32* %67, i32 11, i32 %68)
  %70 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 3, i32* %70, align 4
  %71 = load i8*, i8** @VLC_CODEC_VORBIS, align 8
  %72 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 6
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @test_xiph_CountLavcHeaders, align 4
  %74 = load i32*, i32** @xiphlavc0, align 8
  %75 = load i32, i32* @OK, align 4
  %76 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32* %74, i32 37, i32 %75)
  %77 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @test_xiph_CountLavcHeaders, align 4
  %79 = load i32*, i32** @xiphlavc0, align 8
  %80 = load i32, i32* @OK, align 4
  %81 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32* %79, i32 35, i32 %80)
  %82 = load i32, i32* @test_xiph_CountLavcHeaders, align 4
  %83 = load i32*, i32** @xiphlavc0, align 8
  %84 = load i32, i32* @OK, align 4
  %85 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %82, i32* %83, i32 0, i32 %84)
  %86 = load i32*, i32** @xiph0, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  store i32* %87, i32** %90, align 8
  %91 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 5, i32* %93, align 4
  %94 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %96 = load i32*, i32** @xiph0, align 8
  %97 = load i32, i32* @OK, align 4
  %98 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %95, i32* %96, i32 6, i32 %97)
  %99 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %103 = load i32*, i32** @xiph0, align 8
  %104 = load i32, i32* @OK, align 4
  %105 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32* %103, i32 1, i32 %104)
  %106 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 3, i32* %106, align 4
  %107 = load i32*, i32** @xiph1, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  store i32* %108, i32** %111, align 8
  %112 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 5, i32* %114, align 4
  %115 = load i32*, i32** @xiph1, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  %117 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* %116, i32** %119, align 8
  %120 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 1, i32* %122, align 4
  %123 = load i32*, i32** @xiph1, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 9
  %125 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 2
  store i32* %124, i32** %127, align 8
  %128 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 2, i32* %130, align 4
  %131 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %132 = load i32*, i32** @xiph1, align 8
  %133 = load i32, i32* @OK, align 4
  %134 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32* %132, i32 11, i32 %133)
  %135 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %136 = load i32*, i32** @xiph1, align 8
  %137 = load i32, i32* @FAIL, align 4
  %138 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32* %136, i32 7, i32 %137)
  %139 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %140 = call i32 @memset(i32* %139, i32 255, i32 265)
  %141 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %142 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %143 = load i32, i32* @FAIL, align 4
  %144 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %141, i32* %142, i32 265, i32 %143)
  %145 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  store i32 1, i32* %145, align 16
  %146 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %147 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %148 = load i32, i32* @FAIL, align 4
  %149 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %146, i32* %147, i32 265, i32 %148)
  %150 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 2
  store i32 1, i32* %150, align 8
  %151 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 2, i32* %151, align 4
  %152 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 3
  %153 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 0
  store i32* %152, i32** %155, align 8
  %156 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 256, i32* %158, align 4
  %159 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 259
  %160 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  store i32* %159, i32** %162, align 8
  %163 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 6, i32* %165, align 4
  %166 = load i32, i32* @test_xiph_SplitHeaders, align 4
  %167 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %168 = load i32, i32* @OK, align 4
  %169 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32* %167, i32 265, i32 %168)
  %170 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 3, i32* %170, align 4
  %171 = load i32*, i32** @xiphlavc0, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 0
  store i32* %172, i32** %175, align 8
  %176 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 30, i32* %178, align 4
  %179 = load i32*, i32** @xiphlavc0, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 34
  %181 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %182 = load i32**, i32*** %181, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32* %180, i32** %183, align 8
  %184 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 1, i32* %186, align 4
  %187 = load i32*, i32** @xiphlavc0, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 37
  %189 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %190 = load i32**, i32*** %189, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 2
  store i32* %188, i32** %191, align 8
  %192 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 0, i32* %194, align 4
  %195 = load i32, i32* @test_xiph_SplitLavcHeaders, align 4
  %196 = load i32*, i32** @xiphlavc0, align 8
  %197 = load i32, i32* @OK, align 4
  %198 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32* %196, i32 37, i32 %197)
  %199 = load i32, i32* @test_xiph_SplitLavcHeaders, align 4
  %200 = load i32*, i32** @xiphlavc0, align 8
  %201 = load i32, i32* @FAIL, align 4
  %202 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32* %200, i32 36, i32 %201)
  %203 = load i32, i32* @test_xiph_SplitLavcHeaders, align 4
  %204 = load i32*, i32** @xiphlavc0, align 8
  %205 = load i32, i32* @FAIL, align 4
  %206 = call i32 @RUN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %203, i32* %204, i32 31, i32 %205)
  %207 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %208 = add nsw i32 %207, 1
  %209 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @test_xiph_PackHeaders, align 4
  %211 = load i32*, i32** @xiph0, align 8
  %212 = load i32, i32* @FAIL, align 4
  %213 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %210, i32* %211, i32 6, i32 %212)
  %214 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 1, i32* %214, align 4
  %215 = load i32*, i32** @xiph0, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %218 = load i32**, i32*** %217, align 8
  %219 = getelementptr inbounds i32*, i32** %218, i64 0
  store i32* %216, i32** %219, align 8
  %220 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 5, i32* %222, align 4
  %223 = load i32, i32* @test_xiph_PackHeaders, align 4
  %224 = load i32*, i32** @xiph0, align 8
  %225 = load i32, i32* @OK, align 4
  %226 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %223, i32* %224, i32 6, i32 %225)
  %227 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 0, i32* %227, align 4
  %228 = load i32, i32* @test_xiph_PackHeaders, align 4
  %229 = load i32*, i32** @xiph1, align 8
  %230 = load i32, i32* @FAIL, align 4
  %231 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %228, i32* %229, i32 11, i32 %230)
  %232 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 3, i32* %232, align 4
  %233 = load i32*, i32** @xiph1, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %236 = load i32**, i32*** %235, align 8
  %237 = getelementptr inbounds i32*, i32** %236, i64 0
  store i32* %234, i32** %237, align 8
  %238 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 5, i32* %240, align 4
  %241 = load i32*, i32** @xiph1, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 8
  %243 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 1
  store i32* %242, i32** %245, align 8
  %246 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 1, i32* %248, align 4
  %249 = load i32*, i32** @xiph1, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 9
  %251 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 2
  store i32* %250, i32** %253, align 8
  %254 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  store i32 2, i32* %256, align 4
  %257 = load i32, i32* @test_xiph_PackHeaders, align 4
  %258 = load i32*, i32** @xiph1, align 8
  %259 = load i32, i32* @OK, align 4
  %260 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %257, i32* %258, i32 11, i32 %259)
  %261 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 1
  store i32 2, i32* %261, align 4
  %262 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 3
  %263 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %264 = load i32**, i32*** %263, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 0
  store i32* %262, i32** %265, align 8
  %266 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 256, i32* %268, align 4
  %269 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 259
  %270 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %271 = load i32**, i32*** %270, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 1
  store i32* %269, i32** %272, align 8
  %273 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 6, i32* %275, align 4
  %276 = load i32, i32* @test_xiph_PackHeaders, align 4
  %277 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %278 = load i32, i32* @OK, align 4
  %279 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %276, i32* %277, i32 265, i32 %278)
  %280 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 5
  store i64 0, i64* %280, align 8
  %281 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 4
  store i32* null, i32** %281, align 8
  %282 = load i32*, i32** @xiph0, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 2
  %285 = load i32**, i32*** %284, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 0
  store i32* %283, i32** %286, align 8
  %287 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 5, i32* %289, align 4
  %290 = load i32, i32* @test_xiph_AppendHeaders, align 4
  %291 = load i32*, i32** @xiph0, align 8
  %292 = load i32, i32* @OK, align 4
  %293 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %290, i32* %291, i32 6, i32 %292)
  %294 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  store i32 1, i32* %294, align 16
  %295 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 1
  store i32 5, i32* %295, align 4
  %296 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 2
  %297 = load i32*, i32** @xiph0, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = call i32 @memcpy(i32* %296, i32* %298, i32 5)
  %300 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 7
  %301 = load i32*, i32** @xiph0, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = call i32 @memcpy(i32* %300, i32* %302, i32 5)
  %304 = load i32, i32* @test_xiph_AppendHeaders, align 4
  %305 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %306 = load i32, i32* @OK, align 4
  %307 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %304, i32* %305, i32 12, i32 %306)
  %308 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 4
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @free(i32* %309)
  %311 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 5
  store i64 0, i64* %311, align 8
  %312 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 4
  store i32* null, i32** %312, align 8
  store i64 0, i64* %4, align 8
  br label %313

313:                                              ; preds = %344, %0
  %314 = load i64, i64* %4, align 8
  %315 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %316 = sext i32 %315 to i64
  %317 = icmp ule i64 %314, %316
  br i1 %317, label %318, label %347

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  store i32 0, i32* %321, align 4
  %322 = load i64, i64* %4, align 8
  %323 = trunc i64 %322 to i32
  %324 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  store i32 %323, i32* %324, align 16
  %325 = load i64, i64* %4, align 8
  %326 = add i64 1, %325
  %327 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 %326
  store i32 0, i32* %327, align 4
  %328 = load i32, i32* @test_xiph_AppendHeaders, align 4
  %329 = getelementptr inbounds [265 x i32], [265 x i32]* %3, i64 0, i64 0
  %330 = load i64, i64* %4, align 8
  %331 = add i64 1, %330
  %332 = trunc i64 %331 to i32
  %333 = load i64, i64* %4, align 8
  %334 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %335 = sext i32 %334 to i64
  %336 = icmp ult i64 %333, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %318
  %338 = load i32, i32* @OK, align 4
  br label %341

339:                                              ; preds = %318
  %340 = load i32, i32* @FAIL, align 4
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %338, %337 ], [ %340, %339 ]
  %343 = call i32 @RUN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %328, i32* %329, i32 %332, i32 %342)
  br label %344

344:                                              ; preds = %341
  %345 = load i64, i64* %4, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %4, align 8
  br label %313

347:                                              ; preds = %313
  %348 = getelementptr inbounds %struct.params_s, %struct.params_s* %2, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @free(i32* %349)
  ret i32 0
}

declare dso_local i32 @RUN(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
