; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_DateTimeSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_DateTimeSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@AOT_DATE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @DateTimeSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DateTimeSend(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [7 x i32], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %5, align 8
  %25 = call i32 @time(i32* null)
  store i32 %25, i32* %6, align 4
  %26 = call i64 @gmtime_r(i32* %6, %struct.tm* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %109

28:                                               ; preds = %2
  %29 = call i64 @localtime_r(i32* %6, %struct.tm* %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %109

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 2
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi i1 [ true, %31 ], [ %43, %41 ]
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 14956, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 3.652500e+02
  %55 = fptosi double %54 to i32
  %56 = add nsw i32 %49, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %59, 12
  %61 = add nsw i32 %58, %60
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 3.060010e+01
  %64 = fptosi double %63 to i32
  %65 = add nsw i32 %56, %64
  store i32 %65, i32* %13, align 4
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 0
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @SetWBE(i32* %66, i32 %67)
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 10
  %72 = shl i32 %71, 4
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %74, 10
  %76 = add nsw i32 %72, %75
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 10
  %81 = shl i32 %80, 4
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %83, 10
  %85 = add nsw i32 %81, %84
  %86 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 3
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 10
  %90 = shl i32 %89, 4
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 10
  %94 = add nsw i32 %90, %93
  %95 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 4
  store i32 %94, i32* %95, align 16
  %96 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 5
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 60
  %100 = call i32 @SetWBE(i32* %96, i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @AOT_DATE_TIME, align 4
  %104 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 0
  %105 = call i32 @APDUSend(%struct.TYPE_8__* %101, i32 %102, i32 %103, i32* %104, i32 7)
  %106 = call i32 (...) @vlc_tick_now()
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %44, %28, %2
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @APDUSend(%struct.TYPE_8__*, i32, i32, i32*, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
