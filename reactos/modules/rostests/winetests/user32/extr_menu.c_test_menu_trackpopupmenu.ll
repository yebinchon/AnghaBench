; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_test_menu_trackpopupmenu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_test_menu_trackpopupmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atomMenuCheckClass = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CreateWindowEx failed with error %d\0A\00", align 1
@GWLP_WNDPROC = common dso_local global i32 0, align 4
@menu_ownerdraw_wnd_proc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"CreateMenu failed with error %d\0A\00", align 1
@gflag_initmenu = common dso_local global i64 0, align 8
@gflag_entermenuloop = common dso_local global i64 0, align 8
@gflag_initmenupopup = common dso_local global i64 0, align 8
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"TrackPopupMenu%s should have failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Ex\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_INVALID_MENU_HANDLE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"TrackPopupMenu%s error got %u expected %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"got unexpected message(s)%s%s%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" WM_INITMENUPOPUP \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"WM_INITMENULOOP \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"WM_INITMENU\00", align 1
@ERROR_INVALID_WINDOW_HANDLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"TrackPopupMenu%s error got %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"TrackPopupMenu%s returned %d expected zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"TrackPopupMenu%s error got %u expected %u or %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"missed expected message(s)%s%s%s\0A\00", align 1
@MF_STRING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"AppendMenA has failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_menu_trackpopupmenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_menu_trackpopupmenu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @atomMenuCheckClass, align 4
  %7 = call i64 @MAKEINTATOM(i32 %6)
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @WS_VISIBLE, align 4
  %10 = load i32, i32* @CW_USEDEFAULT, align 4
  %11 = load i32, i32* @CW_USEDEFAULT, align 4
  %12 = call i32* @CreateWindowExA(i32 0, i32 %8, i32* null, i32 %9, i32 %10, i32 %11, i32 200, i32 200, i32* null, i32* null, i32* null, i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  br label %373

21:                                               ; preds = %0
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @GWLP_WNDPROC, align 4
  %24 = load i64, i64* @menu_ownerdraw_wnd_proc, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @SetWindowLongPtrA(i32* %22, i32 %23, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %367, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %370

30:                                               ; preds = %27
  %31 = call i32* (...) @CreatePopupMenu()
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @DestroyWindow(i32* %40)
  br label %373

42:                                               ; preds = %30
  %43 = call i32 @SetLastError(i32 -559038737)
  store i64 0, i64* @gflag_initmenu, align 8
  store i64 0, i64* @gflag_entermenuloop, align 8
  store i64 0, i64* @gflag_initmenupopup, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TPM_RETURNCMD, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @MyTrackPopupMenu(i32 %44, i32* null, i32 %45, i32 100, i32 100, i32* %46, i32* null)
  store i32 %47, i32* %1, align 4
  %48 = call i32 (...) @GetLastError()
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, -559038737
  %64 = zext i1 %63 to i32
  %65 = call i64 @broken(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @NO_ERROR, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @broken(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %67, %61, %42
  %75 = phi i1 [ true, %61 ], [ true, %42 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 %81, i32 %82)
  %84 = load i64, i64* @gflag_initmenupopup, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %74
  %87 = load i64, i64* @gflag_entermenuloop, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @gflag_initmenu, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %89, %86, %74
  %93 = phi i1 [ true, %86 ], [ true, %74 ], [ %91, %89 ]
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* @gflag_initmenupopup, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %100 = load i64, i64* @gflag_entermenuloop, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %104 = load i64, i64* @gflag_initmenu, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %108 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %99, i8* %103, i8* %107)
  %109 = call i32 @SetLastError(i32 -559038737)
  store i64 0, i64* @gflag_initmenu, align 8
  store i64 0, i64* @gflag_entermenuloop, align 8
  store i64 0, i64* @gflag_initmenupopup, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @TPM_RETURNCMD, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @MyTrackPopupMenu(i32 %110, i32* %111, i32 %112, i32 100, i32 100, i32* %113, i32* null)
  store i32 %114, i32* %1, align 4
  %115 = call i32 (...) @GetLastError()
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %1, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %124 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %92
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, -559038737
  %131 = zext i1 %130 to i32
  %132 = call i64 @broken(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @NO_ERROR, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @broken(i32 %138)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %134, %128, %92
  %142 = phi i1 [ true, %128 ], [ true, %92 ], [ %140, %134 ]
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %147, i32 %148, i32 %149)
  %151 = load i64, i64* @gflag_initmenupopup, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %141
  %154 = load i64, i64* @gflag_entermenuloop, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* @gflag_initmenu, align 8
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %156, %153, %141
  %160 = phi i1 [ true, %153 ], [ true, %141 ], [ %158, %156 ]
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* @gflag_initmenupopup, align 8
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %167 = load i64, i64* @gflag_entermenuloop, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %171 = load i64, i64* @gflag_initmenu, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %175 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %166, i8* %170, i8* %174)
  %176 = call i32 @SetLastError(i32 -559038737)
  store i64 0, i64* @gflag_initmenu, align 8
  store i64 0, i64* @gflag_entermenuloop, align 8
  store i64 0, i64* @gflag_initmenupopup, align 8
  %177 = load i32, i32* %4, align 4
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* @TPM_RETURNCMD, align 4
  %180 = call i32 @MyTrackPopupMenu(i32 %177, i32* %178, i32 %179, i32 100, i32 100, i32* null, i32* null)
  store i32 %180, i32* %1, align 4
  %181 = call i32 (...) @GetLastError()
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %1, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %190 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %189)
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @ERROR_INVALID_WINDOW_HANDLE, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %198, i32 %199)
  %201 = load i64, i64* @gflag_initmenupopup, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %159
  %204 = load i64, i64* @gflag_entermenuloop, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* @gflag_initmenu, align 8
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %206, %203, %159
  %210 = phi i1 [ true, %203 ], [ true, %159 ], [ %208, %206 ]
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* @gflag_initmenupopup, align 8
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %217 = load i64, i64* @gflag_entermenuloop, align 8
  %218 = icmp ne i64 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %221 = load i64, i64* @gflag_initmenu, align 8
  %222 = icmp ne i64 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %225 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %216, i8* %220, i8* %224)
  %226 = call i32 @SetLastError(i32 -559038737)
  store i64 0, i64* @gflag_initmenu, align 8
  store i64 0, i64* @gflag_entermenuloop, align 8
  store i64 0, i64* @gflag_initmenupopup, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32*, i32** %2, align 8
  %229 = load i32, i32* @TPM_RETURNCMD, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @MyTrackPopupMenu(i32 %227, i32* %228, i32 %229, i32 100, i32 100, i32* %230, i32* null)
  store i32 %231, i32* %1, align 4
  %232 = call i32 (...) @GetLastError()
  store i32 %232, i32* %3, align 4
  %233 = load i32, i32* %1, align 4
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %240 = load i32, i32* %1, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* %239, i32 %240)
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* @NO_ERROR, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %255, label %245

