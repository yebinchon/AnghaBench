; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_InitializeTreeView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_InitializeTreeView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@TVM_SETIMAGELIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SHGetDesktopFolder failed! hr = %08x\0A\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Could not bind to parent shell folder! hr = %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Could not bind to root shell folder! hr = %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not get child iterator! hr = %08x\0A\00", align 1
@TVM_DELETEITEM = common dso_local global i32 0, align 4
@TVI_ROOT = common dso_local global i64 0, align 8
@TVM_EXPAND = common dso_local global i32 0, align 4
@TVE_EXPAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @InitializeTreeView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeTreeView(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %19)
  %21 = call i32 @Shell_GetImageLists(i32* null, i64* %5)
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TVM_SETIMAGELIST, align 4
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @SendMessageW(i32 %27, i32 %28, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @ILClone(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ILRemoveLastID(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ILFindLastID(i32 %37)
  %39 = call i32 @ILClone(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @_ILIsDesktop(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 @SHGetDesktopFolder(i32** %7)
  store i32 %44, i32* %6, align 4
  br label %64

45:                                               ; preds = %32
  %46 = call i32 @SHGetDesktopFolder(i32** %13)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ILFree(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ILFree(i32 %55)
  br label %159

57:                                               ; preds = %45
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %3, align 4
  %60 = bitcast i32** %7 to i32*
  %61 = call i32 @IShellFolder_BindToObject(i32* %58, i32 %59, i32 0, i32* @IID_IShellFolder, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @IShellFolder_Release(i32* %62)
  br label %64

64:                                               ; preds = %57, %43
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ILFree(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @ILFree(i32 %73)
  br label %159

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @_ILIsEmpty(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = bitcast i32** %8 to i32*
  %83 = call i32 @IShellFolder_BindToObject(i32* %80, i32 %81, i32 0, i32* @IID_IShellFolder, i32* %82)
  store i32 %83, i32* %6, align 4
  br label %88

84:                                               ; preds = %75
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @IShellFolder_AddRef(i32* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @IShellFolder_Release(i32* %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @ILFree(i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @ILFree(i32 %99)
  br label %159

101:                                              ; preds = %88
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BrowseFlagsToSHCONTF(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @IShellFolder_EnumObjects(i32* %108, i32 %111, i32 %112, i32** %9)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @FAILED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %101
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @IShellFolder_Release(i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @IShellFolder_Release(i32* %122)
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @ILFree(i32 %124)
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @ILFree(i32 %126)
  br label %159

128:                                              ; preds = %101
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TVM_DELETEITEM, align 4
  %133 = load i64, i64* @TVI_ROOT, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @SendMessageW(i32 %131, i32 %132, i32 0, i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* @TVI_ROOT, align 8
  %142 = call i64 @InsertTreeViewItem(%struct.TYPE_7__* %136, i32* %137, i32 %138, i32 %139, i32* %140, i64 %141)
  store i64 %142, i64* %10, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TVM_EXPAND, align 4
  %147 = load i32, i32* @TVE_EXPAND, align 4
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @SendMessageW(i32 %145, i32 %146, i32 %147, i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @ILFree(i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @ILFree(i32 %153)
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @IShellFolder_Release(i32* %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @IShellFolder_Release(i32* %157)
  br label %159

159:                                              ; preds = %128, %117, %92, %68, %50
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @Shell_GetImageLists(i32*, i64*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @ILClone(i32) #1

declare dso_local i32 @ILRemoveLastID(i32) #1

declare dso_local i32 @ILFindLastID(i32) #1

declare dso_local i64 @_ILIsDesktop(i32) #1

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @ILFree(i32) #1

declare dso_local i32 @IShellFolder_BindToObject(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i32 @_ILIsEmpty(i32) #1

declare dso_local i32 @IShellFolder_AddRef(i32*) #1

declare dso_local i32 @BrowseFlagsToSHCONTF(i32) #1

declare dso_local i32 @IShellFolder_EnumObjects(i32*, i32, i32, i32**) #1

declare dso_local i64 @InsertTreeViewItem(%struct.TYPE_7__*, i32*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
