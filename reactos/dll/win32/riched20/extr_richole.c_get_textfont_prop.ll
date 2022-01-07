; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_textfont_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_textfont_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64 }

@S_OK = common dso_local global i32 0, align 4
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @get_textfont_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_textfont_prop(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19, %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @S_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %19
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @get_range_reole(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @CO_E_RELEASED, align 4
  store i32 %41, i32* %4, align 4
  br label %94

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @init_textfont_prop_value(i32 %43, i32* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ITextRange_GetStart(i32 %48, i64* %10)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ITextRange_GetEnd(i32 %52, i64* %11)
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @get_textfont_prop_for_pos(i32* %54, i64 %55, i32 %56, i32* %9)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %94

63:                                               ; preds = %42
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %87, %63
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @get_textfont_prop_for_pos(i32* %71, i64 %72, i32 %73, i32* %14)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @FAILED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @is_equal_textfont_prop_value(i32 %81, i32* %9, i32* %14)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %12, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %66

90:                                               ; preds = %66
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @S_OK, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %84, %78, %61, %40, %24
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32* @get_range_reole(i32) #1

declare dso_local i32 @init_textfont_prop_value(i32, i32*) #1

declare dso_local i32 @ITextRange_GetStart(i32, i64*) #1

declare dso_local i32 @ITextRange_GetEnd(i32, i64*) #1

declare dso_local i32 @get_textfont_prop_for_pos(i32*, i64, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @is_equal_textfont_prop_value(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
