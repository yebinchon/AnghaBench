; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_strip_spaces.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_strip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @strip_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_spaces(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  br label %6

14:                                               ; preds = %6
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlenW(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memmove(i8* %19, i8* %20, i32 %26)
  br label %28

28:                                               ; preds = %18, %14
  %29 = load i8*, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strlenW(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %46, %28
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load i8*, i8** %4, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %4, align 8
  br label %35

50:                                               ; preds = %44
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
