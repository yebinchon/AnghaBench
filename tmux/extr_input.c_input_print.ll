; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_print.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.TYPE_3__, i32, i32, i64, %struct.screen_write_ctx }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.screen_write_ctx = type { i32 }

@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*)* @input_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_print(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %5 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %5, i32 0, i32 4
  store %struct.screen_write_ctx* %6, %struct.screen_write_ctx** %3, align 8
  %7 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %18, %14 ], [ %23, %19 ]
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %30 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 8
  br label %45

36:                                               ; preds = %24
  %37 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %36, %28
  %46 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @utf8_set(i32* %49, i32 %52)
  %54 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %55 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @screen_write_collect_add(%struct.screen_write_ctx* %54, %struct.TYPE_4__* %57)
  %59 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %65
  store i32 %71, i32* %69, align 8
  ret i32 0
}

declare dso_local i32 @utf8_set(i32*, i32) #1

declare dso_local i32 @screen_write_collect_add(%struct.screen_write_ctx*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
