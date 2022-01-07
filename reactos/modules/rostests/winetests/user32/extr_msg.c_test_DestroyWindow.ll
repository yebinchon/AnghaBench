; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_DestroyWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_DestroyWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WND_CHILD_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"wrong parent %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"wrong parent/child %p/%p\0A\00", align 1
@GA_PARENT = common dso_local global i32 0, align 4
@GW_OWNER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong owner %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"wrong old parent %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"parent %p, child1 %p, child2 %p, child3 %p, child4 %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"wrong capture window %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@test_DestroyWindow_flag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"DestroyWindow() error %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@destroy_window_with_children = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"destroy window with children\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"parent still exists\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"child1 still exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"child2 still exists\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"child3 still exists\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"child4 still exists\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DestroyWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DestroyWindow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i64, i64* @WND_CHILD_ID, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %12 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %11, i32 100, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @WS_CHILD, align 4
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = trunc i64 %19 to i32
  %22 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17, i32 0, i32 0, i32 50, i32 50, i64 %18, i32 %21, i32 0, i32* null)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @WS_CHILD, align 4
  %28 = call i64 (...) @GetDesktopWindow()
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %8, align 8
  %31 = trunc i64 %29 to i32
  %32 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27, i32 0, i32 0, i32 50, i32 50, i64 %28, i32 %31, i32 0, i32* null)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @WS_CHILD, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %8, align 8
  %41 = trunc i64 %39 to i32
  %42 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %37, i32 0, i32 0, i32 50, i32 50, i64 %38, i32 %41, i32 0, i32* null)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* @WS_POPUP, align 4
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %47, i32 0, i32 0, i32 50, i32 50, i64 %48, i32 0, i32 0, i32* null)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @GetParent(i64 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 (...) @GetDesktopWindow()
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @IsChild(i64 %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  br i1 true, label %71, label %81

71:                                               ; preds = %0
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* @GA_PARENT, align 4
  %74 = call i64 @pGetAncestor(i64 %72, i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 (...) @GetDesktopWindow()
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %7, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %71, %0
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* @GW_OWNER, align 4
  %84 = call i64 @GetWindow(i64 %82, i32 %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %2, align 8
  %93 = call i64 @SetParent(i64 %91, i64 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 (...) @GetDesktopWindow()
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %7, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %2, align 8
  %101 = call i64 @GetParent(i64 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %7, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = call i64 (...) @GetDesktopWindow()
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @IsChild(i64 %108, i64 %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i64 (...) @GetDesktopWindow()
  %115 = load i64, i64* %2, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %115)
  br i1 true, label %117, label %127

117:                                              ; preds = %81
  %118 = load i64, i64* %2, align 8
  %119 = load i32, i32* @GA_PARENT, align 4
  %120 = call i64 @pGetAncestor(i64 %118, i32 %119)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i64 (...) @GetDesktopWindow()
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %7, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %117, %81
  %128 = load i64, i64* %2, align 8
  %129 = load i32, i32* @GW_OWNER, align 4
  %130 = call i64 @GetWindow(i64 %128, i32 %129)
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %7, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* %3, align 8
  %138 = call i64 @GetParent(i64 %137)
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %2, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %7, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* %2, align 8
  %146 = load i64, i64* %3, align 8
  %147 = call i32 @IsChild(i64 %145, i64 %146)
  %148 = load i64, i64* %2, align 8
  %149 = load i64, i64* %3, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %148, i64 %149)
  br i1 true, label %151, label %161

151:                                              ; preds = %127
  %152 = load i64, i64* %3, align 8
  %153 = load i32, i32* @GA_PARENT, align 4
  %154 = call i64 @pGetAncestor(i64 %152, i32 %153)
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %2, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %7, align 8
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %151, %127
  %162 = load i64, i64* %3, align 8
  %163 = load i32, i32* @GW_OWNER, align 4
  %164 = call i64 @GetWindow(i64 %162, i32 %163)
  store i64 %164, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = icmp ne i64 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %7, align 8
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  %171 = load i64, i64* %4, align 8
  %172 = call i64 @GetParent(i64 %171)
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* %2, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %7, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %2, align 8
  %180 = load i64, i64* %4, align 8
  %181 = call i32 @IsChild(i64 %179, i64 %180)
  %182 = load i64, i64* %2, align 8
  %183 = load i64, i64* %4, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %182, i64 %183)
  br i1 true, label %185, label %195

185:                                              ; preds = %161
  %186 = load i64, i64* %4, align 8
  %187 = load i32, i32* @GA_PARENT, align 4
  %188 = call i64 @pGetAncestor(i64 %186, i32 %187)
  store i64 %188, i64* %7, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* %2, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i64, i64* %7, align 8
  %194 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %193)
  br label %195

195:                                              ; preds = %185, %161
  %196 = load i64, i64* %4, align 8
  %197 = load i32, i32* @GW_OWNER, align 4
  %198 = call i64 @GetWindow(i64 %196, i32 %197)
  store i64 %198, i64* %7, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load i64, i64* %7, align 8
  %204 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %203)
  %205 = load i64, i64* %5, align 8
  %206 = call i64 @GetParent(i64 %205)
  store i64 %206, i64* %7, align 8
  %207 = load i64, i64* %7, align 8
  %208 = load i64, i64* %3, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load i64, i64* %7, align 8
  %212 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %211)
  %213 = load i64, i64* %2, align 8
  %214 = load i64, i64* %5, align 8
  %215 = call i32 @IsChild(i64 %213, i64 %214)
  %216 = load i64, i64* %2, align 8
  %217 = load i64, i64* %5, align 8
  %218 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %216, i64 %217)
  br i1 true, label %219, label %229

