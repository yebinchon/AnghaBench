; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SecondReorder_Blwf_follows_matra.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SecondReorder_Blwf_follows_matra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@lex_Matra_below = common dso_local global i64 0, align 8
@lex_Matra_above = common dso_local global i64 0, align 8
@lex_Matra_post = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Doing reorder of Below-base to %i (glyph offset %i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*, %struct.TYPE_4__*, i64 (i32)*)* @SecondReorder_Blwf_follows_matra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SecondReorder_Blwf_follows_matra(i32* %0, %struct.TYPE_4__* %1, i32* %2, %struct.TYPE_4__* %3, i64 (i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64 (i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i64 (i32)* %4, i64 (i32)** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %135

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %135

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %70, %27
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %31
  %39 = load i64 (i32)*, i64 (i32)** %10, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 %39(i32 %44)
  %46 = load i64, i64* @lex_Matra_below, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %38
  %49 = load i64 (i32)*, i64 (i32)** %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 %49(i32 %54)
  %56 = load i64, i64* @lex_Matra_above, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load i64 (i32)*, i64 (i32)** %10, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 %59(i32 %64)
  %66 = load i64, i64* @lex_Matra_post, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58, %48, %38
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %31

73:                                               ; preds = %68, %31
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = sub nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %134

88:                                               ; preds = %73
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %121, %88
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = add nsw i64 %109, 1
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32 %112, i32* %120, align 4
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32 %125, i32* %133, align 4
  br label %134

134:                                              ; preds = %124, %73
  br label %135

135:                                              ; preds = %134, %19, %5
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
