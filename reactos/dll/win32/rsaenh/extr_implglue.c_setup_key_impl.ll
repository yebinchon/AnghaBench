; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_setup_key_impl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_setup_key_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_key_impl(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %79 [
    i32 128, label %14
    i32 129, label %28
    i32 136, label %45
    i32 135, label %50
    i32 130, label %59
    i32 134, label %64
    i32 133, label %64
    i32 132, label %69
    i32 131, label %74
  ]

14:                                               ; preds = %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = call i32 @rc4_start(i32* %16)
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = call i32 @rc4_add_entropy(i32* %18, i32 %21, i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = call i32 @rc4_ready(i32* %26)
  br label %79

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 3
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = call i32 @rc2_setup(i32* %29, i32 %32, i32 %41, i32 0, i32* %43)
  br label %79

45:                                               ; preds = %6
  %46 = load i32*, i32** %12, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = call i32 @des3_setup(i32* %46, i32 24, i32 0, i32* %48)
  br label %79

50:                                               ; preds = %6
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 16
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 8)
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @des3_setup(i32* %55, i32 24, i32 0, i32* %57)
  br label %79

59:                                               ; preds = %6
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = call i32 @des_setup(i32* %60, i32 8, i32 0, i32* %62)
  br label %79

64:                                               ; preds = %6, %6
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @aes_setup(i32* %65, i32 16, i32 0, i32* %67)
  br label %79

69:                                               ; preds = %6
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @aes_setup(i32* %70, i32 24, i32 0, i32* %72)
  br label %79

74:                                               ; preds = %6
  %75 = load i32*, i32** %12, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @aes_setup(i32* %75, i32 32, i32 0, i32* %77)
  br label %79

79:                                               ; preds = %6, %74, %69, %64, %59, %50, %45, %40, %14
  %80 = load i32, i32* @TRUE, align 4
  ret i32 %80
}

declare dso_local i32 @rc4_start(i32*) #1

declare dso_local i32 @rc4_add_entropy(i32*, i32, i32*) #1

declare dso_local i32 @rc4_ready(i32*) #1

declare dso_local i32 @rc2_setup(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @des3_setup(i32*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @des_setup(i32*, i32, i32, i32*) #1

declare dso_local i32 @aes_setup(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
