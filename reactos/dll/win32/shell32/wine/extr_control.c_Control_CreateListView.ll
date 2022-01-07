; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_CreateListView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_CreateListView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }

@MAX_STRING_LEN = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WC_LISTVIEWW = common dso_local global i32 0, align 4
@LISTVIEW_DEFSTYLE = common dso_local global i32 0, align 4
@LVS_ICON = common dso_local global i32 0, align 4
@IDC_LISTVIEW = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@LVM_SETIMAGELIST = common dso_local global i32 0, align 4
@LVSIL_SMALL = common dso_local global i32 0, align 4
@LVSIL_NORMAL = common dso_local global i32 0, align 4
@LVCF_FMT = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCFMT_LEFT = common dso_local global i32 0, align 4
@shell32_hInstance = common dso_local global i32 0, align 4
@IDS_CPANEL_NAME = common dso_local global i32 0, align 4
@IDS_CPANEL_DESCRIPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @Control_CreateListView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Control_CreateListView(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @MAX_STRING_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GetClientRect(i32 %18, %struct.TYPE_7__* %5)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GetClientRect(i32 %22, %struct.TYPE_7__* %4)
  %24 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %25 = load i32, i32* @WC_LISTVIEWW, align 4
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %27 = load i32, i32* @LISTVIEW_DEFSTYLE, align 4
  %28 = load i32, i32* @LVS_ICON, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  %45 = sub nsw i64 %39, %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @IDC_LISTVIEW, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CreateWindowExW(i32 %24, i32 %25, i32* %26, i32 %29, i32 0, i32 0, i32 %34, i64 %45, i32 %48, i32 %50, i32 %53, i32* null)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %1
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %161

63:                                               ; preds = %1
  %64 = load i32, i32* @SM_CXSMICON, align 4
  %65 = call i32 @GetSystemMetrics(i32 %64)
  %66 = load i32, i32* @SM_CYSMICON, align 4
  %67 = call i32 @GetSystemMetrics(i32 %66)
  %68 = load i32, i32* @ILC_COLOR32, align 4
  %69 = load i32, i32* @ILC_MASK, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @ImageList_Create(i32 %65, i32 %67, i32 %70, i32 1, i32 1)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @SM_CXICON, align 4
  %75 = call i32 @GetSystemMetrics(i32 %74)
  %76 = load i32, i32* @SM_CYICON, align 4
  %77 = call i32 @GetSystemMetrics(i32 %76)
  %78 = load i32, i32* @ILC_COLOR32, align 4
  %79 = load i32, i32* @ILC_MASK, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @ImageList_Create(i32 %75, i32 %77, i32 %80, i32 1, i32 1)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LVM_SETIMAGELIST, align 4
  %88 = load i32, i32* @LVSIL_SMALL, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = call i32 @SendMessageW(i32 %86, i32 %87, i32 %88, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LVM_SETIMAGELIST, align 4
  %98 = load i32, i32* @LVSIL_NORMAL, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = call i32 @SendMessageW(i32 %96, i32 %97, i32 %98, i32 %102)
  %104 = load i32, i32* @LVCF_FMT, align 4
  %105 = load i32, i32* @LVCF_TEXT, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @LVCF_SUBITEM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @LVCF_WIDTH, align 4
  %110 = or i32 %108, %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store i32* %15, i32** %112, align 8
  %113 = load i32, i32* @LVCFMT_LEFT, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %117, %119
  %121 = sdiv i32 %120, 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* @shell32_hInstance, align 4
  %124 = load i32, i32* @IDS_CPANEL_NAME, align 4
  %125 = mul nuw i64 4, %13
  %126 = udiv i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @LoadStringW(i32 %123, i32 %124, i32* %15, i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ListView_InsertColumnW(i32 %131, i32 0, %struct.TYPE_8__* %9)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %136

134:                                              ; preds = %63
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %161

136:                                              ; preds = %63
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %139, %141
  %143 = sdiv i32 %142, 3
  %144 = mul nsw i32 %143, 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %144, i32* %145, align 8
  %146 = load i32, i32* @shell32_hInstance, align 4
  %147 = load i32, i32* @IDS_CPANEL_DESCRIPTION, align 4
  %148 = mul nuw i64 4, %13
  %149 = udiv i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i32 @LoadStringW(i32 %146, i32 %147, i32* %15, i32 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ListView_InsertColumnW(i32 %154, i32 1, %struct.TYPE_8__* %9)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %159

157:                                              ; preds = %136
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %161

159:                                              ; preds = %136
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %161

161:                                              ; preds = %159, %157, %134, %61
  %162 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #3

declare dso_local i32 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32*) #3

declare dso_local i8* @ImageList_Create(i32, i32, i32, i32, i32) #3

declare dso_local i32 @GetSystemMetrics(i32) #3

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #3

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #3

declare dso_local i32 @ListView_InsertColumnW(i32, i32, %struct.TYPE_8__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
