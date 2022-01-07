; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_stringw.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_stringw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEROPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 60, i32 78, i32 85, i32 76, i32 76, i32 62, i32 0], align 4
@LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32, i32, i32, i32)* @stringw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stringw(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @ZEROPAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 48, i32 32
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %16, align 1
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i8* bitcast ([7 x i32]* @.str to i8*), i8** %10, align 8
  store i32 6, i32* %11, align 4
  br label %57

27:                                               ; preds = %7
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i1 [ false, %31 ], [ %42, %35 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %31

48:                                               ; preds = %43
  br label %56

49:                                               ; preds = %27
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @LEFT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %12, align 4
  %67 = icmp slt i32 %64, %65
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ule i8* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8, i8* %16, align 1
  %74 = load i8*, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %63

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %57
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ule i8* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  %91 = load i8, i8* %89, align 1
  %92 = load i8*, i8** %8, align 8
  store i8 %91, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %80

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %12, align 4
  %104 = icmp slt i32 %101, %102
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = icmp ule i8* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  store i8 32, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %100

114:                                              ; preds = %100
  %115 = load i8*, i8** %8, align 8
  ret i8* %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
