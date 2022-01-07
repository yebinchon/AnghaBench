; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_style.c_ME_CharFormatFromLogFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_style.c_ME_CharFormatFromLogFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@LOGPIXELSY = common dso_local global i32 0, align 4
@CFM_WEIGHT = common dso_local global i32 0, align 4
@CFM_BOLD = common dso_local global i32 0, align 4
@CFM_ITALIC = common dso_local global i32 0, align 4
@CFM_UNDERLINE = common dso_local global i32 0, align 4
@CFM_UNDERLINETYPE = common dso_local global i32 0, align 4
@CFM_STRIKEOUT = common dso_local global i32 0, align 4
@CFM_SIZE = common dso_local global i32 0, align 4
@CFM_FACE = common dso_local global i32 0, align 4
@CFM_CHARSET = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i64 0, align 8
@CFU_UNDERLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_CharFormatFromLogFont(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %9 = call i32 @ME_InitCharFormat2W(%struct.TYPE_7__* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LOGPIXELSY, align 4
  %12 = call i32 @GetDeviceCaps(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lstrcpyW(i32 %15, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @CFM_WEIGHT, align 4
  %23 = load i32, i32* @CFM_BOLD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CFM_ITALIC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CFM_UNDERLINE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CFM_UNDERLINETYPE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CFM_STRIKEOUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CFM_SIZE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CFM_FACE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CFM_CHARSET, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 0, %48
  %50 = mul nsw i32 %49, 1440
  %51 = load i32, i32* %7, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FW_NORMAL, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %3
  %61 = load i32, i32* @CFM_BOLD, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @CFM_ITALIC, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @CFM_UNDERLINE, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* @CFU_UNDERLINE, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i32, i32* @CFM_STRIKEOUT, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i32 @ME_InitCharFormat2W(%struct.TYPE_7__*) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
