; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"reading while paused (buggy demux?)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Read(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %4, align 8
  br label %117

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = call i32 @msg_Err(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = call i32 @vlc_cond_signal(i32* %34)
  br label %36

36:                                               ; preds = %28, %20
  br label %37

37:                                               ; preds = %56, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = call i64 @BufferLevel(%struct.TYPE_6__* %38, i32* %11)
  store i64 %39, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %69

47:                                               ; preds = %45
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = call i32 @vlc_mutex_unlock(i32* %54)
  store i64 0, i64* %4, align 8
  br label %117

56:                                               ; preds = %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %61 = call i32 @vlc_interrupt_forward_start(i32 %59, i8** %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = call i32 @vlc_cond_wait(i32* %63, i32* %65)
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %68 = call i32 @vlc_interrupt_forward_stop(i8** %67)
  br label %37

69:                                               ; preds = %45
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = urem i64 %72, %75
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %69
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ugt i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %100, %101
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @memcpy(i8* %97, i64 %102, i64 %103)
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = call i32 @vlc_cond_signal(i32* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = call i32 @vlc_mutex_unlock(i32* %114)
  %116 = load i64, i64* %9, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %96, %52, %18
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i64 @BufferLevel(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_interrupt_forward_start(i32, i8**) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_interrupt_forward_stop(i8**) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
