; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_verify_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_verify_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  br label %15

5:                                                ; No predecessors!
  br label %6

6:                                                ; preds = %30, %27, %21, %5
  %7 = load i8, i8* %4, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 1, i32* %2, align 4
  br label %34

10:                                               ; preds = %6
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %4, align 1
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %21 [
    i32 47, label %22
    i32 0, label %22
    i32 46, label %23
  ]

21:                                               ; preds = %15
  br label %6

22:                                               ; preds = %15, %15
  br label %29

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @verify_dotfile(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %6

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %22
  store i32 0, i32* %2, align 4
  br label %34

30:                                               ; preds = %10
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8, i8* %31, align 1
  store i8 %33, i8* %4, align 1
  br label %6

34:                                               ; preds = %29, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @verify_dotfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
