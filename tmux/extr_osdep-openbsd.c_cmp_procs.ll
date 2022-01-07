; ModuleID = '/home/carl/AnghaBench/tmux/extr_osdep-openbsd.c_cmp_procs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_osdep-openbsd.c_cmp_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64, i64, i32, i64, i32 }

@P_SINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kinfo_proc* (%struct.kinfo_proc*, %struct.kinfo_proc*)* @cmp_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kinfo_proc* @cmp_procs(%struct.kinfo_proc* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %5, align 8
  %6 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %7 = call i64 @is_runnable(%struct.kinfo_proc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %11 = call i64 @is_runnable(%struct.kinfo_proc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %14, %struct.kinfo_proc** %3, align 8
  br label %151

15:                                               ; preds = %9, %2
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %17 = call i64 @is_runnable(%struct.kinfo_proc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %21 = call i64 @is_runnable(%struct.kinfo_proc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %24, %struct.kinfo_proc** %3, align 8
  br label %151

25:                                               ; preds = %19, %15
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %27 = call i64 @is_stopped(%struct.kinfo_proc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %31 = call i64 @is_stopped(%struct.kinfo_proc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %34, %struct.kinfo_proc** %3, align 8
  br label %151

35:                                               ; preds = %29, %25
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %37 = call i64 @is_stopped(%struct.kinfo_proc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %41 = call i64 @is_stopped(%struct.kinfo_proc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %44, %struct.kinfo_proc** %3, align 8
  br label %151

45:                                               ; preds = %39, %35
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %47 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %50 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %54, %struct.kinfo_proc** %3, align 8
  br label %151

55:                                               ; preds = %45
  %56 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %57 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %60 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %64, %struct.kinfo_proc** %3, align 8
  br label %151

65:                                               ; preds = %55
  %66 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %67 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %70 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %74, %struct.kinfo_proc** %3, align 8
  br label %151

75:                                               ; preds = %65
  %76 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %77 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %80 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %84, %struct.kinfo_proc** %3, align 8
  br label %151

85:                                               ; preds = %75
  %86 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %87 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @P_SINTR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %94 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @P_SINTR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %100, %struct.kinfo_proc** %3, align 8
  br label %151

101:                                              ; preds = %92, %85
  %102 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %103 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @P_SINTR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %101
  %109 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %110 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @P_SINTR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %116, %struct.kinfo_proc** %3, align 8
  br label %151

117:                                              ; preds = %108, %101
  %118 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %119 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %122 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @strcmp(i32 %120, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %127, %struct.kinfo_proc** %3, align 8
  br label %151

128:                                              ; preds = %117
  %129 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %130 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %133 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @strcmp(i32 %131, i32 %134)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %138, %struct.kinfo_proc** %3, align 8
  br label %151

139:                                              ; preds = %128
  %140 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %141 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %144 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %142, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %148, %struct.kinfo_proc** %3, align 8
  br label %151

149:                                              ; preds = %139
  %150 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %150, %struct.kinfo_proc** %3, align 8
  br label %151

151:                                              ; preds = %149, %147, %137, %126, %115, %99, %83, %73, %63, %53, %43, %33, %23, %13
  %152 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  ret %struct.kinfo_proc* %152
}

declare dso_local i64 @is_runnable(%struct.kinfo_proc*) #1

declare dso_local i64 @is_stopped(%struct.kinfo_proc*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
