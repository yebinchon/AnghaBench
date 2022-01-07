; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/pdh/extr_pdh_main.c_pdh_match_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/pdh/extr_pdh_main.c_pdh_match_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pdh_match_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdh_match_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 92
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 92
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = call i8* @strchrW(i8* %19, i8 signext 92)
  store i8* %20, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sub nsw i64 %29, 2
  %31 = trunc i64 %30 to i32
  %32 = call i64 @is_local_machine(i8* %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %34, %22, %17, %11, %2
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strchrW(i8* %43, i8 signext 92)
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  store i8* %47, i8** %5, align 8
  br label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @strrchrW(i8* %49, i8 signext 92)
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %48, %46
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strcmpW(i8* %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @is_local_machine(i8*, i32) #1

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @strcmpW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
