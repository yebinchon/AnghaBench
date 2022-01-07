; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_create_sub_matches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_create_sub_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64*, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@SubMatches_tid = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@SubMatchesVtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_11__*, %struct.TYPE_12__**)* @create_sub_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sub_matches(i64 %0, %struct.TYPE_11__* %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %11 = load i32, i32* @SubMatches_tid, align 4
  %12 = call i32 @init_regexp_typeinfo(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %123

18:                                               ; preds = %3
  %19 = call %struct.TYPE_12__* @heap_alloc_zero(i32 32)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %4, align 4
  br label %123

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32* @SubMatchesVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %114

33:                                               ; preds = %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i64* @heap_alloc(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i64* %41, i64** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %33
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = call i32 @heap_free(%struct.TYPE_12__* %49)
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %4, align 4
  br label %123

52:                                               ; preds = %33
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(i64* %55, i32* %64, i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %110, %52
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, %98
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %109

109:                                              ; preds = %97, %88
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %82

113:                                              ; preds = %82
  br label %117

114:                                              ; preds = %24
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i64* null, i64** %116, align 8
  br label %117

117:                                              ; preds = %114, %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %121, align 8
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %117, %48, %22, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @init_regexp_typeinfo(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_12__* @heap_alloc_zero(i32) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
