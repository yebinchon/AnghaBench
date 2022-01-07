; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_GetIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_GetIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GCLP_HICON = common dso_local global i32 0, align 4
@GCLP_HICONSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @Ghost_GetIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Ghost_GetIcon(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @Ghost_GetData(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %31 [
    i32 129, label %15
    i32 128, label %23
  ]

15:                                               ; preds = %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GCLP_HICON, align 4
  %20 = call i32 @GetClassLongPtrW(i32 %18, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %7, align 8
  br label %31

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GCLP_HICONSM, align 4
  %28 = call i32 @GetClassLongPtrW(i32 %26, i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %13, %23, %15
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local %struct.TYPE_3__* @Ghost_GetData(i32) #1

declare dso_local i32 @GetClassLongPtrW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
