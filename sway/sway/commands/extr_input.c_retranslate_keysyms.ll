; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_input.c_retranslate_keysyms.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_input.c_retranslate_keysyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.input_config** }
%struct.input_config = type { i64, i64, i64 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_config*)* @retranslate_keysyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retranslate_keysyms(%struct.input_config* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.input_config**, %struct.input_config*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.input_config*, %struct.input_config** %18, i64 %20
  %22 = load %struct.input_config*, %struct.input_config** %21, align 8
  store %struct.input_config* %22, %struct.input_config** %4, align 8
  %23 = load %struct.input_config*, %struct.input_config** %4, align 8
  %24 = getelementptr inbounds %struct.input_config, %struct.input_config* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %13
  %28 = load %struct.input_config*, %struct.input_config** %4, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27, %13
  %33 = load %struct.input_config*, %struct.input_config** %4, align 8
  %34 = getelementptr inbounds %struct.input_config, %struct.input_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.input_config*, %struct.input_config** %2, align 8
  %37 = getelementptr inbounds %struct.input_config, %struct.input_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.input_config*, %struct.input_config** %4, align 8
  %42 = call i32 @translate_keysyms(%struct.input_config* %41)
  br label %43

43:                                               ; preds = %40, %32
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5

48:                                               ; preds = %43, %5
  ret void
}

declare dso_local i32 @translate_keysyms(%struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
