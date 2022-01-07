; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IShellFolderView.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_IShellFolderView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@IID_IShellView = common dso_local global i32 0, align 4
@IID_IShellFolderView = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"IShellView doesn't provide IShellFolderView on this platform\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IShellFolderView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IShellFolderView() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @SHGetDesktopFolder(i32** %2)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @S_OK, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32** %3 to i8**
  %16 = call i32 @IShellFolder_CreateViewObject(i32* %14, i32* null, i32* @IID_IShellView, i8** %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = bitcast i32** %1 to i8**
  %25 = call i32 @IShellView_QueryInterface(i32* %23, i32* @IID_IShellFolderView, i8** %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %0
  %30 = call i32 @win_skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @IShellView_Release(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @IShellFolder_Release(i32* %33)
  br label %125

35:                                               ; preds = %0
  %36 = call i32* (...) @IDataObjectImpl_Construct()
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @IShellFolderView_MoveIcons(i32* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @E_NOTIMPL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %35
  %51 = phi i1 [ true, %35 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @IDataObject_Release(i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @IShellFolderView_SetRedraw(i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @IShellFolderView_QuerySupport(i32* %66, i32* null)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 -559038737, i32* %5, align 4
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @IShellFolderView_QuerySupport(i32* %74, i32* %5)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @S_OK, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, -559038737
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 -559038737, i32* %5, align 4
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @IShellFolderView_RemoveObject(i32* %87, i32* null, i32* %5)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %50
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @E_FAIL, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %92, %50
  %97 = phi i1 [ true, %50 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, -559038737
  %110 = zext i1 %109 to i32
  %111 = call i64 @broken(i32 %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %107, %104
  %114 = phi i1 [ true, %104 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %96
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IShellFolderView_Release(i32* %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @IShellView_Release(i32* %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @IShellFolder_Release(i32* %123)
  br label %125

125:                                              ; preds = %118, %29
  ret void
}

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IShellFolder_CreateViewObject(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IShellView_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IShellView_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i32* @IDataObjectImpl_Construct(...) #1

declare dso_local i32 @IShellFolderView_MoveIcons(i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

declare dso_local i32 @IShellFolderView_SetRedraw(i32*, i32) #1

declare dso_local i32 @IShellFolderView_QuerySupport(i32*, i32*) #1

declare dso_local i32 @IShellFolderView_RemoveObject(i32*, i32*, i32*) #1

declare dso_local i32 @IShellFolderView_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
