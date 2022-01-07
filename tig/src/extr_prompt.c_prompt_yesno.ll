; ModuleID = '/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_yesno.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_yesno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, i32*, i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@prompt_yesno_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s [Yy/Nn]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prompt_yesno(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.input, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @SIZEOF_STR, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = getelementptr inbounds %struct.input, %struct.input* %6, i32 0, i32 0
  %13 = load i32, i32* @prompt_yesno_handler, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.input, %struct.input* %6, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.input, %struct.input* %6, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @string_format(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %26

20:                                               ; preds = %1
  %21 = call i32 @prompt_input(i8* %11, %struct.input* %6)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @string_format(i8*, i8*, i8*) #2

declare dso_local i32 @prompt_input(i8*, %struct.input*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
