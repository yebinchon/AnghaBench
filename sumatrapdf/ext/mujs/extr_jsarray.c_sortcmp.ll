; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_sortcmp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_sortcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sortslot = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@JS_TUNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sortcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sortslot*, align 8
  %7 = alloca %struct.sortslot*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.sortslot*
  store %struct.sortslot* %17, %struct.sortslot** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.sortslot*
  store %struct.sortslot* %19, %struct.sortslot** %7, align 8
  %20 = load %struct.sortslot*, %struct.sortslot** %6, align 8
  %21 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %20, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %8, align 8
  %22 = load %struct.sortslot*, %struct.sortslot** %7, align 8
  %23 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %22, i32 0, i32 1
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %9, align 8
  %24 = load %struct.sortslot*, %struct.sortslot** %6, align 8
  %25 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @JS_TUNDEFINED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @JS_TUNDEFINED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %2
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %97

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @js_iscallable(i32* %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @js_copy(i32* %55, i32 1)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @js_pushundefined(i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @js_pushvalue(i32* %59, i64 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @js_pushvalue(i32* %64, i64 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @js_call(i32* %69, i32 2)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @js_tonumber(i32* %71, i32 -1)
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @js_pop(i32* %73, i32 1)
  br label %95

75:                                               ; preds = %50
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @js_pushvalue(i32* %76, i64 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @js_pushvalue(i32* %81, i64 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @js_tostring(i32* %86, i32 -2)
  store i8* %87, i8** %11, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i8* @js_tostring(i32* %88, i32 -1)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @strcmp(i8* %90, i8* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @js_pop(i32* %93, i32 2)
  br label %95

95:                                               ; preds = %75, %54
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %49, %41
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_pushvalue(i32*, i64) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_tonumber(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
