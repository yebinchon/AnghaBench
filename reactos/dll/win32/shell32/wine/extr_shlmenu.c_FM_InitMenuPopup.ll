; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_InitMenuPopup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_InitMenuPopup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 (i64, i32*)* }

@SFGAO_FOLDER = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@MIM_MENUDATA = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"menudata corrupt: %p %u\0A\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@bAbortInit = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@ILGDN_FORPARSING = common dso_local global i32 0, align 4
@FM_BLANK_ICON = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@SHCONTF_FOLDERS = common dso_local global i32 0, align 4
@SHCONTF_NONFOLDERS = common dso_local global i32 0, align 4
@FM_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"enter callback\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"leave callback\0A\00", align 1
@FM_InitMenuPopup.szEmpty = internal constant [8 x i8] c"(empty)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @FM_InitMenuPopup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FM_InitMenuPopup(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i64, i32*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_7__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %27 = load i32, i32* @SFGAO_FOLDER, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 24, i32* %35, align 8
  %36 = load i8*, i8** @MIM_MENUDATA, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @GetMenuInfo(i32 %38, %struct.TYPE_7__* %17)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %226

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %18, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 24
  br i1 %53, label %54, label %59

54:                                               ; preds = %49, %43
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %55, i32 %57)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %226

59:                                               ; preds = %49
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %226

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  br label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i64 [ %69, %68 ], [ %73, %70 ]
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %226

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32 (i64, i32*)*, i32 (i64, i32*)** %87, align 8
  store i32 (i64, i32*)* %88, i32 (i64, i32*)** %11, align 8
  %89 = load i32, i32* @FALSE, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @SetMenuInfo(i32 %92, %struct.TYPE_7__* %17)
  %94 = call i32 @SHGetDesktopFolder(i32** %6)
  %95 = call i64 @SUCCEEDED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %207

97:                                               ; preds = %79
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %12, align 8
  %100 = bitcast i32** %7 to i32*
  %101 = call i32 @IShellFolder_BindToObject(i32* %98, i64 %99, i32 0, i32* @IID_IShellFolder, i32* %100)
  %102 = call i64 @SUCCEEDED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %204

104:                                              ; preds = %97
  store i32* null, i32** %20, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @IShellFolder_EnumObjects(i32* %105, i32 0, i32 %106, i32** %20)
  %108 = call i64 @SUCCEEDED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %201

110:                                              ; preds = %104
  store i32* null, i32** %21, align 8
  br label %111

111:                                              ; preds = %195, %110
  %112 = load i32, i32* @bAbortInit, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* @S_OK, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = call i64 @IEnumIDList_Next(i32* %116, i32 1, i32** %21, i32* %22)
  %118 = icmp eq i64 %115, %117
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi i1 [ false, %111 ], [ %118, %114 ]
  br i1 %120, label %121, label %198

