; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetBindlist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetBindlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @rbuObjIterGetBindlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbuObjIterGetBindlist(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 2, %8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @rbuMalloc(i32* %11, i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 63, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 44
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 %34, i8* %40, align 1
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %18

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i64 @rbuMalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
