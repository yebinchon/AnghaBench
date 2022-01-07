; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ask-password-api.c_ask_password_auto.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ask-password-api.c_ask_password_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASK_PASSWORD_ACCEPT_CACHED = common dso_local global i32 0, align 4
@ASK_PASSWORD_NO_TTY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@ASK_PASSWORD_NO_AGENT = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ask_password_auto(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8*** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8***, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8*** %6, i8**** %15, align 8
  %17 = load i8***, i8**** %15, align 8
  %18 = call i32 @assert(i8*** %17)
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @ASK_PASSWORD_ACCEPT_CACHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %7
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @ASK_PASSWORD_NO_TTY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @STDIN_FILENO, align 4
  %33 = call i64 @isatty(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @ASK_PASSWORD_NO_AGENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i8***, i8**** %15, align 8
  %44 = call i32 @ask_password_keyring(i8* %41, i32 %42, i8*** %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @ENOKEY, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %8, align 4
  br label %85

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %35, %31, %23, %7
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @ASK_PASSWORD_NO_TTY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @STDIN_FILENO, align 4
  %59 = call i64 @isatty(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i8***, i8**** %15, align 8
  %67 = call i32 @ask_password_tty(i32 -1, i8* %62, i8* %63, i32 %64, i32 %65, i32* null, i8*** %66)
  store i32 %67, i32* %8, align 4
  br label %85

68:                                               ; preds = %57, %52
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ASK_PASSWORD_NO_AGENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i8***, i8**** %15, align 8
  %81 = call i32 @ask_password_agent(i8* %74, i8* %75, i8* %76, i8* %77, i32 %78, i32 %79, i8*** %80)
  store i32 %81, i32* %8, align 4
  br label %85

82:                                               ; preds = %68
  %83 = load i32, i32* @EUNATCH, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %73, %61, %49
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i8***) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @ask_password_keyring(i8*, i32, i8***) #1

declare dso_local i32 @ask_password_tty(i32, i8*, i8*, i32, i32, i32*, i8***) #1

declare dso_local i32 @ask_password_agent(i8*, i8*, i8*, i8*, i32, i32, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
