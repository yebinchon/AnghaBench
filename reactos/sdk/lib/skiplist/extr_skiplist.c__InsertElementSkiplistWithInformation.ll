; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c__InsertElementSkiplistWithInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c__InsertElementSkiplistWithInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, %struct.TYPE_6__* (i32)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8**, %struct.TYPE_6__**, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, %struct.TYPE_6__**, i8**)* @_InsertElementSkiplistWithInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_InsertElementSkiplistWithInformation(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_6__** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = call i64 (...) @_GetRandomLevel()
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %46, %19
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %32
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %37, i8** %45, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__* (i32)*, %struct.TYPE_6__* (i32)** %55, align 8
  %57 = call %struct.TYPE_6__* %56(i32 4)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %12, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %171

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %139, %62
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %142

70:                                               ; preds = %66
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %83
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 %92
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %93, align 8
  %94 = load i8**, i8*** %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %9, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %106 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = getelementptr i8, i8* %97, i64 %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8* %113, i8** %118, align 8
  %119 = load i8**, i8*** %9, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr i8, i8* %121, i64 1
  %123 = load i8**, i8*** %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %122 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  store i8* %130, i8** %138, align 8
  br label %139

139:                                              ; preds = %70
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %66

142:                                              ; preds = %66
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %145

145:                                              ; preds = %162, %142
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ule i64 %146, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %159, align 8
  br label %162

162:                                              ; preds = %151
  %163 = load i64, i64* %11, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %11, align 8
  br label %145

165:                                              ; preds = %145
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %167, align 8
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %165, %60
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @_GetRandomLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
