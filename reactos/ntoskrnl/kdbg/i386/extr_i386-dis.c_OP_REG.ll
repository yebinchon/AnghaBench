; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_REG.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REX_EXTZ = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[dx]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%dx)\00", align 1
@names16 = common dso_local global i8** null, align 8
@names_seg = common dso_local global i8** null, align 8
@names8rex = common dso_local global i8** null, align 8
@names8 = common dso_local global i8** null, align 8
@mode_64bit = common dso_local global i32 0, align 4
@names64 = common dso_local global i8** null, align 8
@REX_MODE64 = common dso_local global i32 0, align 4
@DFLAG = common dso_local global i32 0, align 4
@names32 = common dso_local global i8** null, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_REG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @REX_EXTZ, align 4
  %8 = call i32 @USED_REX(i32 %7)
  %9 = load i32, i32* @rex, align 4
  %10 = load i32, i32* @REX_EXTZ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %122 [
    i32 139, label %16
    i32 164, label %22
    i32 156, label %22
    i32 151, label %22
    i32 160, label %22
    i32 129, label %22
    i32 161, label %22
    i32 130, label %22
    i32 154, label %22
    i32 142, label %31
    i32 128, label %31
    i32 157, label %31
    i32 152, label %31
    i32 141, label %31
    i32 140, label %31
    i32 165, label %40
    i32 166, label %40
    i32 158, label %40
    i32 159, label %40
    i32 153, label %40
    i32 155, label %40
    i32 162, label %40
    i32 163, label %40
    i32 138, label %61
    i32 135, label %61
    i32 133, label %61
    i32 136, label %61
    i32 131, label %61
    i32 137, label %61
    i32 132, label %61
    i32 134, label %61
    i32 150, label %76
    i32 147, label %76
    i32 145, label %76
    i32 148, label %76
    i32 143, label %76
    i32 149, label %76
    i32 144, label %76
    i32 146, label %76
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @intel_syntax, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %21

21:                                               ; preds = %20, %19
  br label %124

22:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %23 = load i8**, i8*** @names16, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 164
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %23, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %124

31:                                               ; preds = %14, %14, %14, %14, %14, %14
  %32 = load i8**, i8*** @names_seg, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 142
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %32, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  br label %124

40:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %41 = call i32 @USED_REX(i32 0)
  %42 = load i32, i32* @rex, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8**, i8*** @names8rex, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 165
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %45, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %5, align 8
  br label %60

53:                                               ; preds = %40
  %54 = load i8**, i8*** @names8, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 165
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %53, %44
  br label %124

61:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %62 = load i32, i32* @mode_64bit, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i8**, i8*** @names64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, 138
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %65, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %5, align 8
  br label %124

73:                                               ; preds = %61
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 12
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %73
  %77 = load i32, i32* @REX_MODE64, align 4
  %78 = call i32 @USED_REX(i32 %77)
  %79 = load i32, i32* @rex, align 4
  %80 = load i32, i32* @REX_MODE64, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i8**, i8*** @names64, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sub nsw i32 %85, 150
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %84, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %5, align 8
  br label %116

92:                                               ; preds = %76
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @DFLAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8**, i8*** @names32, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sub nsw i32 %99, 150
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %98, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %5, align 8
  br label %115

106:                                              ; preds = %92
  %107 = load i8**, i8*** @names16, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sub nsw i32 %108, 150
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %107, i64 %112
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i32, i32* @prefixes, align 4
  %118 = load i32, i32* @PREFIX_DATA, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @used_prefixes, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* @used_prefixes, align 4
  br label %124

122:                                              ; preds = %14
  %123 = load i8*, i8** @INTERNAL_DISASSEMBLER_ERROR, align 8
  store i8* %123, i8** %5, align 8
  br label %124

124:                                              ; preds = %122, %116, %64, %60, %31, %22, %21
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @oappend(i8* %125)
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
