; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_getToken.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_getToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_SPACE = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_JOIN_KW = common dso_local global i32 0, align 4
@TK_WINDOW = common dso_local global i32 0, align 4
@TK_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @getToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getToken(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @sqlite3GetToken(i8* %8, i32* %4)
  %10 = load i8*, i8** %3, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TK_SPACE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %7, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TK_ID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TK_STRING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TK_JOIN_KW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TK_WINDOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TK_OVER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @sqlite3ParserFallback(i32 %38)
  %40 = load i32, i32* @TK_ID, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %33, %29, %25, %21, %17
  %43 = load i32, i32* @TK_ID, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %3, align 8
  %46 = load i8**, i8*** %2, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sqlite3GetToken(i8*, i32*) #1

declare dso_local i32 @sqlite3ParserFallback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
