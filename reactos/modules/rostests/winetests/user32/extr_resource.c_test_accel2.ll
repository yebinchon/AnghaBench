; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_accel2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_accel2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"destroy failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"copy failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"copy null failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"copy 1 failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"copy 2 failed\0A\00", align 1
@FVIRTKEY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"cmd modified\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"fVirt not modified\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"key modified\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"copy 2 failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_accel2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_accel2() #0 {
  %1 = alloca [2 x %struct.TYPE_5__], align 16
  %2 = alloca [2 x %struct.TYPE_5__], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %6, align 16
  %7 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %18 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %17, i32 0)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %0
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @broken(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %0
  %28 = phi i1 [ true, %0 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @DestroyAcceleratorTable(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %27
  %41 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %42 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %41, i32 1)
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %49 = call i32 @CopyAcceleratorTableA(i32* %47, %struct.TYPE_5__* %48, i32 1)
  %50 = icmp eq i32 1, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @DestroyAcceleratorTable(i32* %53)
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %56 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %57 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %56, i32 2)
  store i32* %57, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @CopyAcceleratorTableA(i32* %62, %struct.TYPE_5__* null, i32 100)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @CopyAcceleratorTableA(i32* %69, %struct.TYPE_5__* null, i32 0)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @CopyAcceleratorTableA(i32* %76, %struct.TYPE_5__* null, i32 1)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %85 = call i32 @CopyAcceleratorTableA(i32* %83, %struct.TYPE_5__* %84, i32 1)
  %86 = icmp eq i32 1, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %91 = call i32 @CopyAcceleratorTableA(i32* %89, %struct.TYPE_5__* %90, i32 2)
  %92 = icmp eq i32 2, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @DestroyAcceleratorTable(i32* %95)
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %98 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i32 32, i32* %99, align 8
  %100 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i32 32, i32* %101, align 4
  %102 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %103 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %102, i32 2)
  store i32* %103, i32** %3, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %110 = call i32 @CopyAcceleratorTableA(i32* %108, %struct.TYPE_5__* %109, i32 2)
  %111 = icmp eq i32 2, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @DestroyAcceleratorTable(i32* %114)
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i8*, i8** @FVIRTKEY, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 64, i32* %122, align 8
  %123 = load i8*, i8** @FVIRTKEY, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 64, i32* %128, align 4
  %129 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %130 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %129, i32 2)
  store i32* %130, i32** %3, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = icmp ne i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %137 = call i32 @CopyAcceleratorTableA(i32* %135, %struct.TYPE_5__* %136, i32 2)
  %138 = icmp eq i32 2, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @DestroyAcceleratorTable(i32* %141)
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i8*, i8** @FVIRTKEY, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %149 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %148, i32 1)
  store i32* %149, i32** %3, align 8
  %150 = load i32*, i32** %3, align 8
  %151 = icmp ne i32* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %156 = call i32 @CopyAcceleratorTableA(i32* %154, %struct.TYPE_5__* %155, i32 2)
  %157 = icmp eq i32 1, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @DestroyAcceleratorTable(i32* %160)
  %162 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %163 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 65535, i32* %164, align 16
  %165 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 255, i32* %166, align 4
  %167 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  store i32 65535, i32* %168, align 8
  %169 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %170 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %169, i32 1)
  store i32* %170, i32** %3, align 8
  %171 = load i32*, i32** %3, align 8
  %172 = icmp ne i32* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %175 = load i32*, i32** %3, align 8
  %176 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %177 = call i32 @CopyAcceleratorTableA(i32* %175, %struct.TYPE_5__* %176, i32 1)
  %178 = icmp eq i32 1, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %181 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 16
  %187 = icmp eq i32 %183, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %190 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 127
  %197 = icmp eq i32 %192, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %200 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %202, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @DestroyAcceleratorTable(i32* %209)
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %212 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %213 = call i32 @memset(%struct.TYPE_5__* %212, i32 255, i32 24)
  %214 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %215 = call i32* @CreateAcceleratorTableA(%struct.TYPE_5__* %214, i32 2)
  store i32* %215, i32** %3, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = icmp ne i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %220 = load i32*, i32** %3, align 8
  %221 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %222 = call i32 @CopyAcceleratorTableA(i32* %220, %struct.TYPE_5__* %221, i32 2)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %4, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  %228 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 16
  %231 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 16
  %234 = icmp eq i32 %230, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %237 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 127
  %244 = icmp eq i32 %239, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %247 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %249, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %256 = load i32, i32* %4, align 4
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %287

258:                                              ; preds = %40
  %259 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %261, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %268 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 1
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 127
  %275 = icmp eq i32 %270, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %278 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 1
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %1, i64 0, i64 1
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %280, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %287

287:                                              ; preds = %258, %40
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @DestroyAcceleratorTable(i32* %288)
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32* @CreateAcceleratorTableA(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @DestroyAcceleratorTable(i32*) #1

declare dso_local i32 @CopyAcceleratorTableA(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
