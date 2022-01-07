; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_CheckValidSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_CheckValidSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@BIF_BROWSEFORCOMPUTER = common dso_local global i32 0, align 4
@PT_COMP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BIF_RETURNFSANCESTORS = common dso_local global i32 0, align 4
@SFGAO_FILESYSANCESTOR = common dso_local global i32 0, align 4
@SFGAO_FILESYSTEM = common dso_local global i32 0, align 4
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@BIF_RETURNONLYFSDIRS = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_NEW_FOLDER = common dso_local global i32 0, align 4
@BFFM_ENABLEOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @BrsFolder_CheckValidSelection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BrsFolder_CheckValidSelection(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BIF_BROWSEFORCOMPUTER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PT_COMP, align 4
  %26 = call i32 @PIDLIsType(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %23, %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BIF_RETURNFSANCESTORS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load i32, i32* @SFGAO_FILESYSANCESTOR, align 4
  %39 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @IShellFolder_GetAttributesOf(i32 %43, i32 1, i32* %45, i32* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SFGAO_FILESYSANCESTOR, align 4
  %53 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* @SFGAO_FOLDER, align 4
  %62 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @IShellFolder_GetAttributesOf(i32 %66, i32 1, i32* %68, i32* %8)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SFGAO_FOLDER, align 4
  %76 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @SFGAO_FOLDER, align 4
  %80 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %81 = or i32 %79, %80
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %73, %60
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BIF_RETURNONLYFSDIRS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %83
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_NEW_FOLDER, align 4
  %97 = call i32 @GetDlgItem(i32 %95, i32 %96)
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @EnableWindow(i32 %97, i32 %98)
  br label %108

100:                                              ; preds = %73
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_NEW_FOLDER, align 4
  %105 = call i32 @GetDlgItem(i32 %103, i32 %104)
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @EnableWindow(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BFFM_ENABLEOK, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @SendMessageW(i32 %111, i32 %112, i32 0, i32 %113)
  ret void
}

declare dso_local i32 @PIDLIsType(i32, i32) #1

declare dso_local i32 @IShellFolder_GetAttributesOf(i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
