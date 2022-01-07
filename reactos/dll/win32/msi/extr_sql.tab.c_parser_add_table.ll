; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_parser_add_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_parser_add_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parser_add_table.space = internal constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*)* @parser_add_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parser_add_table(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlenW(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlenW(i8* %11)
  %13 = add nsw i32 %10, %12
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i64 @parser_alloc(i8* %15, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcpyW(i64 %24, i8* %25)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @strcatW(i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @parser_add_table.space, i64 0, i64 0))
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcatW(i64 %29, i8* %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load i64, i64* %8, align 8
  ret i64 %33
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @parser_alloc(i8*, i32) #1

declare dso_local i32 @strcpyW(i64, i8*) #1

declare dso_local i32 @strcatW(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
