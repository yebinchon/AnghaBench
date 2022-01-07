; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_getpass.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_getpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gl_getpass(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @memset(i8* %9, i32 0, i64 4)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @gl_init()
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @gl_puts(i8* %23)
  br label %25

25:                                               ; preds = %22, %16, %3
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %68, %25
  %28 = call i32 (...) @gl_getc()
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30
  br label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 127
  br i1 %42, label %43, label %54

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ugt i8* %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %7, align 8
  store i8 0, i8* %49, align 1
  %50 = call i32 @gl_putc(i8 signext 8)
  %51 = call i32 @gl_putc(i8 signext 32)
  %52 = call i32 @gl_putc(i8 signext 8)
  br label %53

53:                                               ; preds = %47, %43
  br label %68

54:                                               ; preds = %40
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = icmp ult i8* %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = call i32 @gl_putc(i8 signext 42)
  %63 = load i32, i32* %8, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  store i8 %64, i8* %65, align 1
  br label %67

67:                                               ; preds = %61, %54
  br label %68

68:                                               ; preds = %67, %53
  br label %27

69:                                               ; preds = %36, %27
  %70 = load i8*, i8** %7, align 8
  store i8 0, i8* %70, align 1
  %71 = call i32 @gl_putc(i8 signext 10)
  %72 = call i32 (...) @gl_cleanup()
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @gl_init(...) #1

declare dso_local i32 @gl_puts(i8*) #1

declare dso_local i32 @gl_getc(...) #1

declare dso_local i32 @gl_putc(i8 signext) #1

declare dso_local i32 @gl_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
