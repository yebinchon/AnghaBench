; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_lfn.c_WFFindFirst.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_lfn.c_WFFindFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }

@ATTR_DIR = common dso_local global i64 0, align 8
@ATTR_HS = common dso_local global i64 0, align 8
@FindExInfoStandard = common dso_local global i32 0, align 4
@FindExSearchLimitToDirectories = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ATTR_ARCHIVE = common dso_local global i64 0, align 8
@ATTR_READONLY = common dso_local global i64 0, align 8
@ATTR_NORMAL = common dso_local global i64 0, align 8
@ATTR_REPARSE_POINT = common dso_local global i64 0, align 8
@ATTR_TEMPORARY = common dso_local global i64 0, align 8
@ATTR_COMPRESSED = common dso_local global i64 0, align 8
@ATTR_ENCRYPTED = common dso_local global i64 0, align 8
@ATTR_NOT_INDEXED = common dso_local global i64 0, align 8
@ATTR_USED = common dso_local global i64 0, align 8
@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WFFindFirst(%struct.TYPE_7__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call i32 @Wow64DisableWow64FsRedirection(i32* %10)
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ATTR_DIR, align 8
  %14 = load i64, i64* @ATTR_HS, align 8
  %15 = or i64 %13, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %12, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* @FindExInfoStandard, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* @FindExSearchLimitToDirectories, align 4
  %25 = call i64 @FindFirstFileEx(i64* %20, i32 %21, %struct.TYPE_8__* %23, i32 %24, i32* null, i32 0)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %35

28:                                               ; preds = %3
  %29 = load i64*, i64** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = call i64 @FindFirstFile(i64* %29, %struct.TYPE_8__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i64 (...) @GetLastError()
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* @ATTR_ARCHIVE, align 8
  %50 = load i64, i64* @ATTR_READONLY, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @ATTR_NORMAL, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @ATTR_REPARSE_POINT, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @ATTR_TEMPORARY, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @ATTR_COMPRESSED, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* @ATTR_ENCRYPTED, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* @ATTR_NOT_INDEXED, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* @ATTR_USED, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, %66
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @Wow64RevertWow64FsRedirection(i32 %72)
  %74 = load i64*, i64** %6, align 8
  %75 = call i32 @lstrlen(i64* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i64*, i64** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  store i64* %80, i64** %9, align 8
  br label %81

81:                                               ; preds = %86, %48
  %82 = load i64, i64* @CHAR_BACKSLASH, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 -1
  store i64* %88, i64** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %8, align 4
  br label %81

91:                                               ; preds = %81
  %92 = load i32, i32* @MAXPATHLEN, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %91
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = xor i64 %107, -1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = and i64 %108, %112
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = call i64 @WFFindNext(%struct.TYPE_7__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %103
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %4, align 4
  br label %127

121:                                              ; preds = %115
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = call i32 @WFFindClose(%struct.TYPE_7__* %122)
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %91
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %121, %119
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @Wow64DisableWow64FsRedirection(i32*) #1

declare dso_local i64 @FindFirstFileEx(i64*, i32, %struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i64 @FindFirstFile(i64*, %struct.TYPE_8__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @Wow64RevertWow64FsRedirection(i32) #1

declare dso_local i32 @lstrlen(i64*) #1

declare dso_local i64 @WFFindNext(%struct.TYPE_7__*) #1

declare dso_local i32 @WFFindClose(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
