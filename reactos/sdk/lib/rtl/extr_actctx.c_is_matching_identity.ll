; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_is_matching_identity.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_is_matching_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_identity = type { %struct.TYPE_2__, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@wildcardW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assembly_identity*, %struct.assembly_identity*)* @is_matching_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_matching_identity(%struct.assembly_identity* %0, %struct.assembly_identity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.assembly_identity*, align 8
  %5 = alloca %struct.assembly_identity*, align 8
  store %struct.assembly_identity* %0, %struct.assembly_identity** %4, align 8
  store %struct.assembly_identity* %1, %struct.assembly_identity** %5, align 8
  %6 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %7 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %10 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @is_matching_string(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %134

16:                                               ; preds = %2
  %17 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %18 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %21 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_matching_string(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %134

27:                                               ; preds = %16
  %28 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %29 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %32 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @is_matching_string(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %27
  %39 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %40 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %45 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %50 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %53 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @strcmpiW(i64 %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %48
  %58 = load i32, i32* @wildcardW, align 4
  %59 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %60 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strcmpW(i32 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* @wildcardW, align 4
  %66 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %67 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @strcmpW(i32 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %134

73:                                               ; preds = %64, %57
  br label %74

74:                                               ; preds = %73, %48, %43, %38
  %75 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %76 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %80 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %134

86:                                               ; preds = %74
  %87 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %88 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %92 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %3, align 4
  br label %134

98:                                               ; preds = %86
  %99 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %100 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %104 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %102, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %3, align 4
  br label %134

110:                                              ; preds = %98
  %111 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %112 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %116 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %114, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load %struct.assembly_identity*, %struct.assembly_identity** %4, align 8
  %122 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %126 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %134

132:                                              ; preds = %120, %110
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %130, %108, %96, %84, %71, %36, %25, %14
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @is_matching_string(i32, i32) #1

declare dso_local i64 @strcmpiW(i64, i64) #1

declare dso_local i64 @strcmpW(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
