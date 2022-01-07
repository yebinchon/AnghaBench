; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_utf.c_sqlite3Utf8Read.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_utf.c_sqlite3Utf8Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3Utf8Trans1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Utf8Read(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %4, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp uge i32 %9, 192
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load i32*, i32** @sqlite3Utf8Trans1, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub i32 %13, 192
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %25, %11
  %19 = load i8**, i8*** %2, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 192
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 6
  %28 = load i8**, i8*** %2, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 63, %32
  %34 = add i32 %27, %33
  store i32 %34, i32* %3, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %3, align 4
  %37 = icmp ult i32 %36, 128
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, -2048
  %41 = icmp eq i32 %40, 55296
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, -2
  %45 = icmp eq i32 %44, 65534
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %35
  store i32 65533, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
