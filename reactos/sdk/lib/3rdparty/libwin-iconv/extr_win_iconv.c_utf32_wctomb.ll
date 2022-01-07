; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf32_wctomb.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf32_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FLAG_USE_BOM = common dso_local global i32 0, align 4
@UNICODE_MODE_BOM_DONE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\FF\FE\00\00\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\00\00\FE\FF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32)* @utf32_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf32_wctomb(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FLAG_USE_BOM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @E2BIG, align 4
  %37 = call i32 @seterror(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %130

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 12000
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @memcpy(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %55

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 12001
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @memcpy(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 4
  %63 = call i32 @utf32_wctomb(%struct.TYPE_3__* %56, i32* %57, i32 %58, i32* %60, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %130

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %6, align 4
  br label %130

70:                                               ; preds = %20, %5
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @E2BIG, align 4
  %75 = call i32 @seterror(i32 %74)
  store i32 %75, i32* %6, align 4
  br label %130

76:                                               ; preds = %70
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @utf16_to_ucs4(i32* %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 12000
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 65280
  %90 = ashr i32 %89, 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 16711680
  %95 = ashr i32 %94, 16
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, -16777216
  %100 = lshr i32 %99, 24
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  br label %129

103:                                              ; preds = %76
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 12001
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, -16777216
  %111 = lshr i32 %110, 24
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 16711680
  %116 = ashr i32 %115, 16
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 65280
  %121 = ashr i32 %120, 8
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, 255
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %108, %103
  br label %129

129:                                              ; preds = %128, %83
  store i32 4, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %73, %67, %66, %35
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @utf16_to_ucs4(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
