; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, i64, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@szBrowseFolderInfo = common dso_local global i32 0, align 4
@BIF_NEWDIALOGSTYLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"flags BIF_NEWDIALOGSTYLE partially implemented\0A\00", align 1
@SUPPORTEDFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"flags %x not implemented\0A\00", align 1
@g_layout_info = common dso_local global i32 0, align 4
@LAYOUT_INFO_COUNT = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_TITLE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@BIF_STATUSTEXT = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_STATUS = common dso_local global i32 0, align 4
@BIF_NONEWFOLDERBUTTON = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_NEW_FOLDER = common dso_local global i32 0, align 4
@BIF_EDITBOX = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_FOLDER = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_TREEVIEW = common dso_local global i32 0, align 4
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"treeview control missing!\0A\00", align 1
@BFFM_INITIALIZED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*)* @BrsFolder_OnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrsFolder_OnCreate(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @szBrowseFolderInfo, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call i32 @SetPropW(i32 %14, i32 %15, %struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BIF_NEWDIALOGSTYLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SUPPORTEDFLAGS, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SUPPORTEDFLAGS, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BIF_NEWDIALOGSTYLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @g_layout_info, align 4
  %52 = load i32, i32* @LAYOUT_INFO_COUNT, align 4
  %53 = call i32* @LayoutInit(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @GetWindowRect(i32 %56, %struct.TYPE_13__* %6)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %59, %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %77

74:                                               ; preds = %42
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %49
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_TITLE, align 4
  %85 = call i64 @GetDlgItem(i32 %83, i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @SetWindowTextW(i64 %85, i64 %88)
  br label %96

90:                                               ; preds = %77
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_TITLE, align 4
  %93 = call i64 @GetDlgItem(i32 %91, i32 %92)
  %94 = load i32, i32* @SW_HIDE, align 4
  %95 = call i32 @ShowWindow(i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BIF_STATUSTEXT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BIF_NEWDIALOGSTYLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103, %96
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_STATUS, align 4
  %113 = call i64 @GetDlgItem(i32 %111, i32 %112)
  %114 = load i32, i32* @SW_HIDE, align 4
  %115 = call i32 @ShowWindow(i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BIF_NONEWFOLDERBUTTON, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BIF_NEWDIALOGSTYLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %123, %116
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_NEW_FOLDER, align 4
  %133 = call i64 @GetDlgItem(i32 %131, i32 %132)
  %134 = load i32, i32* @SW_HIDE, align 4
  %135 = call i32 @ShowWindow(i64 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @BIF_EDITBOX, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_FOLDER, align 4
  %146 = call i64 @GetDlgItem(i32 %144, i32 %145)
  %147 = load i32, i32* @SW_HIDE, align 4
  %148 = call i32 @ShowWindow(i64 %146, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT, align 4
  %151 = call i64 @GetDlgItem(i32 %149, i32 %150)
  %152 = load i32, i32* @SW_HIDE, align 4
  %153 = call i32 @ShowWindow(i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %143, %136
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_TREEVIEW, align 4
  %157 = call i64 @GetDlgItem(i32 %155, i32 %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %197

164:                                              ; preds = %154
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = call i32 @InitializeTreeView(%struct.TYPE_12__* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BIF_NEWDIALOGSTYLE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %196

173:                                              ; preds = %164
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BIF_EDITBOX, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @GetClientRect(i64 %183, %struct.TYPE_13__* %7)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @HWND_TOP, align 4
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 40
  %194 = load i32, i32* @SWP_NOMOVE, align 4
  %195 = call i32 @SetWindowPos(i64 %187, i32 %188, i32 0, i32 0, i64 %190, i64 %193, i32 %194)
  br label %196

196:                                              ; preds = %180, %173, %164
  br label %199

197:                                              ; preds = %154
  %198 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %196
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @BFFM_INITIALIZED, align 4
  %205 = call i32 @browsefolder_callback(%struct.TYPE_14__* %202, i32 %203, i32 %204, i32 0)
  %206 = load i32, i32* @TRUE, align 4
  ret i32 %206
}

declare dso_local i32 @SetPropW(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32* @LayoutInit(i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @SetWindowTextW(i64, i64) #1

declare dso_local i64 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @InitializeTreeView(%struct.TYPE_12__*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @browsefolder_callback(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
