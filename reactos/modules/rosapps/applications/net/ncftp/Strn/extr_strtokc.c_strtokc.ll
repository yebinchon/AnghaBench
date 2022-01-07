; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_strtokc.c_strtokc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_strtokc.c_strtokc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtokc(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load i8**, i8*** %7, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %4, align 8
  br label %99

28:                                               ; preds = %23
  %29 = load i8*, i8** %12, align 8
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8**, i8*** %7, align 8
  store i8* null, i8** %39, align 8
  store i8* null, i8** %4, align 8
  br label %99

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %59, %40
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %11, align 1
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8* %51, i8** %12, align 8
  br label %60

52:                                               ; preds = %42
  %53 = load i8, i8* %11, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* %10, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %31

59:                                               ; preds = %52
  br label %42

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %10, align 1
  %64 = load i8, i8* %10, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  br label %97

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %92, %70
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i8, i8* %73, align 1
  store i8 %75, i8* %11, align 1
  %76 = load i8, i8* %11, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %93

80:                                               ; preds = %72
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %10, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  store i8 0, i8* %87, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = load i8**, i8*** %7, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %12, align 8
  store i8* %91, i8** %4, align 8
  br label %99

92:                                               ; preds = %80
  br label %72

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  br label %61

97:                                               ; preds = %67
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %97, %86, %38, %26
  %100 = load i8*, i8** %4, align 8
  ret i8* %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
