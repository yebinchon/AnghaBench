; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_bindctx.c_get_callback_iface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_bindctx.c_get_callback_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32)* @get_callback_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_callback_iface(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IBindStatusCallback_QueryInterface(i32 %9, i32 %10, i8** %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @FAILED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IServiceProvider_QueryService(i64 %23, i32 %24, i32 %25, i8** %5)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %15, %2
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ null, %33 ]
  ret i8* %35
}

declare dso_local i32 @IBindStatusCallback_QueryInterface(i32, i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IServiceProvider_QueryService(i64, i32, i32, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
