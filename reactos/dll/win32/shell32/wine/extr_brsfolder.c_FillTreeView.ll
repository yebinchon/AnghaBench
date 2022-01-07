; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_FillTreeView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_FillTreeView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%p %p %p %p\0A\00", align 1
@IDC_WAIT = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@SFGAO_HASSUBFOLDER = common dso_local global i32 0, align 4
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@IID_IShellFolder = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i32, i32*)* @FillTreeView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillTreeView(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @GetParent(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %23, i32* %24, i32 %25, i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %116

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @SetCapture(i32 %32)
  %34 = load i64, i64* @IDC_WAIT, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @LoadCursorA(i32 0, i32 %35)
  %37 = call i32 @SetCursor(i32 %36)
  br label %38

38:                                               ; preds = %104, %31
  %39 = load i64, i64* @S_OK, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @IEnumIDList_Next(i32* %40, i32 1, i32** %11, i32* %12)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %38
  %44 = load i32, i32* @SFGAO_HASSUBFOLDER, align 4
  %45 = load i32, i32* @SFGAO_FOLDER, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32** %11 to i32*
  %49 = call i32 @IShellFolder_GetAttributesOf(i32* %47, i32 1, i32* %48, i32* %15)
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @SFGAO_FOLDER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %43
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = bitcast i32** %17 to i32*
  %58 = call i64 @IShellFolder_BindToObject(i32* %55, i32* %56, i32* null, i32* @IID_IShellFolder, i32* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @SUCCEEDED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BrowseFlagsToSHCONTF(i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @IShellFolder_EnumObjects(i32* %69, i32 %70, i32 %71, i32** %16)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %62
  %77 = load i32*, i32** %16, align 8
  %78 = call i64 @IEnumIDList_Skip(i32* %77, i32 1)
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @IEnumIDList_Reset(i32* %82)
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %76
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @IEnumIDList_Release(i32* %87)
  store i32* null, i32** %16, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @IShellFolder_Release(i32* %91)
  br label %93

93:                                               ; preds = %90, %54
  br label %94

94:                                               ; preds = %93, %43
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @InsertTreeViewItem(%struct.TYPE_6__* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @SHFree(i32* %105)
  store i32* null, i32** %11, align 8
  br label %38

107:                                              ; preds = %38
  br label %108

108:                                              ; preds = %107, %103
  %109 = call i32 (...) @ReleaseCapture()
  %110 = load i64, i64* @IDC_ARROW, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @LoadCursorW(i32 0, i32 %111)
  %113 = call i32 @SetCursor(i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @SHFree(i32* %114)
  br label %116

116:                                              ; preds = %108, %30
  ret void
}

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @SetCapture(i32) #1

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursorA(i32, i32) #1

declare dso_local i64 @IEnumIDList_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @IShellFolder_GetAttributesOf(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IShellFolder_BindToObject(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @BrowseFlagsToSHCONTF(i32) #1

declare dso_local i64 @IShellFolder_EnumObjects(i32*, i32, i32, i32**) #1

declare dso_local i64 @IEnumIDList_Skip(i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IEnumIDList_Reset(i32*) #1

declare dso_local i32 @IEnumIDList_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i32 @InsertTreeViewItem(%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SHFree(i32*) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @LoadCursorW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