245:                                              ; preds = %209
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %255, label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %3, align 4
  %251 = icmp eq i32 %250, -559038737
  %252 = zext i1 %251 to i32
  %253 = call i64 @broken(i32 %252)
  %254 = icmp ne i64 %253, 0
  br label %255

255:                                              ; preds = %249, %245, %209
  %256 = phi i1 [ true, %245 ], [ true, %209 ], [ %254, %249 ]
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %262 = load i32, i32* %3, align 4
  %263 = load i32, i32* @NO_ERROR, align 4
  %264 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %265 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* %261, i32 %262, i32 %263, i32 %264)
  %266 = load i64, i64* @gflag_initmenupopup, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %255
  %269 = load i64, i64* @gflag_entermenuloop, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i64, i64* @gflag_initmenu, align 8
  %273 = icmp ne i64 %272, 0
  br label %274

274:                                              ; preds = %271, %268, %255
  %275 = phi i1 [ false, %268 ], [ false, %255 ], [ %273, %271 ]
  %276 = zext i1 %275 to i32
  %277 = load i64, i64* @gflag_initmenupopup, align 8
  %278 = icmp ne i64 %277, 0
  %279 = xor i1 %278, true
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %282 = load i64, i64* @gflag_entermenuloop, align 8
  %283 = icmp ne i64 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %287 = load i64, i64* @gflag_initmenu, align 8
  %288 = icmp ne i64 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %292 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %281, i8* %286, i8* %291)
  %293 = load i32*, i32** %2, align 8
  %294 = load i32, i32* @MF_STRING, align 4
  %295 = call i32 @AppendMenuA(i32* %293, i32 %294, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  store i32 %295, i32* %1, align 4
  %296 = load i32, i32* %1, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %298 = call i32 @SetLastError(i32 -559038737)
  store i64 0, i64* @gflag_initmenu, align 8
  store i64 0, i64* @gflag_entermenuloop, align 8
  store i64 0, i64* @gflag_initmenupopup, align 8
  %299 = load i32, i32* %4, align 4
  %300 = load i32*, i32** %2, align 8
  %301 = load i32, i32* @TPM_RETURNCMD, align 4
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @MyTrackPopupMenu(i32 %299, i32* %300, i32 %301, i32 100, i32 100, i32* %302, i32* null)
  store i32 %303, i32* %1, align 4
  %304 = call i32 (...) @GetLastError()
  store i32 %304, i32* %3, align 4
  %305 = load i32, i32* %1, align 4
  %306 = icmp eq i32 %305, 0
  %307 = zext i1 %306 to i32
  %308 = load i32, i32* %4, align 4
  %309 = icmp ne i32 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %312 = load i32, i32* %1, align 4
  %313 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* %311, i32 %312)
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* @NO_ERROR, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %327, label %317

