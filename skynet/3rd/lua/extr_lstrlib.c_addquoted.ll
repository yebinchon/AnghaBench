; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_addquoted.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_addquoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\%03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @addquoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addquoted(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @luaL_addchar(i32* %8, i8 signext 34)
  br label %10

10:                                               ; preds = %73, %3
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %19, %14
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @luaL_addchar(i32* %30, i8 signext 92)
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @luaL_addchar(i32* %32, i8 signext %34)
  br label %73

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @uchar(i8 signext %38)
  %40 = call i64 @iscntrl(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @uchar(i8 signext %45)
  %47 = call i32 @isdigit(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @uchar(i8 signext %52)
  %54 = trunc i64 %53 to i32
  %55 = call i32 @l_sprintf(i8* %50, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %63

56:                                               ; preds = %42
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @uchar(i8 signext %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @l_sprintf(i8* %57, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %66 = call i32 @luaL_addstring(i32* %64, i8* %65)
  br label %72

67:                                               ; preds = %36
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @luaL_addchar(i32* %68, i8 signext %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %10

76:                                               ; preds = %10
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @luaL_addchar(i32* %77, i8 signext 34)
  ret void
}

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i64 @iscntrl(i64) #1

declare dso_local i64 @uchar(i8 signext) #1

declare dso_local i32 @isdigit(i64) #1

declare dso_local i32 @l_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @luaL_addstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
