; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_ptr_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_ptr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_char = common dso_local global i32 0, align 4
@obufp = common dso_local global i64* null, align 8
@REX_MODE64 = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@AFLAG = common dso_local global i32 0, align 4
@names32 = common dso_local global i8** null, align 8
@eAX_reg = common dso_local global i32 0, align 4
@names64 = common dso_local global i8** null, align 8
@names16 = common dso_local global i8** null, align 8
@close_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ptr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptr_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @open_char, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64*, i64** @obufp, align 8
  %9 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %9, i64** @obufp, align 8
  store i64 %7, i64* %8, align 8
  %10 = load i32, i32* @REX_MODE64, align 4
  %11 = call i32 @USED_REX(i32 %10)
  %12 = load i32, i32* @rex, align 4
  %13 = load i32, i32* @REX_MODE64, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AFLAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load i8**, i8*** @names32, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @eAX_reg, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %22, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %37

29:                                               ; preds = %16
  %30 = load i8**, i8*** @names64, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @eAX_reg, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %30, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %29, %21
  br label %60

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AFLAG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8**, i8*** @names32, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @eAX_reg, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %5, align 8
  br label %59

51:                                               ; preds = %38
  %52 = load i8**, i8*** @names16, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @eAX_reg, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @oappend(i8* %61)
  %63 = load i32, i32* @close_char, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** @obufp, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** @obufp, align 8
  store i64 %64, i64* %65, align 8
  %67 = load i64*, i64** @obufp, align 8
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @oappend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
