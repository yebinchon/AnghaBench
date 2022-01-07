; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/extr_i386-stub-win32.c_putpacket.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/extr_i386-stub-win32.c_putpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexchars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %45, %1
  %7 = call i32 @putDebugChar(i8 signext 36)
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %16, %6
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load i8, i8* %5, align 1
  %18 = call i32 @putDebugChar(i8 signext %17)
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %8

27:                                               ; preds = %8
  %28 = call i32 @putDebugChar(i8 signext 35)
  %29 = load i8*, i8** @hexchars, align 8
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @putDebugChar(i8 signext %35)
  %37 = load i8*, i8** @hexchars, align 8
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = srem i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @putDebugChar(i8 signext %43)
  br label %45

45:                                               ; preds = %27
  %46 = call signext i8 (...) @getDebugChar()
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 43
  br i1 %48, label %6, label %49

49:                                               ; preds = %45
  ret void
}

declare dso_local i32 @putDebugChar(i8 signext) #1

declare dso_local signext i8 @getDebugChar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
