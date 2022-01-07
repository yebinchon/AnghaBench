; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_actctx_classes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_actctx_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }

@test_actctx_classes.main_manifest = internal constant [229 x i8] c"<assembly xmlns=\22urn:schemas-microsoft-com:asm.v1\22 manifestVersion=\221.0\22><assemblyIdentity version=\224.3.2.1\22 name=\22Wine.WndClass.Test\22 type=\22win32\22 /><file name=\22file.exe\22><windowClass>MyTestClass</windowClass></file></assembly>\00", align 16
@test_actctx_classes.testclass = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [12 x i8] c"MyTestClass\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"actctx_classes.manifest\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to delete manifest file, error %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to activate context.\0A\00", align 1
@ClassTest_WndProc = common dso_local global i32 0, align 4
@IDI_APPLICATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to register class.\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to get class info.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to create a window.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to get class name.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Unexpected class name.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"4.3.2.1!MyTestClass\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to unregister class.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to deactivate context.\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Unexpected ret val %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Unexpected ret value %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Failed to register class\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_actctx_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_actctx_classes() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = udiv i64 %12, 1
  %16 = trunc i64 %15 to i32
  %17 = call i32 @GetTempPathA(i32 %16, i8* %14)
  %18 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @create_manifest_file(i8* %14, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @test_actctx_classes.main_manifest, i64 0, i64 0))
  %20 = call i32 @create_test_actctx(i8* %14)
  store i32 %20, i32* %3, align 4
  %21 = call i32 @DeleteFileA(i8* %14)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ActivateActCtx(i32 %25, i32* %2)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 16)
  %30 = load i32, i32* @ClassTest_WndProc, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* @IDI_APPLICATION, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @LoadIconW(i32 0, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = call i32 @GetModuleHandleW(i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %41 = call i32 @GetClassInfoA(i32 %39, i8* %40, %struct.TYPE_5__* %1)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %54 = call i32 @GetClassInfoA(i32 %52, i8* %53, %struct.TYPE_5__* %1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32* @CreateWindowExA(i32 0, i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %58, i32 0)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %66 = call i32 @GetClassNameA(i32* %64, i8* %65, i32 64)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %70 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %71 = call i32 @strcmp(i8* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @GetClassInfoA(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_5__* %1)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @UnregisterClassA(i8* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @DeactivateActCtx(i32 0, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %94 = call i32 @GetClassInfoA(i32 %92, i8* %93, %struct.TYPE_5__* %1)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @GetClassInfoA(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_5__* %1)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %107 = call i32 @GetClassNameA(i32* %105, i8* %106, i32 64)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %111 = load i8*, i8** @test_actctx_classes.testclass, align 8
  %112 = call i32 @strcmp(i8* %110, i8* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @DestroyWindow(i32* %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %131, align 8
  %132 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @ActivateActCtx(i32 %137, i32* %2)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %141, align 8
  %142 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i32, i32* %2, align 4
  %148 = call i32 @DeactivateActCtx(i32 0, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @ActivateActCtx(i32 %155, i32* %2)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %159, align 8
  %160 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %160, i64* %5, align 8
  %161 = load i64, i64* %5, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @DeactivateActCtx(i32 0, i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @GetClassInfoA(i32 %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %1)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @GetClassInfoA(i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_5__* %1)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %184, align 8
  %185 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @ActivateActCtx(i32 %190, i32* %2)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %194, align 8
  %195 = call i64 @RegisterClassA(%struct.TYPE_5__* %1)
  store i64 %195, i64* %5, align 8
  %196 = load i64, i64* %5, align 8
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @DeactivateActCtx(i32 0, i32 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @ReleaseActCtx(i32 %212)
  %214 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %214)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @create_manifest_file(i8*, i8*) #2

declare dso_local i32 @create_test_actctx(i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ActivateActCtx(i32, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @LoadIconW(i32, i32) #2

declare dso_local i32 @GetModuleHandleW(i32) #2

declare dso_local i32 @GetClassInfoA(i32, i8*, %struct.TYPE_5__*) #2

declare dso_local i64 @RegisterClassA(%struct.TYPE_5__*) #2

declare dso_local i32* @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GetClassNameA(i32*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @UnregisterClassA(i8*, i32) #2

declare dso_local i32 @DeactivateActCtx(i32, i32) #2

declare dso_local i32 @DestroyWindow(i32*) #2

declare dso_local i32 @ReleaseActCtx(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
