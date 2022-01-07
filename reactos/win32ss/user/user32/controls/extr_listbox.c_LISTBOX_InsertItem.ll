; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_InsertItem.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_InsertItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }

@LB_ERR = common dso_local global i32 0, align 4
@LB_ARRAY_GRANULARITY = common dso_local global i64 0, align 8
@LBN_ERRSPACE = common dso_local global i32 0, align 4
@LB_ERRSPACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODT_LISTBOX = common dso_local global i32 0, align 4
@WM_MEASUREITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[%p]: measure item %d (%s) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ISWIN31 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i64, i32)* @LISTBOX_InsertItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_InsertItem(%struct.TYPE_19__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @LB_ERR, align 4
  store i32 %34, i32* %5, align 4
  br label %254

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = icmp ne %struct.TYPE_18__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %51

42:                                               ; preds = %36
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = call i32 @HeapSize(i32 %43, i32 0, %struct.TYPE_18__* %46)
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 24
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %42, %41
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load i64, i64* @LB_ARRAY_GRANULARITY, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 7
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 24
  %75 = trunc i64 %74 to i32
  %76 = call %struct.TYPE_18__* @HeapReAlloc(i32 %68, i32 0, %struct.TYPE_18__* %71, i32 %75)
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %10, align 8
  br label %84

77:                                               ; preds = %57
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 24
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_18__* @HeapAlloc(i32 %78, i32 0, i32 %82)
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %10, align 8
  br label %84

84:                                               ; preds = %77, %67
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = load i32, i32* @LBN_ERRSPACE, align 4
  %90 = call i32 @SEND_NOTIFICATION(%struct.TYPE_19__* %88, i32 %89)
  %91 = load i32, i32* @LB_ERRSPACE, align 4
  store i32 %91, i32* %5, align 4
  br label %254

92:                                               ; preds = %84
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 7
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %95, align 8
  br label %96

96:                                               ; preds = %92, %51
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i64 %101
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %96
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i64 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 24
  %119 = trunc i64 %118 to i32
  %120 = call i32 @RtlMoveMemory(%struct.TYPE_18__* %110, %struct.TYPE_18__* %111, i32 %119)
  br label %121

121:                                              ; preds = %108, %96
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load i32, i32* @FALSE, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %202

143:                                              ; preds = %121
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GWLP_ID, align 4
  %148 = call i32 @GetWindowLongPtrW(i32 %146, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* @ODT_LISTBOX, align 4
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @WM_MEASUREITEM, align 4
  %172 = load i32, i32* %14, align 4
  %173 = ptrtoint %struct.TYPE_17__* %13 to i32
  %174 = call i32 @SendMessageW(i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %143
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  br label %182

181:                                              ; preds = %143
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi i32 [ %180, %178 ], [ 1, %181 ]
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i64, i64* %8, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %182
  %193 = load i64, i64* %8, align 8
  %194 = call i8* @debugstr_w(i64 %193)
  br label %196

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195, %192
  %197 = phi i8* [ %194, %192 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %195 ]
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189, i8* %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %121
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %204 = call i32 @LISTBOX_UpdateScroll(%struct.TYPE_19__* %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @LISTBOX_InvalidateItems(%struct.TYPE_19__* %205, i32 %206)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %216

212:                                              ; preds = %202
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = load i32, i32* @FALSE, align 4
  %215 = call i32 @LISTBOX_SetCaretIndex(%struct.TYPE_19__* %213, i32 0, i32 %214)
  br label %252

216:                                              ; preds = %202
  %217 = load i64, i64* @ISWIN31, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %216
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %221 = call i32 @IS_MULTISELECT(%struct.TYPE_19__* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %219
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, 1
  %233 = load i32, i32* @TRUE, align 4
  %234 = load i32, i32* @FALSE, align 4
  %235 = call i32 @LISTBOX_SetSelection(%struct.TYPE_19__* %228, i32 %232, i32 %233, i32 %234)
  br label %251

236:                                              ; preds = %219, %216
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp sle i32 %237, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %236
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %242, %236
  br label %251

251:                                              ; preds = %250, %223
  br label %252

252:                                              ; preds = %251, %212
  %253 = load i32, i32* @LB_OKAY, align 4
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %252, %87, %33
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i32 @HeapSize(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_18__* @HeapReAlloc(i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @RtlMoveMemory(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i8*, i32) #1

declare dso_local i8* @debugstr_w(i64) #1

declare dso_local i32 @LISTBOX_UpdateScroll(%struct.TYPE_19__*) #1

declare dso_local i32 @LISTBOX_InvalidateItems(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @LISTBOX_SetCaretIndex(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @IS_MULTISELECT(%struct.TYPE_19__*) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_19__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
