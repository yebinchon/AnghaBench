; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadShpPictGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadShpPictGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@rtfEOF = common dso_local global i64 0, align 8
@rtfGroup = common dso_local global i32 0, align 4
@rtfEndGroup = common dso_local global i32 0, align 4
@rtfBeginGroup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ME_RTFReadShpPictGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_RTFReadShpPictGroup(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %47, %1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @RTFGetToken(%struct.TYPE_6__* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @rtfEOF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %51

13:                                               ; preds = %4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = load i32, i32* @rtfGroup, align 4
  %16 = load i32, i32* @rtfEndGroup, align 4
  %17 = call i64 @RTFCheckCM(%struct.TYPE_6__* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %48

24:                                               ; preds = %19
  br label %47

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = load i32, i32* @rtfGroup, align 4
  %28 = load i32, i32* @rtfBeginGroup, align 4
  %29 = call i64 @RTFCheckCM(%struct.TYPE_6__* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @RTFRouteToken(%struct.TYPE_6__* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = load i32, i32* @rtfGroup, align 4
  %39 = load i32, i32* @rtfEndGroup, align 4
  %40 = call i64 @RTFCheckCM(%struct.TYPE_6__* %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %24
  br label %4

48:                                               ; preds = %23
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = call i32 @RTFRouteToken(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @RTFGetToken(%struct.TYPE_6__*) #1

declare dso_local i64 @RTFCheckCM(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @RTFRouteToken(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
