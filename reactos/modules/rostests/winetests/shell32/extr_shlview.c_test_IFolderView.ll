; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IFolderView.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IFolderView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@IID_IShellView = common dso_local global i32 0, align 4
@IID_IFolderView = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"IFolderView not supported by desktop folder\0A\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@E_INVALIDARG = common dso_local global i8* null, align 8
@E_FAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@FVM_ICON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to subclass ListView control\0A\00", align 1
@sequences = common dso_local global %struct.TYPE_10__** null, align 8
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@LISTVIEW_SEQ_INDEX = common dso_local global i64 0, align 8
@empty_seq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"IFolderView::GetSpacing, empty\00", align 1
@FALSE = common dso_local global i32 0, align 4
@folderview_getspacing_seq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"IFolderView::GetSpacing\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@LVM_GETITEMSPACING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"got (%d, %d)\0A\00", align 1
@SVGIO_ALLVIEW = common dso_local global i32 0, align 4
@folderview_getselectionmarked_seq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"IFolderView::GetSelectionMarkedItem\00", align 1
@folderview_getfocused_seq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"IFolderView::GetFocusedItem\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IFolderView2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"IFolderView2 is not supported.\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"hwnd %p still valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IFolderView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IFolderView() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i32, align 4
  %17 = call i8* @SHGetDesktopFolder(i32** %1)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i8*, i8** @S_OK, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = bitcast i32** %4 to i8**
  %26 = call i8* @IShellFolder_CreateViewObject(i32* %24, i32* null, i32* @IID_IShellView, i8** %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** @S_OK, align 8
  %29 = icmp eq i8* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32** %7 to i8**
  %35 = call i8* @IShellView_QueryInterface(i32* %33, i32* @IID_IFolderView, i8** %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** @S_OK, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %0
  %40 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @IShellView_Release(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @IShellFolder_Release(i32* %43)
  br label %344

45:                                               ; preds = %0
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @IFolderView_GetSpacing(i32* %46, %struct.TYPE_8__* null)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** @S_FALSE, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** @S_OK, align 8
  %54 = icmp eq i8* %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @broken(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %51, %45
  %59 = phi i1 [ true, %45 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %11, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @IFolderView_Item(i32* %63, i32 0, i8** %11)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** @E_INVALIDARG, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** @E_FAIL, align 8
  %71 = icmp eq i8* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @broken(i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %68, %58
  %76 = phi i1 [ true, %58 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %11, align 8
  %84 = icmp eq i8* %83, inttoptr (i64 3735928559 to i8*)
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %75
  %89 = phi i1 [ true, %75 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %93 = call i32* (...) @IShellBrowserImpl_Construct()
  store i32* %93, i32** %5, align 8
  %94 = load i32, i32* @FVM_ICON, align 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i64 0, i64* %96, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %9, align 8
  %97 = call i32 @SetRect(i32* %16, i32 0, i32 0, i32 100, i32 100)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i8* @IShellView_CreateViewWindow(i32* %98, i32* null, %struct.TYPE_9__* %3, i32* %99, i32* %16, i8** %9)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** @S_OK, align 8
  %103 = icmp eq i8* %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @IsWindow(i8* %107)
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = call i8* @subclass_listview(i8* %111)
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %88
  %116 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @IShellBrowser_Release(i32* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @IFolderView_Release(i32* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @IShellView_Release(i32* %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @IShellFolder_Release(i32* %123)
  br label %344

125:                                              ; preds = %88
  %126 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %127 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %128 = call i32 @flush_sequences(%struct.TYPE_10__** %126, i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = call i8* @IFolderView_GetSpacing(i32* %129, %struct.TYPE_8__* null)
  store i8* %130, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** @S_OK, align 8
  %133 = icmp eq i8* %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %135)
  %137 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %138 = load i64, i64* @LISTVIEW_SEQ_INDEX, align 8
  %139 = load i32, i32* @empty_seq, align 4
  %140 = load i32, i32* @FALSE, align 4
  %141 = call i32 @ok_sequence(%struct.TYPE_10__** %137, i64 %138, i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %143 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %144 = call i32 @flush_sequences(%struct.TYPE_10__** %142, i32 %143)
  %145 = load i32*, i32** %7, align 8
  %146 = call i8* @IFolderView_GetSpacing(i32* %145, %struct.TYPE_8__* %15)
  store i8* %146, i8** %12, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** @S_OK, align 8
  %149 = icmp eq i8* %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %151)
  %153 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %154 = load i64, i64* @LISTVIEW_SEQ_INDEX, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %153, i64 %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %202

160:                                              ; preds = %125
  %161 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %162 = load i64, i64* @LISTVIEW_SEQ_INDEX, align 8
  %163 = load i32, i32* @folderview_getspacing_seq, align 4
  %164 = load i32, i32* @FALSE, align 4
  %165 = call i32 @ok_sequence(%struct.TYPE_10__** %161, i64 %162, i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ugt i8* %167, null
  %169 = zext i1 %168 to i32
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %171)
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ugt i8* %174, null
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %178)
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* @LVM_GETITEMSPACING, align 4
  %182 = call i64 @SendMessageA(i8* %180, i32 %181, i32 0, i32 0)
  store i64 %182, i64* %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call i8* @LOWORD(i64 %185)
  %187 = icmp eq i8* %184, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %160
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = call i8* @HIWORD(i64 %191)
  %193 = icmp eq i8* %190, %192
  br label %194

194:                                              ; preds = %188, %160
  %195 = phi i1 [ false, %160 ], [ %193, %188 ]
  %196 = zext i1 %195 to i32
  %197 = load i64, i64* %13, align 8
  %198 = call i8* @LOWORD(i64 %197)
  %199 = load i64, i64* %13, align 8
  %200 = call i8* @HIWORD(i64 %199)
  %201 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %198, i8* %200)
  br label %202

202:                                              ; preds = %194, %125
  %203 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %204 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %205 = call i32 @flush_sequences(%struct.TYPE_10__** %203, i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* @SVGIO_ALLVIEW, align 4
  %208 = call i32 @IFolderView_ItemCount(i32* %206, i32 %207, i64* %14)
  %209 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %210 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %211 = call i32 @flush_sequences(%struct.TYPE_10__** %209, i32 %210)
  %212 = load i32*, i32** %7, align 8
  %213 = call i8* @IFolderView_GetSelectionMarkedItem(i32* %212, i64* %13)
  store i8* %213, i8** %12, align 8
  %214 = load i64, i64* %14, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %202
  %217 = load i8*, i8** %12, align 8
  %218 = load i8*, i8** @S_OK, align 8
  %219 = icmp eq i8* %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %221)
  br label %230

223:                                              ; preds = %202
  %224 = load i8*, i8** %12, align 8
  %225 = load i8*, i8** @S_FALSE, align 8
  %226 = icmp eq i8* %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i8*, i8** %12, align 8
  %229 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %223, %216
  %231 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %232 = load i64, i64* @LISTVIEW_SEQ_INDEX, align 8
  %233 = load i32, i32* @folderview_getselectionmarked_seq, align 4
  %234 = load i32, i32* @FALSE, align 4
  %235 = call i32 @ok_sequence(%struct.TYPE_10__** %231, i64 %232, i32 %233, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %237 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %238 = call i32 @flush_sequences(%struct.TYPE_10__** %236, i32 %237)
  %239 = load i32*, i32** %7, align 8
  %240 = call i8* @IFolderView_GetFocusedItem(i32* %239, i64* %13)
  store i8* %240, i8** %12, align 8
  %241 = load i64, i64* %14, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %230
  %244 = load i8*, i8** %12, align 8
  %245 = load i8*, i8** @S_OK, align 8
  %246 = icmp eq i8* %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %248)
  br label %257

250:                                              ; preds = %230
  %251 = load i8*, i8** %12, align 8
  %252 = load i8*, i8** @S_FALSE, align 8
  %253 = icmp eq i8* %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i8*, i8** %12, align 8
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %250, %243
  %258 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @sequences, align 8
  %259 = load i64, i64* @LISTVIEW_SEQ_INDEX, align 8
  %260 = load i32, i32* @folderview_getfocused_seq, align 4
  %261 = load i32, i32* @FALSE, align 4
  %262 = call i32 @ok_sequence(%struct.TYPE_10__** %258, i64 %259, i32 %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %261)
  %263 = load i32*, i32** %7, align 8
  %264 = call i8* @IFolderView_GetFolder(i32* %263, i32* @IID_IShellFolder, i8** null)
  store i8* %264, i8** %12, align 8
  %265 = load i8*, i8** %12, align 8
  %266 = load i8*, i8** @E_POINTER, align 8
  %267 = icmp eq i8* %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i8*, i8** %12, align 8
  %270 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %269)
  %271 = load i32*, i32** %7, align 8
  %272 = bitcast i32** %2 to i8**
  %273 = call i8* @IFolderView_GetFolder(i32* %271, i32* @IID_IShellFolder, i8** %272)
  store i8* %273, i8** %12, align 8
  %274 = load i8*, i8** %12, align 8
  %275 = load i8*, i8** @S_OK, align 8
  %276 = icmp eq i8* %274, %275
  %277 = zext i1 %276 to i32
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %278)
  %280 = load i32*, i32** %1, align 8
  %281 = load i32*, i32** %2, align 8
  %282 = icmp eq i32* %280, %281
  %283 = zext i1 %282 to i32
  %284 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %285 = load i32*, i32** %2, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %257
  %288 = load i32*, i32** %2, align 8
  %289 = call i32 @IShellFolder_Release(i32* %288)
  br label %290

290:                                              ; preds = %287, %257
  %291 = load i32*, i32** %7, align 8
  %292 = bitcast i32** %8 to i8**
  %293 = call i8* @IFolderView_GetFolder(i32* %291, i32* @IID_IUnknown, i8** %292)
  store i8* %293, i8** %12, align 8
  %294 = load i8*, i8** %12, align 8
  %295 = load i8*, i8** @S_OK, align 8
  %296 = icmp eq i8* %294, %295
  %297 = zext i1 %296 to i32
  %298 = load i8*, i8** %12, align 8
  %299 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %298)
  %300 = load i32*, i32** %8, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %290
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 @IUnknown_Release(i32* %303)
  br label %305

305:                                              ; preds = %302, %290
  %306 = load i32*, i32** %7, align 8
  %307 = bitcast i32** %6 to i8**
  %308 = call i8* @IFolderView_QueryInterface(i32* %306, i32* @IID_IFolderView2, i8** %307)
  store i8* %308, i8** %12, align 8
  %309 = load i8*, i8** %12, align 8
  %310 = load i8*, i8** @S_OK, align 8
  %311 = icmp ne i8* %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %305
  %313 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %314

314:                                              ; preds = %312, %305
  %315 = load i32*, i32** %6, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i32*, i32** %6, align 8
  %319 = call i32 @IFolderView2_Release(i32* %318)
  br label %320

320:                                              ; preds = %317, %314
  %321 = load i32*, i32** %4, align 8
  %322 = call i8* @IShellView_DestroyViewWindow(i32* %321)
  store i8* %322, i8** %12, align 8
  %323 = load i8*, i8** %12, align 8
  %324 = load i8*, i8** @S_OK, align 8
  %325 = icmp eq i8* %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i8*, i8** %12, align 8
  %328 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %327)
  %329 = load i8*, i8** %9, align 8
  %330 = call i32 @IsWindow(i8* %329)
  %331 = icmp ne i32 %330, 0
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = load i8*, i8** %9, align 8
  %335 = call i32 (i32, i8*, ...) @ok(i32 %333, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %334)
  %336 = load i32*, i32** %5, align 8
  %337 = call i32 @IShellBrowser_Release(i32* %336)
  %338 = load i32*, i32** %7, align 8
  %339 = call i32 @IFolderView_Release(i32* %338)
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @IShellView_Release(i32* %340)
  %342 = load i32*, i32** %1, align 8
  %343 = call i32 @IShellFolder_Release(i32* %342)
  br label %344

344:                                              ; preds = %320, %115, %39
  ret void
}

declare dso_local i8* @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @IShellFolder_CreateViewObject(i32*, i32*, i32*, i8**) #1

declare dso_local i8* @IShellView_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IShellView_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i8* @IFolderView_GetSpacing(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i8* @IFolderView_Item(i32*, i32, i8**) #1

declare dso_local i32* @IShellBrowserImpl_Construct(...) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @IShellView_CreateViewWindow(i32*, i32*, %struct.TYPE_9__*, i32*, i32*, i8**) #1

declare dso_local i32 @IsWindow(i8*) #1

declare dso_local i8* @subclass_listview(i8*) #1

declare dso_local i32 @IShellBrowser_Release(i32*) #1

declare dso_local i32 @IFolderView_Release(i32*) #1

declare dso_local i32 @flush_sequences(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @ok_sequence(%struct.TYPE_10__**, i64, i32, i8*, i32) #1

declare dso_local i64 @SendMessageA(i8*, i32, i32, i32) #1

declare dso_local i8* @LOWORD(i64) #1

declare dso_local i8* @HIWORD(i64) #1

declare dso_local i32 @IFolderView_ItemCount(i32*, i32, i64*) #1

declare dso_local i8* @IFolderView_GetSelectionMarkedItem(i32*, i64*) #1

declare dso_local i8* @IFolderView_GetFocusedItem(i32*, i64*) #1

declare dso_local i8* @IFolderView_GetFolder(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i8* @IFolderView_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IFolderView2_Release(i32*) #1

declare dso_local i8* @IShellView_DestroyViewWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
