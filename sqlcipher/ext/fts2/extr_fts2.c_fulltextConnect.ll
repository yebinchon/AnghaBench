; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fulltextConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i8**, i8*** %11, align 8
  %18 = load i8**, i8*** %13, align 8
  %19 = call i32 @parseSpec(i32* %14, i32 %16, i8** %17, i8** %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32**, i32*** %12, align 8
  %30 = load i8**, i8*** %13, align 8
  %31 = call i32 @constructVtab(i32* %26, i32* %28, i32* %14, i32** %29, i8** %30)
  store i32 %31, i32* %15, align 4
  %32 = call i32 @clearTableSpec(i32* %14)
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @parseSpec(i32*, i32, i8**, i8**) #1

declare dso_local i32 @constructVtab(i32*, i32*, i32*, i32**, i8**) #1

declare dso_local i32 @clearTableSpec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
