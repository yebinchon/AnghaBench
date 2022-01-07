; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_removeFromTree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_removeFromTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@S_OK = common dso_local global i64 0, align 8
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @removeFromTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @removeFromTree(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @StorageBaseImpl_ReadDirEntry(i32* %15, i64 %16, %struct.TYPE_6__* %8)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %12, align 8
  store i64 %22, i64* %4, align 8
  br label %113

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @findTreeParent(i32* %24, i64 %25, i32 %27, %struct.TYPE_6__* %9, i64* %10, i32* %11)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %4, align 8
  br label %113

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DIRENTRY_NULL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @setEntryLink(%struct.TYPE_6__* %9, i32 %40, i64 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @StorageBaseImpl_WriteDirEntry(i32* %44, i64 %45, %struct.TYPE_6__* %9)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @FAILED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %4, align 8
  br label %113

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DIRENTRY_NULL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %78, %57
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i64 @StorageBaseImpl_ReadDirEntry(i32* %61, i64 %62, %struct.TYPE_6__* %14)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @FAILED(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %4, align 8
  br label %113

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DIRENTRY_NULL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DIRENTRY_NULL, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %60, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %13, align 8
  %89 = call i64 @StorageBaseImpl_WriteDirEntry(i32* %87, i64 %88, %struct.TYPE_6__* %14)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i64 @FAILED(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %4, align 8
  br label %113

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %52
  br label %111

97:                                               ; preds = %34
  %98 = load i32, i32* %11, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @setEntryLink(%struct.TYPE_6__* %9, i32 %98, i64 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @StorageBaseImpl_WriteDirEntry(i32* %102, i64 %103, %struct.TYPE_6__* %9)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @FAILED(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %4, align 8
  br label %113

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %108, %93, %67, %50, %32, %21
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

declare dso_local i64 @StorageBaseImpl_ReadDirEntry(i32*, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @findTreeParent(i32*, i64, i32, %struct.TYPE_6__*, i64*, i32*) #1

declare dso_local i32 @setEntryLink(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i64 @StorageBaseImpl_WriteDirEntry(i32*, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
