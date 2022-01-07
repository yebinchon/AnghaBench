; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_rofi_collect_modi_destroy.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_rofi_collect_modi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@num_available_modi = common dso_local global i32 0, align 4
@available_modi = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rofi_collect_modi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_collect_modi_destroy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %44, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @num_available_modi, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %8, i64 %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %7
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %27, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @g_module_close(i32* %28)
  br label %30

30:                                               ; preds = %16, %7
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  %42 = call i32 @mode_free(%struct.TYPE_4__** %41)
  br label %43

43:                                               ; preds = %37, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %3

47:                                               ; preds = %3
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @available_modi, align 8
  %49 = call i32 @g_free(%struct.TYPE_4__** %48)
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** @available_modi, align 8
  store i32 0, i32* @num_available_modi, align 4
  ret void
}

declare dso_local i32 @g_module_close(i32*) #1

declare dso_local i32 @mode_free(%struct.TYPE_4__**) #1

declare dso_local i32 @g_free(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
