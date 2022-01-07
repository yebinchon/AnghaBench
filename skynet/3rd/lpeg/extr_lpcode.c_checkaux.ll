; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_checkaux.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_checkaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@PEnofail = common dso_local global i32 0, align 4
@PEnullable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkaux(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %57, %54, %51, %41, %31, %23, %2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %60 [
    i32 139, label %10
    i32 129, label %10
    i32 143, label %10
    i32 137, label %10
    i32 134, label %10
    i32 133, label %11
    i32 128, label %11
    i32 135, label %12
    i32 142, label %12
    i32 144, label %18
    i32 131, label %26
    i32 130, label %34
    i32 138, label %44
    i32 140, label %54
    i32 136, label %54
    i32 132, label %54
    i32 141, label %57
  ]

10:                                               ; preds = %6, %6, %6, %6, %6
  store i32 0, i32* %3, align 4
  br label %62

11:                                               ; preds = %6, %6
  store i32 1, i32* %3, align 4
  br label %62

12:                                               ; preds = %6, %6
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PEnofail, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %62

18:                                               ; preds = %6
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PEnullable, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %62

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PEnofail, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %62

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %4, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @checkaux(%struct.TYPE_7__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = call %struct.TYPE_7__* @sib2(%struct.TYPE_7__* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %4, align 8
  br label %6

44:                                               ; preds = %6
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call %struct.TYPE_7__* @sib2(%struct.TYPE_7__* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @checkaux(%struct.TYPE_7__* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %62

51:                                               ; preds = %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %52)
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %4, align 8
  br label %6

54:                                               ; preds = %6, %6, %6
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %55)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %4, align 8
  br label %6

57:                                               ; preds = %6
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call %struct.TYPE_7__* @sib2(%struct.TYPE_7__* %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %4, align 8
  br label %6

60:                                               ; preds = %6
  %61 = call i32 @assert(i32 0)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %50, %40, %30, %22, %17, %16, %11, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_7__* @sib1(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sib2(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
