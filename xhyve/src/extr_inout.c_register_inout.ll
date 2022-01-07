; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_inout.c_register_inout.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_inout.c_register_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.inout_port = type { i32, i32, i32, i32, i64, i32 }

@IOPORT_F_DEFAULT = common dso_local global i32 0, align 4
@inout_handlers = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_inout(%struct.inout_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inout_port*, align 8
  %4 = alloca i32, align 4
  store %struct.inout_port* %0, %struct.inout_port** %3, align 8
  %5 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %6 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %9 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VERIFY_IOPORT(i32 %7, i32 %10)
  %12 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %13 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @IOPORT_F_DEFAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %21 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %46, %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %26 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %29 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = icmp slt i32 %24, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @IOPORT_F_DEFAULT, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %101

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %52 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %97, %50
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %57 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %60 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %54
  %65 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %66 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32 %67, i32* %72, align 8
  %73 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %74 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i64 %75, i64* %80, align 8
  %81 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %82 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  %89 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %90 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  br label %97

97:                                               ; preds = %64
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %54

100:                                              ; preds = %54
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %44
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @VERIFY_IOPORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
