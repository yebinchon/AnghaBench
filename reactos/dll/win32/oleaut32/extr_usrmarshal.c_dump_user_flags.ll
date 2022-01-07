; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_usrmarshal.c_dump_user_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_usrmarshal.c_dump_user_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"MAKELONG(NDR_LOCAL_REPRESENTATION, \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MAKELONG(0x%04x, \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MSHCTX_LOCAL)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"MSHCTX_NOSHAREDMEM)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"MSHCTX_DIFFERENTMACHINE)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MSHCTX_INPROC)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_user_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_user_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @HIWORD(i32 %4)
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @NDR_LOCAL_DATA_REPRESENTATION, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %16

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HIWORD(i32 %13)
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %9
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LOWORD(i32 %18)
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %22
    i32 131, label %24
    i32 130, label %26
  ]

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %33

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %33

24:                                               ; preds = %16
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %33

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %33

28:                                               ; preds = %16
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LOWORD(i32 %30)
  %32 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %26, %24, %22, %20
  ret void
}

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
