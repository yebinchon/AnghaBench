; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_FreeUserInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_FreeUserInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_28__ = type { %struct.TYPE_19__* }
%struct.TYPE_27__ = type { %struct.TYPE_19__* }
%struct.TYPE_26__ = type { %struct.TYPE_19__* }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @FreeUserInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FreeUserInfo(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 11
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %8 = icmp ne %struct.TYPE_19__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = call i32 @SamFreeMemory(%struct.TYPE_19__* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = icmp ne %struct.TYPE_19__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = call i32 @SamFreeMemory(%struct.TYPE_19__* %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = call i32 @SamFreeMemory(%struct.TYPE_19__* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = call i32 @SamFreeMemory(%struct.TYPE_19__* %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = call i32 @SamFreeMemory(%struct.TYPE_19__* %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = icmp ne %struct.TYPE_19__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = call i32 @SamFreeMemory(%struct.TYPE_19__* %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = icmp ne %struct.TYPE_19__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = call i32 @SamFreeMemory(%struct.TYPE_19__* %85)
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = icmp ne %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = call i32 @SamFreeMemory(%struct.TYPE_19__* %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = icmp ne %struct.TYPE_19__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = call i32 @SamFreeMemory(%struct.TYPE_19__* %109)
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = icmp ne %struct.TYPE_19__* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = call i32 @SamFreeMemory(%struct.TYPE_19__* %121)
  br label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = icmp ne %struct.TYPE_19__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = call i32 @SamFreeMemory(%struct.TYPE_19__* %133)
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = icmp ne %struct.TYPE_19__* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = call i32 @SamFreeMemory(%struct.TYPE_19__* %145)
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = call i32 @SamFreeMemory(%struct.TYPE_19__* %148)
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @SamFreeMemory(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
