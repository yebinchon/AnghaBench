; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cpsf.c_init_psfactory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cpsf.c_init_psfactory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__**, i64, i32* }
%struct.TYPE_9__ = type { i64, i32, i64*, %struct.TYPE_10__**, %struct.TYPE_11__** }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8** }

@CStdPSFactory_Vtbl = common dso_local global i32 0, align 4
@CStdStubBuffer_Vtbl = common dso_local global i32 0, align 4
@CStdStubBuffer_Delegating_Vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_9__**)* @init_psfactory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_psfactory(%struct.TYPE_12__* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32* @CStdPSFactory_Vtbl, i32** %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store %struct.TYPE_9__** %17, %struct.TYPE_9__*** %19, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %128, %2
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %131

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %31, align 8
  store %struct.TYPE_11__** %32, %struct.TYPE_11__*** %8, align 8
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  store %struct.TYPE_10__** %38, %struct.TYPE_10__*** %9, align 8
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %124, %26
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %40, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %39
  store i8** bitcast (i32* @CStdStubBuffer_Vtbl to i8**), i8*** %10, align 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to i8**
  store i8** %54, i8*** %11, align 8
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %55, i64 %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %101

62:                                               ; preds = %48
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %63, i64 %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %62
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %75
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  store i8** %79, i8*** %12, align 8
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i8**, i8*** %12, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %12, align 8
  br label %90

90:                                               ; preds = %87, %73
  %91 = load i8**, i8*** %12, align 8
  %92 = bitcast i8** %91 to i32*
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @fill_delegated_proxy_table(i32* %92, i32 %99)
  store i8** bitcast (i32* @CStdStubBuffer_Delegating_Vtbl to i8**), i8*** %10, align 8
  br label %101

101:                                              ; preds = %90, %62, %48
  store i64 0, i64* %7, align 8
  br label %102

102:                                              ; preds = %120, %101
  %103 = load i64, i64* %7, align 8
  %104 = icmp ult i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load i8**, i8*** %11, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %105
  %112 = load i8**, i8*** %10, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %11, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8* %115, i8** %118, align 8
  br label %119

119:                                              ; preds = %111, %105
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %102

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %39

127:                                              ; preds = %39
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %5, align 8
  br label %20

131:                                              ; preds = %20
  ret void
}

declare dso_local i32 @fill_delegated_proxy_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
