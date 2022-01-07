; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_constblock.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_constblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32*, i64, i64 }

@TConstant = common dso_local global i32 0, align 4
@TBlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32*)* @constblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constblock(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 @memset(%struct.TYPE_12__* %8, i32 0, i32 24)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i64 %12, i64* %13, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32* %22, i32** %23, align 8
  %24 = call i32 @dwarfget1(%struct.TYPE_12__* %8)
  switch i32 %24, label %73 [
    i32 139, label %25
    i32 137, label %29
    i32 138, label %33
    i32 135, label %37
    i32 136, label %41
    i32 133, label %45
    i32 134, label %49
    i32 131, label %53
    i32 132, label %57
    i32 129, label %61
    i32 130, label %65
    i32 128, label %69
  ]

25:                                               ; preds = %3
  %26 = call i32 @dwarfgetaddr(%struct.TYPE_12__* %8)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TConstant, align 4
  store i32 %28, i32* %4, align 4
  br label %75

29:                                               ; preds = %3
  %30 = call i32 @dwarfget1(%struct.TYPE_12__* %8)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @TConstant, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %3
  %34 = call i32 @dwarfget1(%struct.TYPE_12__* %8)
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @TConstant, align 4
  store i32 %36, i32* %4, align 4
  br label %75

37:                                               ; preds = %3
  %38 = call i32 @dwarfget2(%struct.TYPE_12__* %8)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @TConstant, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %3
  %42 = call i32 @dwarfget2(%struct.TYPE_12__* %8)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @TConstant, align 4
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %3
  %46 = call i32 @dwarfget4(%struct.TYPE_12__* %8)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @TConstant, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %3
  %50 = call i32 @dwarfget4(%struct.TYPE_12__* %8)
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @TConstant, align 4
  store i32 %52, i32* %4, align 4
  br label %75

53:                                               ; preds = %3
  %54 = call i32 @dwarfget8(%struct.TYPE_12__* %8)
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @TConstant, align 4
  store i32 %56, i32* %4, align 4
  br label %75

57:                                               ; preds = %3
  %58 = call i32 @dwarfget8(%struct.TYPE_12__* %8)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @TConstant, align 4
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %3
  %62 = call i32 @dwarfget128(%struct.TYPE_12__* %8)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @TConstant, align 4
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %3
  %66 = call i32 @dwarfget128s(%struct.TYPE_12__* %8)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @TConstant, align 4
  store i32 %68, i32* %4, align 4
  br label %75

69:                                               ; preds = %3
  %70 = call i32 @dwarfget128(%struct.TYPE_12__* %8)
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @TConstant, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %3
  %74 = load i32, i32* @TBlock, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dwarfget1(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfgetaddr(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfget2(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfget4(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfget8(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfget128(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarfget128s(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
