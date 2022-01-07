; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_ControlClass.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_ControlClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ControlClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ControlClass(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %34 [
    i32 135, label %6
    i32 130, label %11
    i32 128, label %14
    i32 134, label %17
    i32 133, label %20
    i32 132, label %23
    i32 131, label %26
    i32 129, label %29
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = call i32 @CharAttr(%struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = call i32 @ME_RTFCharAttrHook(%struct.TYPE_13__* %9)
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = call i32 @ME_RTFParAttrHook(%struct.TYPE_13__* %12)
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @ME_RTFTblAttrHook(%struct.TYPE_13__* %15)
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = call i32 @CharSet(%struct.TYPE_13__* %18)
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i32 @DefFont(%struct.TYPE_13__* %21)
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = call i32 @Destination(%struct.TYPE_13__* %24)
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = call i32 @DocAttr(%struct.TYPE_13__* %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i32 @SpecialChar(%struct.TYPE_13__* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = call i32 @ME_RTFSpecialCharHook(%struct.TYPE_13__* %32)
  br label %34

34:                                               ; preds = %1, %29, %26, %23, %20, %17, %14, %11, %6
  ret void
}

declare dso_local i32 @CharAttr(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_RTFCharAttrHook(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_RTFParAttrHook(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_RTFTblAttrHook(%struct.TYPE_13__*) #1

declare dso_local i32 @CharSet(%struct.TYPE_13__*) #1

declare dso_local i32 @DefFont(%struct.TYPE_13__*) #1

declare dso_local i32 @Destination(%struct.TYPE_13__*) #1

declare dso_local i32 @DocAttr(%struct.TYPE_13__*) #1

declare dso_local i32 @SpecialChar(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_RTFSpecialCharHook(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
