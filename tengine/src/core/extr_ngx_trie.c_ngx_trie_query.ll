; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_trie.c_ngx_trie_query.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_trie.c_ngx_trie_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i8*, %struct.TYPE_7__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64* }

@NGX_TRIE_REVERSE = common dso_local global i32 0, align 4
@NGX_TRIE_KIND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_trie_query(%struct.TYPE_6__* %0, %struct.TYPE_8__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %16, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %15, align 8
  store i64 0, i64* %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NGX_TRIE_REVERSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  store i64 -1, i64* %12, align 8
  br label %30

29:                                               ; preds = %4
  store i64 -1, i64* %13, align 8
  store i64 1, i64* %12, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %32, align 8
  %34 = icmp eq %struct.TYPE_7__** %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %120

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %115, %36
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %118

43:                                               ; preds = %37
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ult i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @NGX_TRIE_KIND, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %43
  store i64 0, i64* %14, align 8
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %74, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp eq %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = icmp eq %struct.TYPE_7__* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %15, align 8
  br label %61

78:                                               ; preds = %73, %61
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %15, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %86 = icmp eq %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  br label %91

89:                                               ; preds = %78
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi %struct.TYPE_7__* [ %88, %87 ], [ %90, %89 ]
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %15, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %10, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = load i64*, i64** %8, align 8
  store i64 %105, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %97
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %5, align 8
  br label %120

113:                                              ; preds = %97
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %15, align 8
  br label %115

115:                                              ; preds = %113, %91
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %37

118:                                              ; preds = %37
  %119 = load i8*, i8** %10, align 8
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %118, %111, %35
  %121 = load i8*, i8** %5, align 8
  ret i8* %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
