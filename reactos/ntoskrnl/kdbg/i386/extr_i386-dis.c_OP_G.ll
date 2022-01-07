; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_G.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_G.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REX_EXTX = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@names8rex = common dso_local global i32* null, align 8
@reg = common dso_local global i32 0, align 4
@names8 = common dso_local global i32* null, align 8
@names16 = common dso_local global i32* null, align 8
@names32 = common dso_local global i32* null, align 8
@names64 = common dso_local global i32* null, align 8
@REX_MODE64 = common dso_local global i32 0, align 4
@DFLAG = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_G to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_G(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @REX_EXTX, align 4
  %7 = call i32 @USED_REX(i32 %6)
  %8 = load i32, i32* @rex, align 4
  %9 = load i32, i32* @REX_EXTX, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %113 [
    i32 132, label %17
    i32 128, label %40
    i32 131, label %49
    i32 130, label %58
    i32 129, label %67
  ]

17:                                               ; preds = %15
  %18 = call i32 @USED_REX(i32 0)
  %19 = load i32, i32* @rex, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** @names8rex, align 8
  %23 = load i32, i32* @reg, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @oappend(i32 %28)
  br label %39

30:                                               ; preds = %17
  %31 = load i32*, i32** @names8, align 8
  %32 = load i32, i32* @reg, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @oappend(i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %116

40:                                               ; preds = %15
  %41 = load i32*, i32** @names16, align 8
  %42 = load i32, i32* @reg, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @oappend(i32 %47)
  br label %116

49:                                               ; preds = %15
  %50 = load i32*, i32** @names32, align 8
  %51 = load i32, i32* @reg, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @oappend(i32 %56)
  br label %116

58:                                               ; preds = %15
  %59 = load i32*, i32** @names64, align 8
  %60 = load i32, i32* @reg, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @oappend(i32 %65)
  br label %116

67:                                               ; preds = %15
  %68 = load i32, i32* @REX_MODE64, align 4
  %69 = call i32 @USED_REX(i32 %68)
  %70 = load i32, i32* @rex, align 4
  %71 = load i32, i32* @REX_MODE64, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32*, i32** @names64, align 8
  %76 = load i32, i32* @reg, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @oappend(i32 %81)
  br label %107

83:                                               ; preds = %67
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @DFLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32*, i32** @names32, align 8
  %90 = load i32, i32* @reg, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @oappend(i32 %95)
  br label %106

97:                                               ; preds = %83
  %98 = load i32*, i32** @names16, align 8
  %99 = load i32, i32* @reg, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @oappend(i32 %104)
  br label %106

106:                                              ; preds = %97, %88
  br label %107

107:                                              ; preds = %106, %74
  %108 = load i32, i32* @prefixes, align 4
  %109 = load i32, i32* @PREFIX_DATA, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @used_prefixes, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* @used_prefixes, align 4
  br label %116

113:                                              ; preds = %15
  %114 = load i32, i32* @INTERNAL_DISASSEMBLER_ERROR, align 4
  %115 = call i32 @oappend(i32 %114)
  br label %116

116:                                              ; preds = %113, %107, %58, %49, %40, %39
  ret void
}

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @oappend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
