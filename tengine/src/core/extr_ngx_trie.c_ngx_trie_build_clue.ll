; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_trie.c_ngx_trie_build_clue.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_trie.c_ngx_trie_build_clue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__**, %struct.TYPE_5__* }

@NGX_TRIE_MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@NGX_TRIE_KIND = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_trie_build_clue(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @NGX_TRIE_MAX_QUEUE_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.TYPE_5__*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %21
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %24, align 8
  br label %25

25:                                               ; preds = %158, %42, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %159

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %9, align 8
  %35 = load i32, i32* @NGX_TRIE_MAX_QUEUE_SIZE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = srem i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  %41 = icmp eq %struct.TYPE_5__** %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %25

43:                                               ; preds = %29
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %155, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @NGX_TRIE_KIND, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %158

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %155

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = icmp eq %struct.TYPE_5__* %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %81
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %82, align 8
  %83 = load i32, i32* @NGX_TRIE_MAX_QUEUE_SIZE, align 4
  %84 = load i32, i32* %4, align 4
  %85 = srem i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %155

86:                                               ; preds = %58
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %8, align 8
  br label %90

90:                                               ; preds = %123, %86
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %127

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %95, align 8
  %97 = icmp ne %struct.TYPE_5__** %96, null
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %101, i64 %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %98
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %110, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %122, align 8
  br label %127

123:                                              ; preds = %98, %93
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %8, align 8
  br label %90

127:                                              ; preds = %107, %90
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = icmp eq %struct.TYPE_5__* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %134, i64 %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %139, align 8
  br label %140

140:                                              ; preds = %130, %127
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %143, i64 %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %150
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %151, align 8
  %152 = load i32, i32* @NGX_TRIE_MAX_QUEUE_SIZE, align 4
  %153 = load i32, i32* %4, align 4
  %154 = srem i32 %153, %152
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %140, %62, %57
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %44

158:                                              ; preds = %44
  br label %25

159:                                              ; preds = %25
  %160 = load i32, i32* @NGX_OK, align 4
  %161 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
