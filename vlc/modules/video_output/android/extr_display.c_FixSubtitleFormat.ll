; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_FixSubtitleFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_FixSubtitleFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @FixSubtitleFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FixSubtitleFormat(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i32 @video_format_ApplyRotation(%struct.TYPE_10__* %4, i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %17
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %44

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %62, %64
  store i32 %65, i32* %7, align 4
  br label %74

66:                                               ; preds = %52
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %70, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %66, %58
  br label %75

75:                                               ; preds = %74, %48, %44
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 90
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 180
  br i1 %88, label %89, label %101

89:                                               ; preds = %82, %75
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sitofp i32 %96 to double
  %98 = load i32, i32* %7, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %97, %99
  store double %100, double* %11, align 8
  br label %113

101:                                              ; preds = %82
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sitofp i32 %108 to double
  %110 = load i32, i32* %8, align 4
  %111 = sitofp i32 %110 to double
  %112 = fdiv double %109, %111
  store double %112, double* %11, align 8
  br label %113

113:                                              ; preds = %101, %89
  %114 = load i32, i32* %9, align 4
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %11, align 8
  %117 = fdiv double %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = sitofp i32 %118 to double
  %120 = fcmp olt double %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sitofp i32 %123 to double
  %125 = load double, double* %11, align 8
  %126 = fdiv double %124, %125
  %127 = fptosi double %126 to i32
  store i32 %127, i32* %6, align 4
  br label %135

128:                                              ; preds = %113
  %129 = load i32, i32* %10, align 4
  %130 = sitofp i32 %129 to double
  %131 = load double, double* %11, align 8
  %132 = fmul double %130, %131
  %133 = fptosi double %132 to i32
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %139, %140
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %143, %135
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i32 %147, i32* %151, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  store i32 %152, i32* %156, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 7
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  store i32 1, i32* %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 5
  store i32 1, i32* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %146, %16
  ret void
}

declare dso_local i32 @video_format_ApplyRotation(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
