; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_scroll_continious.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_scroll_continious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @scroll_continious to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scroll_continious(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = sub nsw i32 %7, %13
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub i32 %30, %31
  %33 = sub i32 %27, %32
  %34 = icmp ult i32 %24, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %21
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %52, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
