; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_cgets.c__cgets.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_cgets.c__cgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_cgets(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %80

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %68, %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %18
  %24 = call i32 (...) @_getch()
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = call i32 @_cputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %30, %27
  br label %68

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  br label %69

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @_ungetch(i32 %55)
  br label %69

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = call signext i8 @_putch(i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %38
  br label %18

69:                                               ; preds = %50, %42, %18
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sub i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %4, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %69, %10
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @_getch(...) #1

declare dso_local i32 @_cputs(i8*) #1

declare dso_local i32 @_ungetch(i32) #1

declare dso_local signext i8 @_putch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
