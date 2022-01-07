; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_InsertTreeViewItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_InsertTreeViewItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i8*, i32*, i8*, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@SHGDN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i64, i64, i32*, i32*)* @InsertTreeViewItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @InsertTreeViewItem(%struct.TYPE_11__* %0, i32* %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %18, align 8
  %24 = load i32, i32* @TVIF_TEXT, align 4
  %25 = load i32, i32* @TVIF_IMAGE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TVIF_PARAM, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TVIF_CHILDREN, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @SHGDN_NORMAL, align 4
  %44 = call i32 @GetName(i32* %41, i64 %42, i32 %43, i32* %23)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  store i32 1, i32* %19, align 4
  br label %99

47:                                               ; preds = %6
  %48 = call %struct.TYPE_14__* @SHAlloc(i32 4)
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %18, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32* null, i32** %7, align 8
  store i32 1, i32* %19, align 4
  br label %99

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i32* %23, i32** %53, align 8
  %54 = load i32, i32* @MAX_PATH, align 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %57 = ptrtoint %struct.TYPE_14__* %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i64 %57, i64* %58, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @IShellFolder_AddRef(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i8* @ILClone(i64 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i8* @ILCombine(i64 %71, i64 %72)
  br label %77

74:                                               ; preds = %52
  %75 = load i64, i64* %10, align 8
  %76 = call i8* @ILClone(i64 %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i8* [ %73, %70 ], [ %76, %74 ]
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @GetNormalAndSelectedIcons(i8* %86, %struct.TYPE_12__* %14)
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = bitcast %struct.TYPE_12__* %89 to i8*
  %91 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 32, i1 false)
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32* %93, i32** %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @TreeView_InsertItem(i32 %97, %struct.TYPE_13__* %15)
  store i32* %98, i32** %7, align 8
  store i32 1, i32* %19, align 4
  br label %99

99:                                               ; preds = %77, %51, %46
  %100 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32*, i32** %7, align 8
  ret i32* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetName(i32*, i64, i32, i32*) #2

declare dso_local %struct.TYPE_14__* @SHAlloc(i32) #2

declare dso_local i32 @IShellFolder_AddRef(i32*) #2

declare dso_local i8* @ILClone(i64) #2

declare dso_local i8* @ILCombine(i64, i64) #2

declare dso_local i32 @GetNormalAndSelectedIcons(i8*, %struct.TYPE_12__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32* @TreeView_InsertItem(i32, %struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
