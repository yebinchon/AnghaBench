; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_test_MDI_child_stack.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_test_MDI_child_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i64, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"MDI_child_Class_1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MDI child\00", align 1
@CW_USEDEFAULT = common dso_local global i8* null, align 8
@mdi_lParam_test_message = common dso_local global i64 0, align 8
@WM_MDICREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"expected child_1 to be non NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"expected child_2 to be non NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"expected child_3 to be non NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"expected child_4 to be non NULL\0A\00", align 1
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Initial MDI child stack: %p->%p->%p->%p\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Unexpected initial order, should be: %p->%p->%p->%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Activate child next to %p\0A\00", align 1
@WM_MDINEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [75 x i8] c"Broken MDI child stack:\0Aexpected: %p->%p->%p->%p, but got: %p->%p->%p->%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Activate child previous to %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_MDI_child_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MDI_child_stack(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca %struct.TYPE_2__, align 8
  store i64 %0, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = call i32 @GetModuleHandleA(i32 0)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 8
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** @CW_USEDEFAULT, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @CW_USEDEFAULT, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @CW_USEDEFAULT, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @CW_USEDEFAULT, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* @mdi_lParam_test_message, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @WM_MDICREATE, align 4
  %27 = ptrtoint %struct.TYPE_2__* %8 to i32
  %28 = call i64 @SendMessageA(i64 %25, i32 %26, i32 0, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %2, align 8
  %34 = load i32, i32* @WM_MDICREATE, align 4
  %35 = ptrtoint %struct.TYPE_2__* %8 to i32
  %36 = call i64 @SendMessageA(i64 %33, i32 %34, i32 0, i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i64, i64* %2, align 8
  %42 = load i32, i32* @WM_MDICREATE, align 4
  %43 = ptrtoint %struct.TYPE_2__* %8 to i32
  %44 = call i64 @SendMessageA(i64 %41, i32 %42, i32 0, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i64, i64* %2, align 8
  %50 = load i32, i32* @WM_MDICREATE, align 4
  %51 = ptrtoint %struct.TYPE_2__* %8 to i32
  %52 = call i64 @SendMessageA(i64 %49, i32 %50, i32 0, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i64, i64* %2, align 8
  %58 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %59 = call i64 @SendMessageA(i64 %57, i32 %58, i32 0, i32 0)
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store i64 %59, i64* %60, align 16
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %62 = load i64, i64* %61, align 16
  %63 = load i32, i32* @GW_HWNDNEXT, align 4
  %64 = call i64 @GetWindow(i64 %62, i32 %63)
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @GW_HWNDNEXT, align 4
  %69 = call i64 @GetWindow(i64 %67, i32 %68)
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  store i64 %69, i64* %70, align 16
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %72 = load i64, i64* %71, align 16
  %73 = load i32, i32* @GW_HWNDNEXT, align 4
  %74 = call i64 @GetWindow(i64 %72, i32 %73)
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %81 = load i64, i64* %80, align 16
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %77, i64 %79, i64 %81, i64 %83)
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %1
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %96 = load i64, i64* %95, align 16
  %97 = load i64, i64* %4, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %3, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %99, %94, %89, %1
  %105 = phi i1 [ false, %94 ], [ false, %89 ], [ false, %1 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* %3, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %5, align 8
  %113 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %112)
  %114 = load i64, i64* %2, align 8
  %115 = load i32, i32* @WM_MDINEXT, align 4
  %116 = load i64, i64* %5, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @SendMessageA(i64 %114, i32 %115, i32 %117, i32 0)
  %119 = load i64, i64* %2, align 8
  %120 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %121 = call i64 @SendMessageA(i64 %119, i32 %120, i32 0, i32 0)
  %122 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store i64 %121, i64* %122, align 16
  %123 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = load i32, i32* @GW_HWNDNEXT, align 4
  %126 = call i64 @GetWindow(i64 %124, i32 %125)
  %127 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @GW_HWNDNEXT, align 4
  %131 = call i64 @GetWindow(i64 %129, i32 %130)
  %132 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  store i64 %131, i64* %132, align 16
  %133 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = load i32, i32* @GW_HWNDNEXT, align 4
  %136 = call i64 @GetWindow(i64 %134, i32 %135)
  %137 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %139 = load i64, i64* %138, align 16
  %140 = load i64, i64* %4, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %104
  %143 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %149 = load i64, i64* %148, align 16
  %150 = load i64, i64* %3, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %5, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %152, %147, %142, %104
  %158 = phi i1 [ false, %147 ], [ false, %142 ], [ false, %104 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* %5, align 8
  %164 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %165 = load i64, i64* %164, align 16
  %166 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %169 = load i64, i64* %168, align 16
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i64 %160, i64 %161, i64 %162, i64 %163, i64 %165, i64 %167, i64 %169, i64 %171)
  %173 = load i64, i64* %3, align 8
  %174 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %173)
  %175 = load i64, i64* %2, align 8
  %176 = load i32, i32* @WM_MDINEXT, align 4
  %177 = load i64, i64* %3, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i64 @SendMessageA(i64 %175, i32 %176, i32 %178, i32 1)
  %180 = load i64, i64* %2, align 8
  %181 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %182 = call i64 @SendMessageA(i64 %180, i32 %181, i32 0, i32 0)
  %183 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store i64 %182, i64* %183, align 16
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %185 = load i64, i64* %184, align 16
  %186 = load i32, i32* @GW_HWNDNEXT, align 4
  %187 = call i64 @GetWindow(i64 %185, i32 %186)
  %188 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  store i64 %187, i64* %188, align 8
  %189 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @GW_HWNDNEXT, align 4
  %192 = call i64 @GetWindow(i64 %190, i32 %191)
  %193 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  store i64 %192, i64* %193, align 16
  %194 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %195 = load i64, i64* %194, align 16
  %196 = load i32, i32* @GW_HWNDNEXT, align 4
  %197 = call i64 @GetWindow(i64 %195, i32 %196)
  %198 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  store i64 %197, i64* %198, align 8
  %199 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %200 = load i64, i64* %199, align 16
  %201 = load i64, i64* %6, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %157
  %204 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %4, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %210 = load i64, i64* %209, align 16
  %211 = load i64, i64* %3, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %5, align 8
  %217 = icmp eq i64 %215, %216
  br label %218

218:                                              ; preds = %213, %208, %203, %157
  %219 = phi i1 [ false, %208 ], [ false, %203 ], [ false, %157 ], [ %217, %213 ]
  %220 = zext i1 %219 to i32
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %4, align 8
  %223 = load i64, i64* %3, align 8
  %224 = load i64, i64* %5, align 8
  %225 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %230 = load i64, i64* %229, align 16
  %231 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i64 %221, i64 %222, i64 %223, i64 %224, i64 %226, i64 %228, i64 %230, i64 %232)
  %234 = load i64, i64* %3, align 8
  %235 = call i32 @DestroyWindow(i64 %234)
  %236 = load i64, i64* %4, align 8
  %237 = call i32 @DestroyWindow(i64 %236)
  %238 = load i64, i64* %5, align 8
  %239 = call i32 @DestroyWindow(i64 %238)
  %240 = load i64, i64* %6, align 8
  %241 = call i32 @DestroyWindow(i64 %240)
  ret void
}

declare dso_local i32 @GetModuleHandleA(i32) #1

declare dso_local i64 @SendMessageA(i64, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