219:                                              ; preds = %195
  %220 = load i64, i64* %5, align 8
  %221 = load i32, i32* @GA_PARENT, align 4
  %222 = call i64 @pGetAncestor(i64 %220, i32 %221)
  store i64 %222, i64* %7, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load i64, i64* %3, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %7, align 8
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %219, %195
  %230 = load i64, i64* %5, align 8
  %231 = load i32, i32* @GW_OWNER, align 4
  %232 = call i64 @GetWindow(i64 %230, i32 %231)
  store i64 %232, i64* %7, align 8
  %233 = load i64, i64* %7, align 8
  %234 = icmp ne i64 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = load i64, i64* %7, align 8
  %238 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %237)
  %239 = load i64, i64* %6, align 8
  %240 = call i64 @GetParent(i64 %239)
  store i64 %240, i64* %7, align 8
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* %2, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i64, i64* %7, align 8
  %246 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %245)
  %247 = load i64, i64* %2, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @IsChild(i64 %247, i64 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* %2, align 8
  %254 = load i64, i64* %6, align 8
  %255 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %253, i64 %254)
  br i1 true, label %256, label %266

256:                                              ; preds = %229
  %257 = load i64, i64* %6, align 8
  %258 = load i32, i32* @GA_PARENT, align 4
  %259 = call i64 @pGetAncestor(i64 %257, i32 %258)
  store i64 %259, i64* %7, align 8
  %260 = load i64, i64* %7, align 8
  %261 = call i64 (...) @GetDesktopWindow()
  %262 = icmp eq i64 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i64, i64* %7, align 8
  %265 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %264)
  br label %266

266:                                              ; preds = %256, %229
  %267 = load i64, i64* %6, align 8
  %268 = load i32, i32* @GW_OWNER, align 4
  %269 = call i64 @GetWindow(i64 %267, i32 %268)
  store i64 %269, i64* %7, align 8
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* %2, align 8
  %272 = icmp eq i64 %270, %271
  %273 = zext i1 %272 to i32
  %274 = load i64, i64* %7, align 8
  %275 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %274)
  %276 = call i32 (...) @flush_sequence()
  %277 = load i64, i64* %2, align 8
  %278 = load i64, i64* %3, align 8
  %279 = load i64, i64* %4, align 8
  %280 = load i64, i64* %5, align 8
  %281 = load i64, i64* %6, align 8
  %282 = call i32 @trace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %277, i64 %278, i64 %279, i64 %280, i64 %281)
  %283 = load i64, i64* %6, align 8
  %284 = call i32 @SetCapture(i64 %283)
  %285 = call i64 (...) @GetCapture()
  store i64 %285, i64* %7, align 8
  %286 = load i64, i64* %7, align 8
  %287 = load i64, i64* %6, align 8
  %288 = icmp eq i64 %286, %287
  %289 = zext i1 %288 to i32
  %290 = load i64, i64* %7, align 8
  %291 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %290)
  %292 = load i32, i32* @TRUE, align 4
  store i32 %292, i32* @test_DestroyWindow_flag, align 4
  %293 = load i64, i64* %2, align 8
  %294 = call i32 @DestroyWindow(i64 %293)
  store i32 %294, i32* %1, align 4
  %295 = load i32, i32* %1, align 4
  %296 = call i64 (...) @GetLastError()
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %296)
  %298 = load i32, i32* @FALSE, align 4
  store i32 %298, i32* @test_DestroyWindow_flag, align 4
  %299 = load i32, i32* @destroy_window_with_children, align 4
  %300 = load i32, i32* @FALSE, align 4
  %301 = call i32 @ok_sequence(i32 %299, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %300)
  %302 = load i64, i64* %2, align 8
  %303 = call i32 @IsWindow(i64 %302)
  %304 = icmp ne i32 %303, 0
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i32 (i32, i8*, ...) @ok(i32 %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %308 = load i64, i64* %3, align 8
  %309 = call i32 @IsWindow(i64 %308)
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = call i32 (i32, i8*, ...) @ok(i32 %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %314 = load i64, i64* %4, align 8
  %315 = call i32 @IsWindow(i64 %314)
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %320 = load i64, i64* %5, align 8
  %321 = call i32 @IsWindow(i64 %320)
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %326 = load i64, i64* %6, align 8
  %327 = call i32 @IsWindow(i64 %326)
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %332 = call i64 (...) @GetCapture()
  store i64 %332, i64* %7, align 8
  %333 = load i64, i64* %7, align 8
  %334 = icmp ne i64 %333, 0
  %335 = xor i1 %334, true
  %336 = zext i1 %335 to i32
  %337 = load i64, i64* %7, align 8
  %338 = call i32 (i32, i8*, ...) @ok(i32 %336, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %337)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GetDesktopWindow(...) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsChild(i64, i64) #1

declare dso_local i64 @pGetAncestor(i64, i32) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i64 @SetParent(i64, i64) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @trace(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @IsWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
