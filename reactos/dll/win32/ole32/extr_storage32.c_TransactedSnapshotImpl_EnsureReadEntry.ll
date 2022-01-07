; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_EnsureReadEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_EnsureReadEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @TransactedSnapshotImpl_EnsureReadEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactedSnapshotImpl_EnsureReadEntry(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @S_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %116, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @StorageBaseImpl_ReadDirEntry(i32 %19, i32 %26, %struct.TYPE_10__* %6)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DIRENTRY_NULL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_9__* %37, i64 %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DIRENTRY_NULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %36
  br label %50

50:                                               ; preds = %49, %31, %16
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @SUCCEEDED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DIRENTRY_NULL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_9__* %60, i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DIRENTRY_NULL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %59
  br label %73

73:                                               ; preds = %72, %54, %50
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @SUCCEEDED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DIRENTRY_NULL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_9__* %83, i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DIRENTRY_NULL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %82
  br label %96

96:                                               ; preds = %95, %77, %73
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @SUCCEEDED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = call i32 @memcpy(i32* %106, %struct.TYPE_10__* %6, i32 24)
  %108 = load i64, i64* @TRUE, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %100, %96
  br label %116

116:                                              ; preds = %115, %2
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @StorageBaseImpl_ReadDirEntry(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i8* @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
