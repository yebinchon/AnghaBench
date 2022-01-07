; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_fragment_cb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_fragment_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@FLOW_SPACE = common dso_local global i64 0, align 8
@FLOW_BREAK = common dso_local global i64 0, align 8
@FLOW_SBREAK = common dso_local global i64 0, align 8
@FLOW_SHYPHEN = common dso_local global i64 0, align 8
@FLOW_ANCHOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i8*)* @fragment_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fragment_cb(i32* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %16 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %103, %5
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %127

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FLOW_SPACE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i64 1, i64* %13, align 8
  br label %103

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FLOW_BREAK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FLOW_SBREAK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FLOW_SHYPHEN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FLOW_ANCHOR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62, %54, %46, %38
  store i64 0, i64* %13, align 8
  br label %102

71:                                               ; preds = %62
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @fz_utflen(i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %71
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @split_flow(i32 %85, i32 %88, %struct.TYPE_8__* %91, i64 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @fz_utflen(i32 %99)
  store i64 %100, i64* %13, align 8
  br label %101

101:                                              ; preds = %82, %71
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %37
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %120, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %7, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %7, align 8
  br label %26

127:                                              ; preds = %26
  ret void
}

declare dso_local i64 @fz_utflen(i32) #1

declare dso_local i32 @split_flow(i32, i32, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
