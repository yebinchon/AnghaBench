; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputHeader_asmstub.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputHeader_asmstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"; File generated automatically, do not edit! \0A\0A\00", align 1
@giArch = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c".586\0A.model flat\0A.code\0A\00", align 1
@ARCH_AMD64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c".code\0A\00", align 1
@ARCH_ARM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"    AREA |.text|,ALIGN=2,CODE,READONLY\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputHeader_asmstub(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @giArch, align 8
  %8 = load i64, i64* @ARCH_X86, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

13:                                               ; preds = %2
  %14 = load i64, i64* @giArch, align 8
  %15 = load i64, i64* @ARCH_AMD64, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %28

20:                                               ; preds = %13
  %21 = load i64, i64* @giArch, align 8
  %22 = load i64, i64* @ARCH_ARM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
