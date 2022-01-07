; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_insertIntoTree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_insertIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@DIRENTRY_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@STG_E_FILEALREADYEXISTS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @insertIntoTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insertIntoTree(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %16, i64 %17, %struct.TYPE_4__* %9)
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %19, i64 %20, %struct.TYPE_4__* %8)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DIRENTRY_NULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %3
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %30, i64 %32, %struct.TYPE_4__* %8)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %91, %26
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %96

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @entryNameCmp(i32 %45, i32 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @DIRENTRY_NULL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %56, i64 %57, %struct.TYPE_4__* %8)
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %11, align 8
  br label %67

60:                                               ; preds = %51
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @StorageBaseImpl_WriteDirEntry(i32* %63, i64 %64, %struct.TYPE_4__* %8)
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %60, %55
  br label %91

68:                                               ; preds = %43
  %69 = load i64, i64* %15, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @DIRENTRY_NULL, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %76, i64 %77, %struct.TYPE_4__* %8)
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %11, align 8
  br label %87

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %81, i64* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @StorageBaseImpl_WriteDirEntry(i32* %83, i64 %84, %struct.TYPE_4__* %8)
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %80, %75
  br label %90

88:                                               ; preds = %68
  %89 = load i32, i32* @STG_E_FILEALREADYEXISTS, align 4
  store i32 %89, i32* %4, align 4
  br label %105

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %67
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %12, align 8
  br label %39

96:                                               ; preds = %39
  br label %103

97:                                               ; preds = %3
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @StorageBaseImpl_WriteDirEntry(i32* %100, i64 %101, %struct.TYPE_4__* %8)
  br label %103

103:                                              ; preds = %97, %96
  %104 = load i32, i32* @S_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %88
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @StorageBaseImpl_ReadDirEntry(i32*, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @entryNameCmp(i32, i32) #1

declare dso_local i32 @StorageBaseImpl_WriteDirEntry(i32*, i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
