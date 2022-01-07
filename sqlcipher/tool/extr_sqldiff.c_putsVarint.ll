; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_putsVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_putsVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @putsVarint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putsVarint(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [12 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, undef
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 8
  store i8 %13, i8* %14, align 1
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %11
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 127
  %23 = or i32 %22, 128
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %26
  store i8 %24, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 7
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fwrite(i8* %34, i32 8, i32 1, i32* %35)
  br label %67

37:                                               ; preds = %2
  store i32 9, i32* %6, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 127
  %41 = or i32 %40, 128
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %47, 7
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %38, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 9
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 127
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 9, %63
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @fwrite(i8* %62, i32 %64, i32 1, i32* %65)
  br label %67

67:                                               ; preds = %52, %33
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
