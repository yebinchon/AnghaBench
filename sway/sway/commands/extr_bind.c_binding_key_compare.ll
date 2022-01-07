; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_key_compare.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_key_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@BINDING_RELEASE = common dso_local global i64 0, align 8
@BINDING_BORDER = common dso_local global i64 0, align 8
@BINDING_CONTENTS = common dso_local global i64 0, align 8
@BINDING_TITLEBAR = common dso_local global i64 0, align 8
@BINDING_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_binding*, %struct.sway_binding*)* @binding_key_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binding_key_compare(%struct.sway_binding* %0, %struct.sway_binding* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_binding*, align 8
  %5 = alloca %struct.sway_binding*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %4, align 8
  store %struct.sway_binding* %1, %struct.sway_binding** %5, align 8
  %11 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %12 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %15 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @strcmp(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %125

20:                                               ; preds = %2
  %21 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %22 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %25 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %125

29:                                               ; preds = %20
  %30 = load i64, i64* @BINDING_RELEASE, align 8
  %31 = load i64, i64* @BINDING_BORDER, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @BINDING_CONTENTS, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @BINDING_TITLEBAR, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @BINDING_LOCKED, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %6, align 8
  %39 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %40 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %41, %42
  %44 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %45 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %125

51:                                               ; preds = %29
  %52 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %53 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %56 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %125

60:                                               ; preds = %51
  %61 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %62 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %65 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = xor i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %125

70:                                               ; preds = %60
  %71 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %72 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %77 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %125

83:                                               ; preds = %70
  %84 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %85 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %121, %83
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  %94 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %95 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %9, align 8
  %105 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %106 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %125

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %89

124:                                              ; preds = %89
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %119, %82, %69, %59, %50, %28, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
