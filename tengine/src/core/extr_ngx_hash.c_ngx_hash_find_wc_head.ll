; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_find_wc_head.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_find_wc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_hash_find_wc_head(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %10, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %28

25:                                               ; preds = %16
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %10, align 8
  br label %13

28:                                               ; preds = %24, %13
  store i64 0, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %41, %28
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i64, i64* %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ngx_hash(i64 %35, i8 signext %39)
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %11, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = call i8* @ngx_hash_find(i32* %46, i64 %47, i8* %50, i64 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %113

57:                                               ; preds = %44
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 2
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i8* null, i8** %4, align 8
  br label %117

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = and i64 %73, -4
  %75 = inttoptr i64 %74 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %5, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %4, align 8
  br label %117

79:                                               ; preds = %62
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = and i64 %81, -4
  %83 = inttoptr i64 %82 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %5, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %86, 1
  %88 = call i8* @ngx_hash_find_wc_head(%struct.TYPE_4__* %84, i8* %85, i64 %87)
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i8*, i8** %8, align 8
  store i8* %92, i8** %4, align 8
  br label %117

93:                                               ; preds = %79
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %4, align 8
  br label %117

97:                                               ; preds = %57
  %98 = load i8*, i8** %8, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = and i64 %99, 1
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i8* null, i8** %4, align 8
  br label %117

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = and i64 %108, -4
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %4, align 8
  br label %117

111:                                              ; preds = %97
  %112 = load i8*, i8** %8, align 8
  store i8* %112, i8** %4, align 8
  br label %117

113:                                              ; preds = %44
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %4, align 8
  br label %117

117:                                              ; preds = %113, %111, %106, %105, %93, %91, %71, %70
  %118 = load i8*, i8** %4, align 8
  ret i8* %118
}

declare dso_local i64 @ngx_hash(i64, i8 signext) #1

declare dso_local i8* @ngx_hash_find(i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
