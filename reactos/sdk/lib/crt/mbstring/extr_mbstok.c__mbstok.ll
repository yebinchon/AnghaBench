; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbstok.c__mbstok.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbstok.c__mbstok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_mbstok.last = internal global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_mbstok(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** @_mbstok.last, align 8
  store i8* %13, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %75

16:                                               ; preds = %12, %2
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @_mbsinc(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %35, %17
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %17

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @_mbsinc(i8* %36)
  store i8* %37, i8** %6, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* null, i8** @_mbstok.last, align 8
  store i8* null, i8** %3, align 8
  br label %75

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %74, %42
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @_mbsinc(i8* %49)
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %71, %45
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i8* null, i8** %4, align 8
  br label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %61
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** @_mbstok.last, align 8
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %3, align 8
  br label %75

68:                                               ; preds = %52
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @_mbsinc(i8* %69)
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %52, label %74

74:                                               ; preds = %71
  br label %45

75:                                               ; preds = %65, %41, %15
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare dso_local i8* @_mbsinc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
