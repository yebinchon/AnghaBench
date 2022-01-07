; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_put_char.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8)* @put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_char(i8** %0, i8 zeroext %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i64 @dos_char_to_printable(i8** %5, i8 zeroext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 127
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sge i32 %20, 160
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = load i8, i8* %4, align 1
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  store i8 %23, i8* %25, align 1
  br label %56

27:                                               ; preds = %18
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  store i8 92, i8* %29, align 1
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 6
  %34 = add nsw i32 48, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8**, i8*** %3, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  store i8 %35, i8* %37, align 1
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 7
  %43 = add nsw i32 48, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %45, align 8
  store i8 %44, i8* %46, align 1
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 7
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8**, i8*** %3, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  store i8 %52, i8* %54, align 1
  br label %56

56:                                               ; preds = %9, %27, %22
  ret void
}

declare dso_local i64 @dos_char_to_printable(i8**, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
