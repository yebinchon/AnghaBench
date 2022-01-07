; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_Refresh.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32)* @Refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Refresh(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @STATS(%struct.TYPE_6__* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 2
  %23 = lshr i32 %22, 1
  %24 = call i64 @ShrinkUnits(i32* %17, i32 %19, i32 %20, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %13, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %27 = call i32 @REF(%struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul i32 4, %33
  %35 = add i32 16, %34
  %36 = and i32 %32, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 64
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 8, %41
  %43 = add i32 %36, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = lshr i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 %60, i32* %11, align 4
  br label %63

63:                                               ; preds = %92, %4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 1
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = lshr i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %79
  store i32 %83, i32* %11, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 64
  %88 = zext i1 %87 to i32
  %89 = mul nsw i32 8, %88
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %63
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %63, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = lshr i32 %100, %101
  %103 = add i32 %97, %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  ret void
}

declare dso_local i64 @ShrinkUnits(i32*, i32, i32, i32) #1

declare dso_local i32 @STATS(%struct.TYPE_6__*) #1

declare dso_local i32 @REF(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
