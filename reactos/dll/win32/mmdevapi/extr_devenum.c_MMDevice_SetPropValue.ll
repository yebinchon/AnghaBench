; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevice_SetPropValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevice_SetPropValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@propkey_formatW = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Blob %p %u\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unhandled type %u\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Writing %s returned %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__*)* @MMDevice_SetPropValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDevice_SetPropValue(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca [80 x i32], align 16
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MMDevPropStore_OpenPropKey(%struct.TYPE_14__* %17, i32 %18, i32* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %151

25:                                               ; preds = %4
  %26 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %27 = load i32, i32* @propkey_formatW, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wsprintfW(i32* %26, i32 %27, i32 %30, i32 %33, i32 %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %61, i32 %66, i32 %71, i32 %76, i32 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %137 [
    i32 128, label %84
    i32 130, label %92
    i32 129, label %118
  ]

84:                                               ; preds = %25
  %85 = load i32, i32* %13, align 4
  %86 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %87 = load i32, i32* @REG_DWORD, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = call i32 @RegSetValueExW(i32 %85, i32* %86, i32 0, i32 %87, i32* %90, i32 4)
  store i32 %91, i32* %14, align 4
  br label %143

92:                                               ; preds = %25
  %93 = load i32, i32* %13, align 4
  %94 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %95 = load i32, i32* @REG_BINARY, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @RegSetValueExW(i32 %93, i32* %94, i32 0, i32 %95, i32* %100, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %111, i32 %116)
  br label %143

118:                                              ; preds = %25
  %119 = load i32, i32* %13, align 4
  %120 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %121 = load i32, i32* @REG_SZ, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @lstrlenW(i64 %130)
  %132 = add nsw i32 1, %131
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @RegSetValueExW(i32 %119, i32* %120, i32 0, i32 %121, i32* %126, i32 %135)
  store i32 %136, i32* %14, align 4
  br label %143

137:                                              ; preds = %25
  store i32 0, i32* %14, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %137, %118, %92, %84
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @RegCloseKey(i32 %144)
  %146 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %147 = call i32* @debugstr_w(i32* %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %147, i32 %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %143, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @MMDevPropStore_OpenPropKey(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wsprintfW(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
