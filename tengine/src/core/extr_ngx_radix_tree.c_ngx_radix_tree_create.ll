; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_radix_tree.c_ngx_radix_tree_create.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_radix_tree.c_ngx_radix_tree_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32* }

@NGX_RADIX_NO_VALUE = common dso_local global i32 0, align 4
@ngx_pagesize = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ngx_radix_tree_create(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_7__* @ngx_palloc(i32* %10, i32 40)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %98

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = call %struct.TYPE_8__* @ngx_radix_alloc(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %98

34:                                               ; preds = %15
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @NGX_RADIX_NO_VALUE, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %3, align 8
  br label %98

56:                                               ; preds = %34
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* @ngx_pagesize, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  switch i64 %62, label %65 [
    i64 128, label %63
    i64 256, label %64
  ]

63:                                               ; preds = %59
  store i32 6, i32* %5, align 4
  br label %66

64:                                               ; preds = %59
  store i32 7, i32* %5, align 4
  br label %66

65:                                               ; preds = %59
  store i32 8, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64, %63
  br label %67

67:                                               ; preds = %66, %56
  store i32 0, i32* %7, align 4
  store i32 -2147483648, i32* %8, align 4
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, -2147483648
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %90, %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NGX_RADIX_NO_VALUE, align 4
  %82 = call i64 @ngx_radix32tree_insert(%struct.TYPE_7__* %78, i32 %79, i32 %80, i32 %81)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %98

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %77, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %68

96:                                               ; preds = %68
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %3, align 8
  br label %98

98:                                               ; preds = %96, %85, %54, %33, %14
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %99
}

declare dso_local %struct.TYPE_7__* @ngx_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @ngx_radix_alloc(%struct.TYPE_7__*) #1

declare dso_local i64 @ngx_radix32tree_insert(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
