; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_init_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ROWS\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\0A*** Error: getline(): not interactive, use stdio.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @gl_init_done, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %0
  %6 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 20
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @gl_setwidth(i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %5
  %20 = call i64 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %1, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp sgt i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @gl_setheight(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %19
  %34 = call i32 (...) @hist_init()
  br label %35

35:                                               ; preds = %33, %0
  %36 = call i64 @_isatty(i32 0)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call i64 @_isatty(i32 1)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %35
  %42 = call i32 @gl_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = call i32 (...) @gl_char_init()
  store i32 1, i32* @gl_init_done, align 4
  ret void
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @gl_setwidth(i32) #1

declare dso_local i32 @gl_setheight(i32) #1

declare dso_local i32 @hist_init(...) #1

declare dso_local i64 @_isatty(i32) #1

declare dso_local i32 @gl_error(i8*) #1

declare dso_local i32 @gl_char_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
