; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_fold.c_kfold_xload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_fold.c_kfold_xload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @kfold_xload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfold_xload(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @irt_type(i32 %11)
  switch i32 %12, label %42 [
    i32 132, label %13
    i32 134, label %19
    i32 128, label %23
    i32 136, label %27
    i32 131, label %30
    i32 133, label %33
    i32 130, label %33
    i32 135, label %36
    i32 129, label %36
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lj_ir_knum_u64(i32* %14, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @lj_getu16(i8* %28)
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @lj_getu16(i8* %31)
  store i32 %32, i32* %8, align 4
  br label %43

33:                                               ; preds = %3, %3
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @lj_getu32(i8* %34)
  store i32 %35, i32* %8, align 4
  br label %43

36:                                               ; preds = %3, %3
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lj_ir_kint64(i32* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

43:                                               ; preds = %33, %30, %27, %23, %19
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @lj_ir_kint(i32* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %42, %36, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @irt_type(i32) #1

declare dso_local i32 @lj_ir_knum_u64(i32*, i32) #1

declare dso_local i32 @lj_getu16(i8*) #1

declare dso_local i32 @lj_getu32(i8*) #1

declare dso_local i32 @lj_ir_kint64(i32*, i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
