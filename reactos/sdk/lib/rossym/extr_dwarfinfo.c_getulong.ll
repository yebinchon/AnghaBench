; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_getulong.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_getulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getulong.nbad = internal global i32 0, align 4
@TAddress = common dso_local global i32 0, align 4
@TReference = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"dwarf: truncating 64-bit attribute constants\00", align 1
@TConstant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*)* @getulong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getulong(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 140, label %15
    i32 131, label %21
    i32 135, label %27
    i32 134, label %31
    i32 133, label %35
    i32 132, label %39
    i32 130, label %43
    i32 139, label %54
    i32 138, label %58
    i32 137, label %62
    i32 136, label %66
    i32 129, label %82
    i32 128, label %86
  ]

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %93

15:                                               ; preds = %5
  %16 = load i32, i32* @TAddress, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @dwarfgetaddr(i32* %18)
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %93

21:                                               ; preds = %5
  %22 = load i32, i32* @TReference, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @dwarfgetaddr(i32* %24)
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %93

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @dwarfget1(i32* %28)
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  br label %47

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @dwarfget2(i32* %32)
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %47

35:                                               ; preds = %5
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @dwarfget4(i32* %36)
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %47

39:                                               ; preds = %5
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @dwarfget8(i32* %40)
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @dwarfget128(i32* %44)
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39, %35, %31, %27
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @TReference, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %93

54:                                               ; preds = %5
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @dwarfget1(i32* %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %90

58:                                               ; preds = %5
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @dwarfget2(i32* %59)
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %90

62:                                               ; preds = %5
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @dwarfget4(i32* %63)
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %90

66:                                               ; preds = %5
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @dwarfget8(i32* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @getulong.nbad, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @getulong.nbad, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @werrstr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75, %66
  br label %90

82:                                               ; preds = %5
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @dwarfget128s(i32* %83)
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %90

86:                                               ; preds = %5
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @dwarfget128(i32* %87)
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82, %81, %62, %58, %54
  %91 = load i32, i32* @TConstant, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %47, %21, %15, %14
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @dwarfgetaddr(i32*) #1

declare dso_local i32 @dwarfget1(i32*) #1

declare dso_local i32 @dwarfget2(i32*) #1

declare dso_local i32 @dwarfget4(i32*) #1

declare dso_local i32 @dwarfget8(i32*) #1

declare dso_local i32 @dwarfget128(i32*) #1

declare dso_local i32 @werrstr(i8*) #1

declare dso_local i32 @dwarfget128s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
