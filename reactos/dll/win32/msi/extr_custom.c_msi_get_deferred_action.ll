; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_msi_get_deferred_action.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_msi_get_deferred_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msi_get_deferred_action.format = internal constant [17 x i8] c"[%s<=>%s<=>%s]%s\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @msi_get_deferred_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_get_deferred_action(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strdupW(i8* %15)
  store i32 %16, i32* %5, align 4
  br label %44

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @lstrlenW(i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @lstrlenW(i8* %20)
  %22 = add nsw i32 %19, %21
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @lstrlenW(i8* %23)
  %25 = add nsw i32 %22, %24
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @lstrlenW(i8* %26)
  %28 = add nsw i32 %25, %27
  %29 = call i32 @lstrlenW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @msi_get_deferred_action.format, i64 0, i64 0))
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 7
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i32 @msi_alloc(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @sprintfW(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @msi_get_deferred_action.format, i64 0, i64 0), i8* %38, i8* %39, i8* %40, i8* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %17, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @strdupW(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @msi_alloc(i32) #1

declare dso_local i32 @sprintfW(i32, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
