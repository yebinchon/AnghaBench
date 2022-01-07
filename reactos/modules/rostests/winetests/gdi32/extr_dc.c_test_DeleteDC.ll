; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_DeleteDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_DeleteDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CreateWindowExA failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"GetDC failed\0A\00", align 1
@OBJ_DC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"expected OBJ_DC, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"DeleteDC failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"GetObjectType should fail for a deleted DC\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GetDesktopWindow failed\0A\00", align 1
@CS_CLASSDC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Wine class DC\00", align 1
@DefWindowProcA = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"RegisterClassExA failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ReleaseDC failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"UnregisterClassA failed\0A\00", align 1
@CS_OWNDC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Wine own DC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DeleteDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DeleteDC() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @WS_POPUP, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8, i32 0, i32 0, i32 100, i32 100, i32 0, i32 0, i32 0, i32* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @GetDC(i64 %14)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @GetObjectType(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @OBJ_DC, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @DeleteDC(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @GetObjectType(i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %0
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @broken(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %0
  %41 = phi i1 [ true, %0 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i64, i64* %1, align 8
  %45 = call i64 @GetWindowDC(i64 %44)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @GetObjectType(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @OBJ_DC, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @DeleteDC(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i64, i64* %2, align 8
  %63 = call i32 @GetObjectType(i64 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %40
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @broken(i32 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %66, %40
  %71 = phi i1 [ true, %40 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @DestroyWindow(i64 %74)
  %76 = call i64 (...) @GetDesktopWindow()
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i64, i64* %1, align 8
  %82 = call i64 @GetDC(i64 %81)
  store i64 %82, i64* %2, align 8
  %83 = load i64, i64* %2, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i64, i64* %2, align 8
  %88 = call i32 @GetObjectType(i64 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @OBJ_DC, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i64, i64* %2, align 8
  %96 = call i32 @DeleteDC(i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i64, i64* %2, align 8
  %100 = call i32 @GetObjectType(i64 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %70
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @broken(i32 %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %103, %70
  %108 = phi i1 [ true, %70 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i64, i64* %1, align 8
  %112 = call i64 @GetWindowDC(i64 %111)
  store i64 %112, i64* %2, align 8
  %113 = load i64, i64* %2, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i64, i64* %2, align 8
  %118 = call i32 @GetObjectType(i64 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @OBJ_DC, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i64, i64* %2, align 8
  %126 = call i32 @DeleteDC(i64 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i64, i64* %2, align 8
  %130 = call i32 @GetObjectType(i64 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %107
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @broken(i32 %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %107
  %138 = phi i1 [ true, %107 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 40)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 40, i32* %142, align 8
  %143 = load i32, i32* @CS_CLASSDC, align 4
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i32 %143, i32* %144, align 8
  %145 = call i8* @GetModuleHandleA(i32* null)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i8* %145, i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** @DefWindowProcA, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* %148, i8** %149, align 8
  %150 = call i32 @RegisterClassExA(%struct.TYPE_4__* %4)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i32, i32* @WS_POPUP, align 4
  %154 = load i32, i32* @WS_VISIBLE, align 4
  %155 = or i32 %153, %154
  %156 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %155, i32 0, i32 0, i32 100, i32 100, i32 0, i32 0, i32 0, i32* null)
  store i64 %156, i64* %1, align 8
  %157 = load i64, i64* %1, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i64, i64* %1, align 8
  %162 = call i64 @GetDC(i64 %161)
  store i64 %162, i64* %2, align 8
  %163 = load i64, i64* %2, align 8
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i64, i64* %2, align 8
  %168 = call i32 @GetObjectType(i64 %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @OBJ_DC, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i64, i64* %2, align 8
  %176 = call i32 @DeleteDC(i64 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %179 = load i64, i64* %2, align 8
  %180 = call i32 @GetObjectType(i64 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @OBJ_DC, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* %1, align 8
  %188 = load i64, i64* %2, align 8
  %189 = call i32 @ReleaseDC(i64 %187, i64 %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %192 = load i64, i64* %2, align 8
  %193 = call i32 @GetObjectType(i64 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @OBJ_DC, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i64, i64* %2, align 8
  store i64 %200, i64* %3, align 8
  %201 = load i64, i64* %1, align 8
  %202 = call i64 @GetWindowDC(i64 %201)
  store i64 %202, i64* %2, align 8
  %203 = load i64, i64* %2, align 8
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %207 = load i64, i64* %2, align 8
  %208 = call i32 @GetObjectType(i64 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @OBJ_DC, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = load i64, i64* %2, align 8
  %216 = call i32 @DeleteDC(i64 %215)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i64, i64* %2, align 8
  %220 = call i32 @GetObjectType(i64 %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %137
  %224 = load i32, i32* %5, align 4
  %225 = call i64 @broken(i32 %224)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %223, %137
  %228 = phi i1 [ true, %137 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i64, i64* %1, align 8
  %232 = call i32 @DestroyWindow(i64 %231)
  %233 = load i64, i64* %3, align 8
  %234 = call i32 @GetObjectType(i64 %233)
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @OBJ_DC, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %5, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = call i8* @GetModuleHandleA(i32* null)
  %242 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %241)
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 (i32, i8*, ...) @ok(i32 %243, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %245 = load i64, i64* %3, align 8
  %246 = call i32 @GetObjectType(i64 %245)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %252 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 40)
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 40, i32* %253, align 8
  %254 = load i32, i32* @CS_OWNDC, align 4
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i32 %254, i32* %255, align 8
  %256 = call i8* @GetModuleHandleA(i32* null)
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i8* %256, i8** %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %258, align 8
  %259 = load i8*, i8** @DefWindowProcA, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* %259, i8** %260, align 8
  %261 = call i32 @RegisterClassExA(%struct.TYPE_4__* %4)
  store i32 %261, i32* %5, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %264 = load i32, i32* @WS_POPUP, align 4
  %265 = load i32, i32* @WS_VISIBLE, align 4
  %266 = or i32 %264, %265
  %267 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %266, i32 0, i32 0, i32 100, i32 100, i32 0, i32 0, i32 0, i32* null)
  store i64 %267, i64* %1, align 8
  %268 = load i64, i64* %1, align 8
  %269 = icmp ne i64 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %272 = load i64, i64* %1, align 8
  %273 = call i64 @GetDC(i64 %272)
  store i64 %273, i64* %2, align 8
  %274 = load i64, i64* %2, align 8
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %278 = load i64, i64* %2, align 8
  %279 = call i32 @GetObjectType(i64 %278)
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @OBJ_DC, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %5, align 4
  %285 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %284)
  %286 = load i64, i64* %2, align 8
  %287 = call i32 @DeleteDC(i64 %286)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %290 = load i64, i64* %2, align 8
  %291 = call i32 @GetObjectType(i64 %290)
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* @OBJ_DC, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %5, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %296)
  %298 = load i64, i64* %1, align 8
  %299 = load i64, i64* %2, align 8
  %300 = call i32 @ReleaseDC(i64 %298, i64 %299)
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %303 = load i64, i64* %2, align 8
  %304 = call i32 @GetObjectType(i64 %303)
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %5, align 4
  %306 = load i32, i32* @OBJ_DC, align 4
  %307 = icmp eq i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %5, align 4
  %310 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %309)
  %311 = load i64, i64* %1, align 8
  %312 = call i64 @GetWindowDC(i64 %311)
  store i64 %312, i64* %2, align 8
  %313 = load i64, i64* %2, align 8
  %314 = icmp ne i64 %313, 0
  %315 = zext i1 %314 to i32
  %316 = call i32 (i32, i8*, ...) @ok(i32 %315, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %317 = load i64, i64* %2, align 8
  %318 = call i32 @GetObjectType(i64 %317)
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = load i32, i32* @OBJ_DC, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = load i32, i32* %5, align 4
  %324 = call i32 (i32, i8*, ...) @ok(i32 %322, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %323)
  %325 = load i64, i64* %2, align 8
  %326 = call i32 @DeleteDC(i64 %325)
  store i32 %326, i32* %5, align 4
  %327 = load i32, i32* %5, align 4
  %328 = call i32 (i32, i8*, ...) @ok(i32 %327, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %329 = load i64, i64* %2, align 8
  %330 = call i32 @GetObjectType(i64 %329)
  store i32 %330, i32* %5, align 4
  %331 = load i32, i32* %5, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %227
  %334 = load i32, i32* %5, align 4
  %335 = call i64 @broken(i32 %334)
  %336 = icmp ne i64 %335, 0
  br label %337

337:                                              ; preds = %333, %227
  %338 = phi i1 [ true, %227 ], [ %336, %333 ]
  %339 = zext i1 %338 to i32
  %340 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %341 = load i64, i64* %1, align 8
  %342 = call i32 @DestroyWindow(i64 %341)
  %343 = call i8* @GetModuleHandleA(i32* null)
  %344 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %343)
  store i32 %344, i32* %5, align 4
  %345 = load i32, i32* %5, align 4
  %346 = call i32 (i32, i8*, ...) @ok(i32 %345, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetDC(i64) #1

declare dso_local i32 @GetObjectType(i64) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GetWindowDC(i64) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i64 @GetDesktopWindow(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @GetModuleHandleA(i32*) #1

declare dso_local i32 @RegisterClassExA(%struct.TYPE_4__*) #1

declare dso_local i32 @ReleaseDC(i64, i64) #1

declare dso_local i32 @UnregisterClassA(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
