; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_verifyrule.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_verifyrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@MAXRULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32)* @verifyrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verifyrule(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %12

12:                                               ; preds = %60, %41, %38, %25, %22, %19, %5
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %74 [
    i32 138, label %16
    i32 129, label %16
    i32 142, label %16
    i32 136, label %16
    i32 128, label %18
    i32 141, label %18
    i32 134, label %19
    i32 143, label %19
    i32 133, label %19
    i32 139, label %22
    i32 131, label %22
    i32 140, label %25
    i32 130, label %28
    i32 137, label %41
    i32 132, label %51
    i32 135, label %71
  ]

16:                                               ; preds = %12, %12, %12, %12
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %6, align 4
  br label %76

18:                                               ; preds = %12, %12
  store i32 1, i32* %6, align 4
  br label %76

19:                                               ; preds = %12, %12, %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  store i32 1, i32* %11, align 4
  br label %12

22:                                               ; preds = %12, %12
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %8, align 8
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = call %struct.TYPE_8__* @sib2(%struct.TYPE_8__* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @verifyrule(i32* %29, %struct.TYPE_8__* %31, i32* %32, i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %6, align 4
  br label %76

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = call %struct.TYPE_8__* @sib2(%struct.TYPE_8__* %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @verifyrule(i32* %42, %struct.TYPE_8__* %44, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = call %struct.TYPE_8__* @sib2(%struct.TYPE_8__* %49)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %8, align 8
  br label %12

51:                                               ; preds = %12
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @MAXRULES, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @verifyerror(i32* %56, i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  br label %12

71:                                               ; preds = %12
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = call i32 @nullable(%struct.TYPE_8__* %72)
  store i32 %73, i32* %6, align 4
  br label %76

74:                                               ; preds = %12
  %75 = call i32 @assert(i32 0)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %71, %55, %36, %18, %16
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_8__* @sib1(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @sib2(%struct.TYPE_8__*) #1

declare dso_local i32 @verifyerror(i32*, i32*, i32) #1

declare dso_local i32 @nullable(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
