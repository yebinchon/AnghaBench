; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/wpickclick/extr_wpickclick.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/wpickclick/extr_wpickclick.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %26, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br label %24

24:                                               ; preds = %19, %14, %9, %4
  %25 = phi i1 [ true, %14 ], [ true, %9 ], [ true, %4 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %4

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 10)
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 13
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br label %66

66:                                               ; preds = %61, %56, %51, %46
  %67 = phi i1 [ true, %56 ], [ true, %51 ], [ true, %46 ], [ %65, %61 ]
  br label %68

68:                                               ; preds = %66, %42
  %69 = phi i1 [ false, %42 ], [ %67, %66 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %3, align 8
  br label %42

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
