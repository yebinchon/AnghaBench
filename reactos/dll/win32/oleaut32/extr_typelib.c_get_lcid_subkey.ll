; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_get_lcid_subkey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_get_lcid_subkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_lcid_subkey.LcidFormatW = internal constant [5 x i8] c"%lx\\\00", align 1
@get_lcid_subkey.win16W = internal constant [6 x i8] c"win16\00", align 1
@get_lcid_subkey.win32W = internal constant [6 x i8] c"win32\00", align 1
@get_lcid_subkey.win64W = internal constant [6 x i8] c"win64\00", align 1
@.str = private unnamed_addr constant [39 x i8] c"Typelib is for unsupported syskind %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*)* @get_lcid_subkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_lcid_subkey(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @sprintfW(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_lcid_subkey.LcidFormatW, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %21 [
    i32 130, label %12
    i32 129, label %15
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strcatW(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_lcid_subkey.win16W, i64 0, i64 0))
  br label %24

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strcatW(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_lcid_subkey.win32W, i64 0, i64 0))
  br label %24

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcatW(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_lcid_subkey.win64W, i64 0, i64 0))
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i8* null, i8** %4, align 8
  br label %26

24:                                               ; preds = %18, %15, %12
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
