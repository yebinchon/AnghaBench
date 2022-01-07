; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_get_app_version.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_get_app_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@get_app_version.version = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_app_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_app_version() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @get_app_version.version, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  %7 = call i64 @GetProcessVersion(i32 0)
  store i64 %7, i64* %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = call i32 @GetVersionExW(%struct.TYPE_3__* %2)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @MAKELONG(i32 %11, i32 %13)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %1, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i64, i64* %3, align 8
  br label %22

20:                                               ; preds = %6
  %21 = load i64, i64* %1, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* @get_app_version.version, align 8
  br label %24

24:                                               ; preds = %22, %0
  %25 = load i64, i64* @get_app_version.version, align 8
  ret i64 %25
}

declare dso_local i64 @GetProcessVersion(i32) #1

declare dso_local i32 @GetVersionExW(%struct.TYPE_3__*) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
