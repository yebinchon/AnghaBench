; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_mlang_getcsetinfo_from_cp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_mlang_getcsetinfo_from_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @mlang_getcsetinfo_from_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlang_getcsetinfo_from_cp(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mlang_getcodepageinfo(i32 %12, %struct.TYPE_3__* %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %30 [
    i32 130, label %21
    i32 129, label %24
    i32 128, label %27
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  br label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  br label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %19, %27, %24, %21
  %31 = call i32 @get_mlang(i32** %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @SUCCEEDED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @IMultiLanguage_GetCharsetInfo(i32* %36, i32* %37, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @IMultiLanguage_Release(i32* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mlang_getcodepageinfo(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_mlang(i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IMultiLanguage_GetCharsetInfo(i32*, i32*, i32*) #1

declare dso_local i32 @IMultiLanguage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