317:                                              ; preds = %274
  %318 = load i32, i32* %3, align 4
  %319 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %3, align 4
  %323 = icmp eq i32 %322, -559038737
  %324 = zext i1 %323 to i32
  %325 = call i64 @broken(i32 %324)
  %326 = icmp ne i64 %325, 0
  br label %327

327:                                              ; preds = %321, %317, %274
  %328 = phi i1 [ true, %317 ], [ true, %274 ], [ %326, %321 ]
  %329 = zext i1 %328 to i32
  %330 = load i32, i32* %4, align 4
  %331 = icmp ne i32 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %334 = load i32, i32* %3, align 4
  %335 = load i32, i32* @NO_ERROR, align 4
  %336 = load i32, i32* @ERROR_INVALID_MENU_HANDLE, align 4
  %337 = call i32 (i32, i8*, ...) @ok(i32 %329, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* %333, i32 %334, i32 %335, i32 %336)
  %338 = load i64, i64* @gflag_initmenupopup, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %327
  %341 = load i64, i64* @gflag_entermenuloop, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i64, i64* @gflag_initmenu, align 8
  %345 = icmp ne i64 %344, 0
  br label %346

346:                                              ; preds = %343, %340, %327
  %347 = phi i1 [ false, %340 ], [ false, %327 ], [ %345, %343 ]
  %348 = zext i1 %347 to i32
  %349 = load i64, i64* @gflag_initmenupopup, align 8
  %350 = icmp ne i64 %349, 0
  %351 = xor i1 %350, true
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %354 = load i64, i64* @gflag_entermenuloop, align 8
  %355 = icmp ne i64 %354, 0
  %356 = xor i1 %355, true
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %359 = load i64, i64* @gflag_initmenu, align 8
  %360 = icmp ne i64 %359, 0
  %361 = xor i1 %360, true
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %364 = call i32 (i32, i8*, ...) @ok(i32 %348, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %353, i8* %358, i8* %363)
  %365 = load i32*, i32** %2, align 8
  %366 = call i32 @DestroyMenu(i32* %365)
  br label %367

367:                                              ; preds = %346
  %368 = load i32, i32* %4, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %4, align 4
  br label %27

370:                                              ; preds = %27
  %371 = load i32*, i32** %5, align 8
  %372 = call i32 @DestroyWindow(i32* %371)
  br label %373

373:                                              ; preds = %370, %39, %20
  ret void
}

declare dso_local i32* @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @MAKEINTATOM(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetWindowLongPtrA(i32*, i32, i32) #1

declare dso_local i32* @CreatePopupMenu(...) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @MyTrackPopupMenu(i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @AppendMenuA(i32*, i32, i32, i8*) #1

declare dso_local i32 @DestroyMenu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
