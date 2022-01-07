; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_CreateControls32.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_CreateControls32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" BEGIN\0A\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_EX_NOPARENTNOTIFY = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"control %s %s creation failed\0A\00", align 1
@DS_NOFAILCREATE = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@WM_GETDLGCODE = common dso_local global i32 0, align 4
@DLGC_DEFPUSHBUTTON = common dso_local global i32 0, align 4
@BM_SETSTYLE = common dso_local global i32 0, align 4
@BS_PUSHBUTTON = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" END\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_7__*, i32, i64)* @DIALOG_CreateControls32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DIALOG_CreateControls32(i32* %0, i64 %1, %struct.TYPE_7__* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %15, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_9__* @GETDLGINFO(i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %12, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %6, align 8
  br label %303

29:                                               ; preds = %5
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %299, %260, %29
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %16, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %300

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @DIALOG_GetControl32(i32* %37, %struct.TYPE_8__* %13, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* @WS_POPUP, align 4
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @WS_CHILD, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WS_BORDER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %35
  %57 = load i32, i32* @WS_BORDER, align 4
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %56, %35
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %115

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %73 = or i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WS_CHILD, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MulDiv(i32 %83, i32 %86, i32 4)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @MulDiv(i32 %89, i32 %92, i32 8)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @MulDiv(i32 %95, i32 %98, i32 4)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @MulDiv(i32 %101, i32 %104, i32 8)
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %10, align 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = call i32* @CreateWindowExW(i32 %73, i64 %75, i64 %77, i32 %81, i32 %87, i32 %93, i32 %99, i32 %105, i32* %106, i32 %109, i32 %110, i32* %113)
  store i32* %114, i32** %14, align 8
  br label %233

115:                                              ; preds = %66
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %18, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = call i32 @IS_INTRESOURCE(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* @CP_ACP, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @WideCharToMultiByte(i32 %126, i32 0, i64 %128, i32 -1, i32* null, i32 0, i32* null, i32* null)
  store i32 %129, i32* %19, align 4
  %130 = call i32 (...) @GetProcessHeap()
  %131 = load i32, i32* %19, align 4
  %132 = call i32* @HeapAlloc(i32 %130, i32 0, i32 %131)
  store i32* %132, i32** %17, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load i32, i32* @CP_ACP, align 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @WideCharToMultiByte(i32 %136, i32 0, i64 %138, i32 -1, i32* %139, i32 %140, i32* null, i32* null)
  br label %142

142:                                              ; preds = %135, %125
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i32*, i32** %18, align 8
  %145 = call i32 @IS_INTRESOURCE(i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @CP_ACP, align 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @WideCharToMultiByte(i32 %148, i32 0, i64 %150, i32 -1, i32* null, i32 0, i32* null, i32* null)
  store i32 %151, i32* %20, align 4
  %152 = call i32 (...) @GetProcessHeap()
  %153 = load i32, i32* %20, align 4
  %154 = call i32* @HeapAlloc(i32 %152, i32 0, i32 %153)
  store i32* %154, i32** %18, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load i32, i32* @CP_ACP, align 4
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32*, i32** %18, align 8
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @WideCharToMultiByte(i32 %158, i32 0, i64 %160, i32 -1, i32* %161, i32 %162, i32* null, i32* null)
  br label %164

164:                                              ; preds = %157, %147
  br label %165

165:                                              ; preds = %164, %143
  %166 = load i32*, i32** %17, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %215

168:                                              ; preds = %165
  %169 = load i32*, i32** %18, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %215

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %175 = or i32 %173, %174
  %176 = load i32*, i32** %17, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @WS_CHILD, align 4
  %181 = or i32 %179, %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 10
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @MulDiv(i32 %183, i32 %186, i32 4)
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @MulDiv(i32 %189, i32 %192, i32 8)
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @MulDiv(i32 %195, i32 %198, i32 4)
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @MulDiv(i32 %201, i32 %204, i32 8)
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = load i32, i32* %10, align 4
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i32*
  %214 = call i32* @CreateWindowExA(i32 %175, i32* %176, i32* %177, i32 %181, i32 %187, i32 %193, i32 %199, i32 %205, i32* %206, i32 %209, i32 %210, i32* %213)
  store i32* %214, i32** %14, align 8
  br label %216

215:                                              ; preds = %168, %165
  store i32* null, i32** %14, align 8
  br label %216

216:                                              ; preds = %215, %171
  %217 = load i32*, i32** %17, align 8
  %218 = call i32 @IS_INTRESOURCE(i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = call i32 (...) @GetProcessHeap()
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @HeapFree(i32 %221, i32 0, i32* %222)
  br label %224

224:                                              ; preds = %220, %216
  %225 = load i32*, i32** %18, align 8
  %226 = call i32 @IS_INTRESOURCE(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = call i32 (...) @GetProcessHeap()
  %230 = load i32*, i32** %18, align 8
  %231 = call i32 @HeapFree(i32 %229, i32 0, i32* %230)
  br label %232

232:                                              ; preds = %228, %224
  br label %233

233:                                              ; preds = %232, %69
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = call i32 (...) @GetProcessHeap()
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to i32*
  %242 = call i32 @HeapFree(i32 %238, i32 0, i32* %241)
  br label %243

243:                                              ; preds = %237, %233
  %244 = load i32*, i32** %14, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %263, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @debugstr_w(i64 %248)
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @debugstr_w(i64 %251)
  %253 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %252)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @DS_NOFAILCREATE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %246
  br label %31

261:                                              ; preds = %246
  %262 = load i64, i64* @FALSE, align 8
  store i64 %262, i64* %6, align 8
  br label %303

263:                                              ; preds = %243
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %263
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* @WM_SETFONT, align 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i32 @SendMessageW(i32* %269, i32 %270, i32 %274, i64 0)
  br label %276

276:                                              ; preds = %268, %263
  %277 = load i32*, i32** %14, align 8
  %278 = load i32, i32* @WM_GETDLGCODE, align 4
  %279 = call i32 @SendMessageW(i32* %277, i32 %278, i32 0, i64 0)
  %280 = load i32, i32* @DLGC_DEFPUSHBUTTON, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %276
  %284 = load i32*, i32** %15, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load i32*, i32** %15, align 8
  %288 = load i32, i32* @BM_SETSTYLE, align 4
  %289 = load i32, i32* @BS_PUSHBUTTON, align 4
  %290 = load i64, i64* @FALSE, align 8
  %291 = call i32 @SendMessageW(i32* %287, i32 %288, i32 %289, i64 %290)
  br label %292

292:                                              ; preds = %286, %283
  %293 = load i32*, i32** %14, align 8
  store i32* %293, i32** %15, align 8
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* @GWLP_ID, align 4
  %296 = call i32 @GetWindowLongPtrA(i32* %294, i32 %295)
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %292, %276
  br label %31

300:                                              ; preds = %31
  %301 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %302 = load i64, i64* @TRUE, align 8
  store i64 %302, i64* %6, align 8
  br label %303

303:                                              ; preds = %300, %261, %27
  %304 = load i64, i64* %6, align 8
  ret i64 %304
}

declare dso_local %struct.TYPE_9__* @GETDLGINFO(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @DIALOG_GetControl32(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32* @CreateWindowExW(i32, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @CreateWindowExA(i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i64) #1

declare dso_local i32 @GetWindowLongPtrA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
