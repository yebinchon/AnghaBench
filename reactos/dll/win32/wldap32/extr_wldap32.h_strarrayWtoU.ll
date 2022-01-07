; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wldap32/extr_wldap32.h_strarrayWtoU.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wldap32/extr_wldap32.h_strarrayWtoU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i64*)* @strarrayWtoU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @strarrayWtoU(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  store i64* %0, i64** %2, align 8
  store i8** null, i8*** %3, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load i64*, i64** %2, align 8
  %11 = call i32 @strarraylenW(i64* %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8** @heap_alloc(i32 %16)
  store i8** %17, i8*** %3, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %9
  %20 = load i64*, i64** %2, align 8
  store i64* %20, i64** %5, align 8
  %21 = load i8**, i8*** %3, align 8
  store i8** %21, i8*** %6, align 8
  br label %22

22:                                               ; preds = %26, %19
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64*, i64** %5, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %5, align 8
  %29 = load i64, i64* %27, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @strWtoU(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load i8**, i8*** %6, align 8
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %9
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i8**, i8*** %3, align 8
  ret i8** %40
}

declare dso_local i32 @strarraylenW(i64*) #1

declare dso_local i8** @heap_alloc(i32) #1

declare dso_local i32 @strWtoU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
