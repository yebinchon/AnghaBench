; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_translate16to16.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_translate16to16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32*)* @translate16to16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate16to16(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @BSWAP16(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @SPLITCOLOUR16(i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @MAKECOLOUR(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @BOUT16(i32* %39, i32 %40)
  br label %24

42:                                               ; preds = %24
  br label %61

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @SPLITCOLOUR16(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @MAKECOLOUR(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @BOUT16(i32* %57, i32 %58)
  br label %44

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %42
  br label %107

62:                                               ; preds = %4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ult i32* %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %74, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @BSWAP16(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @SPLITCOLOUR16(i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @MAKECOLOUR(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @LOUT16(i32* %84, i32 %85)
  br label %69

87:                                               ; preds = %69
  br label %106

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %93, %88
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = icmp ult i32* %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @SPLITCOLOUR16(i32 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @MAKECOLOUR(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @LOUT16(i32* %102, i32 %103)
  br label %89

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106, %61
  ret void
}

declare dso_local i32 @BSWAP16(i32) #1

declare dso_local i32 @SPLITCOLOUR16(i32, i32) #1

declare dso_local i32 @MAKECOLOUR(i32) #1

declare dso_local i32 @BOUT16(i32*, i32) #1

declare dso_local i32 @LOUT16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
