; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/infinst/extr_infinst.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/infinst/extr_infinst.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FILEOPEN_FILTER = common dso_local global i32 0, align 4
@FILEOPEN_TITLE = common dso_local global i32 0, align 4
@OFN_FILEMUSTEXIST = common dso_local global i32 0, align 4
@OFN_LONGNAMES = common dso_local global i32 0, align 4
@OFN_PATHMUSTEXIST = common dso_local global i32 0, align 4
@FILEOPEN_DEFEXT = common dso_local global i32 0, align 4
@INF_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Command line too long to be a valid file name\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = add nsw i32 %13, 32
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.TYPE_10__, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.TYPE_10__, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = call i32 @ZeroMemory(%struct.TYPE_10__* %10, i32 40)
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @ZeroMemory(%struct.TYPE_10__* %25, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 40, i32* %30, align 8
  %31 = load i32, i32* @FILEOPEN_FILTER, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 7
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @FILEOPEN_TITLE, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @OFN_FILEMUSTEXIST, align 4
  %37 = load i32, i32* @OFN_LONGNAMES, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @OFN_PATHMUSTEXIST, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @FILEOPEN_DEFEXT, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %44, align 8
  %45 = mul nuw i64 40, %23
  %46 = udiv i64 %45, 40
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = call i32 @GetOpenFileName(%struct.TYPE_10__* %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %56

53:                                               ; preds = %20
  %54 = load i32, i32* @INF_COMMAND, align 4
  %55 = call i32 @_stprintf(%struct.TYPE_10__* %17, i32 %54, %struct.TYPE_10__* %25)
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %81 [
    i32 0, label %59
  ]

59:                                               ; preds = %56
  br label %79

60:                                               ; preds = %2
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i32 @_tcslen(%struct.TYPE_10__* %63)
  %65 = load i32, i32* @MAX_PATH, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = call i32 @TEXT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @MB_OK, align 4
  %70 = load i32, i32* @MB_ICONERROR, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @MessageBox(i32* null, i32 %68, i32* null, i32 %71)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %81

73:                                               ; preds = %60
  %74 = load i32, i32* @INF_COMMAND, align 4
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = call i32 @_stprintf(%struct.TYPE_10__* %17, i32 %74, %struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %73, %59
  %80 = call i32 @InstallHinfSection(i32* null, i32* null, %struct.TYPE_10__* %17, i32 0)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %67, %56
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @GetOpenFileName(%struct.TYPE_10__*) #2

declare dso_local i32 @_stprintf(%struct.TYPE_10__*, i32, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @_tcslen(%struct.TYPE_10__*) #2

declare dso_local i32 @MessageBox(i32*, i32, i32*, i32) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i32 @InstallHinfSection(i32*, i32*, %struct.TYPE_10__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
