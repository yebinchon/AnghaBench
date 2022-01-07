; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lvm.c_l_strcmp.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lvm.c_l_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @l_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_strcmp(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @getstr(i32* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @tsslen(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @getstr(i32* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @tsslen(i32* %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %61, %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcoll(i8* %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %62

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %46
  br label %20

62:                                               ; preds = %44, %34, %26
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i8* @getstr(i32*) #1

declare dso_local i64 @tsslen(i32*) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
