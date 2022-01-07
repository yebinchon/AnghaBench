; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_ipv6_to_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_ipv6_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"(%p %p): Failed sanity check with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*)* @ipv6_to_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipv6_to_number(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %70, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %24
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  store i64 0, i64* %9, align 8
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 2
  store i64 %53, i64* %9, align 8
  br label %40

54:                                               ; preds = %40
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %54, %36, %24
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @h16tous(i64 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  %69 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %13

73:                                               ; preds = %13
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %94, 2
  store i64 %95, i64* %10, align 8
  br label %82

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %76, %73
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ipv4toui(i64 %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 6
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %113, i32* %114, i64 %115)
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %3, align 8
  br label %133

118:                                              ; preds = %102
  %119 = load i32, i32* %11, align 4
  %120 = ashr i32 %119, 16
  %121 = and i32 %120, 65535
  %122 = load i32*, i32** %5, align 8
  %123 = load i64, i64* %7, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %7, align 8
  %125 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 65535
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %118, %97
  %132 = load i64, i64* @TRUE, align 8
  store i64 %132, i64* %3, align 8
  br label %133

133:                                              ; preds = %131, %112
  %134 = load i64, i64* %3, align 8
  ret i64 %134
}

declare dso_local i32 @h16tous(i64) #1

declare dso_local i32 @ipv4toui(i64, i32) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_5__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
