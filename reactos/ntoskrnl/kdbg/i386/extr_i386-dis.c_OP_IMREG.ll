; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_IMREG.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_IMREG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intel_syntax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[dx]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%dx)\00", align 1
@names16 = common dso_local global i8** null, align 8
@names_seg = common dso_local global i8** null, align 8
@rex = common dso_local global i32 0, align 4
@names8rex = common dso_local global i8** null, align 8
@names8 = common dso_local global i8** null, align 8
@REX_MODE64 = common dso_local global i32 0, align 4
@names64 = common dso_local global i8** null, align 8
@DFLAG = common dso_local global i32 0, align 4
@names32 = common dso_local global i8** null, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_IMREG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_IMREG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %86 [
    i32 131, label %7
    i32 156, label %13
    i32 148, label %13
    i32 143, label %13
    i32 152, label %13
    i32 129, label %13
    i32 153, label %13
    i32 130, label %13
    i32 146, label %13
    i32 134, label %20
    i32 128, label %20
    i32 149, label %20
    i32 144, label %20
    i32 133, label %20
    i32 132, label %20
    i32 157, label %27
    i32 158, label %27
    i32 150, label %27
    i32 151, label %27
    i32 145, label %27
    i32 147, label %27
    i32 154, label %27
    i32 155, label %27
    i32 142, label %46
    i32 139, label %46
    i32 137, label %46
    i32 140, label %46
    i32 135, label %46
    i32 141, label %46
    i32 136, label %46
    i32 138, label %46
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @intel_syntax, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %11, %10
  br label %88

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load i8**, i8*** @names16, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 156
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  br label %88

20:                                               ; preds = %2, %2, %2, %2, %2, %2
  %21 = load i8**, i8*** @names_seg, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 134
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  br label %88

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %28 = call i32 @USED_REX(i32 0)
  %29 = load i32, i32* @rex, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8**, i8*** @names8rex, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 157
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  br label %45

38:                                               ; preds = %27
  %39 = load i8**, i8*** @names8, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 157
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %38, %31
  br label %88

46:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %47 = load i32, i32* @REX_MODE64, align 4
  %48 = call i32 @USED_REX(i32 %47)
  %49 = load i32, i32* @rex, align 4
  %50 = load i32, i32* @REX_MODE64, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8**, i8*** @names64, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 142
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %5, align 8
  br label %80

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @DFLAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8**, i8*** @names32, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %67, 142
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %5, align 8
  br label %79

72:                                               ; preds = %60
  %73 = load i8**, i8*** @names16, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %74, 142
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32, i32* @prefixes, align 4
  %82 = load i32, i32* @PREFIX_DATA, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @used_prefixes, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* @used_prefixes, align 4
  br label %88

86:                                               ; preds = %2
  %87 = load i8*, i8** @INTERNAL_DISASSEMBLER_ERROR, align 8
  store i8* %87, i8** %5, align 8
  br label %88

88:                                               ; preds = %86, %80, %45, %20, %13, %12
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @oappend(i8* %89)
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