121:                                              ; preds = %119
  %122 = load i32*, i32** %6, align 8
  %123 = bitcast i32** %21 to i64*
  %124 = call i32 @IShellFolder_GetAttributesOf(i32* %122, i32 1, i64* %123, i32* %8)
  %125 = call i64 @SUCCEEDED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %121
  %128 = load i32*, i32** %21, align 8
  %129 = load i32, i32* @ILGDN_FORPARSING, align 4
  %130 = call i32 @ILGetDisplayNameExW(i32* null, i32* %128, i8* %31, i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** %21, align 8
  %133 = load i32, i32* @FALSE, align 4
  %134 = call i32 @PidlToSicIndex(i32* %131, i32* %132, i32 %133, i32 0, i32* %16)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* @FM_BLANK_ICON, align 4
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %136, %127
  %139 = load i32, i32* @SFGAO_FOLDER, align 4
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %138
  %144 = call i32 (...) @CreatePopupMenu()
  store i32 %144, i32* %25, align 4
  %145 = call i32 (...) @GetProcessHeap()
  %146 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %147 = call %struct.TYPE_8__* @HeapAlloc(i32 %145, i32 %146, i32 4)
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %23, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i32*, i32** %21, align 8
  %150 = call i64 @ILCombine(i64 %148, i32* %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* @SHCONTF_FOLDERS, align 4
  %154 = load i32, i32* @SHCONTF_NONFOLDERS, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 24, i32* %158, align 8
  %159 = load i8*, i8** @MIM_MENUDATA, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i8* %159, i8** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %162 = ptrtoint %struct.TYPE_8__* %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i64 %162, i64* %163, align 8
  %164 = load i32, i32* %25, align 4
  %165 = call i32 @SetMenuInfo(i32 %164, %struct.TYPE_7__* %24)
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* @FM_DEFAULT_HEIGHT, align 4
  %171 = call i32 @FileMenu_AppendItemW(i32 %166, i8* %31, i32 %167, i32 %168, i32 %169, i32 %170)
  br label %184

172:                                              ; preds = %138
  %173 = call i64* @PathFindExtensionW(i8* %31)
  store i64* %173, i64** %26, align 8
  %174 = load i64*, i64** %26, align 8
  %175 = icmp ne i64* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i64*, i64** %26, align 8
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %176, %172
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @FM_DEFAULT_HEIGHT, align 4
  %183 = call i32 @FileMenu_AppendItemW(i32 %179, i8* %31, i32 %180, i32 %181, i32 0, i32 %182)
  br label %184

184:                                              ; preds = %178, %143
  br label %185

185:                                              ; preds = %184, %121
  %186 = load i32 (i64, i32*)*, i32 (i64, i32*)** %11, align 8
  %187 = icmp ne i32 (i64, i32*)* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32 (i64, i32*)*, i32 (i64, i32*)** %11, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i32*, i32** %21, align 8
  %193 = call i32 %190(i64 %191, i32* %192)
  %194 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %195

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %111

198:                                              ; preds = %119
  %199 = load i32*, i32** %20, align 8
  %200 = call i32 @IEnumIDList_Release(i32* %199)
  br label %201

201:                                              ; preds = %198, %104
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @IShellFolder_Release(i32* %202)
  br label %204

204:                                              ; preds = %201, %97
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @IShellFolder_Release(i32* %205)
  br label %207

207:                                              ; preds = %204, %79
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @GetMenuItemCount(i32 %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @FM_BLANK_ICON, align 4
  %215 = load i32, i32* @FM_DEFAULT_HEIGHT, align 4
  %216 = call i32 @FileMenu_AppendItemW(i32 %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FM_InitMenuPopup.szEmpty, i64 0, i64 0), i32 %213, i32 %214, i32 0, i32 %215)
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %219

219:                                              ; preds = %211, %207
  %220 = load i32, i32* @TRUE, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @SetMenuInfo(i32 %223, %struct.TYPE_7__* %17)
  %225 = load i32, i32* %15, align 4
  store i32 %225, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %226

226:                                              ; preds = %219, %78, %64, %54, %41
  %227 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @GetMenuInfo(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ERR(i8*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @SetMenuInfo(i32, %struct.TYPE_7__*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @IShellFolder_BindToObject(i32*, i64, i32, i32*, i32*) #2

declare dso_local i32 @IShellFolder_EnumObjects(i32*, i32, i32, i32**) #2

declare dso_local i64 @IEnumIDList_Next(i32*, i32, i32**, i32*) #2

declare dso_local i32 @IShellFolder_GetAttributesOf(i32*, i32, i64*, i32*) #2

declare dso_local i32 @ILGetDisplayNameExW(i32*, i32*, i8*, i32) #2

declare dso_local i32 @PidlToSicIndex(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @CreatePopupMenu(...) #2

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @ILCombine(i64, i32*) #2

declare dso_local i32 @FileMenu_AppendItemW(i32, i8*, i32, i32, i32, i32) #2

declare dso_local i64* @PathFindExtensionW(i8*) #2

declare dso_local i32 @IEnumIDList_Release(i32*) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

declare dso_local i64 @GetMenuItemCount(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
