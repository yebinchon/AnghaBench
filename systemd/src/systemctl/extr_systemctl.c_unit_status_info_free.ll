; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_unit_status_info_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_unit_status_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32, i32, i32 }

@conditions = common dso_local global i32 0, align 4
@exec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @unit_status_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unit_status_info_free(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @strv_free(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strv_free(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strv_free(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strv_free(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strv_free(i32 %23)
  br label %25

25:                                               ; preds = %30, %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* @conditions, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @LIST_REMOVE(i32 %31, i32* %34, i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @unit_condition_free(i32* %37)
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %45, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @exec, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @LIST_REMOVE(i32 %46, i32* %49, i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @exec_status_info_free(i32* %52)
  br label %40

54:                                               ; preds = %40
  ret void
}

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32*, i32*) #1

declare dso_local i32 @unit_condition_free(i32*) #1

declare dso_local i32 @exec_status_info_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
