; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_firstToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_firstToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_SPACE = common dso_local global i32 0, align 4
@TOKEN_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @firstToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @firstToken(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %2, %37
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @getToken(i8* %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @TOKEN_SPACE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  br label %37

19:                                               ; preds = %8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TOKEN_EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  store i8* null, i8** %3, align 8
  br label %38

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @dequoteString(i8* %34)
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %3, align 8
  br label %38

37:                                               ; preds = %14
  br label %8

38:                                               ; preds = %26, %23
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @getToken(i8*, i32*) #1

declare dso_local i32 @dequoteString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
