; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_lj_ctype_getfieldq.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_lj_ctype_getfieldq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64 }

@CTA_SUBTYPE = common dso_local global i32 0, align 4
@CTA_QUAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @lj_ctype_getfieldq(i32* %0, %struct.TYPE_7__* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  br label %15

15:                                               ; preds = %99, %5
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_7__* @ctype_get(i32* %21, i64 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @gcref(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @obj2gco(i32* %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %10, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %6, align 8
  br label %101

39:                                               ; preds = %20
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CTA_SUBTYPE, align 4
  %44 = call i64 @ctype_isxattrib(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = call %struct.TYPE_7__* @ctype_child(i32* %47, %struct.TYPE_7__* %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %50

50:                                               ; preds = %69, %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ctype_isattrib(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ctype_attrib(i32 %59)
  %61 = load i64, i64* @CTA_QUAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = call %struct.TYPE_7__* @ctype_child(i32* %70, %struct.TYPE_7__* %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %13, align 8
  br label %50

73:                                               ; preds = %50
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = call %struct.TYPE_7__* @lj_ctype_getfieldq(i32* %74, %struct.TYPE_7__* %75, i32* %76, i64* %77, i64* %78)
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %12, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %73
  %83 = load i64*, i64** %11, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i64, i64* %14, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = or i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %6, align 8
  br label %101

98:                                               ; preds = %73
  br label %99

99:                                               ; preds = %98, %39
  br label %15

100:                                              ; preds = %15
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %101

101:                                              ; preds = %100, %90, %33
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %102
}

declare dso_local %struct.TYPE_7__* @ctype_get(i32*, i64) #1

declare dso_local i64 @gcref(i32) #1

declare dso_local i64 @obj2gco(i32*) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

declare dso_local %struct.TYPE_7__* @ctype_child(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i64 @ctype_attrib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
