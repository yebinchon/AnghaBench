; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListUnion.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32*)* @docListUnion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListUnion(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dataBufferAppend(i32* %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  br label %92

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dataBufferAppend(i32* %29, i8* %30, i32 %31)
  br label %92

33:                                               ; preds = %25
  %34 = load i32, i32* @DL_DEFAULT, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dlrInit(i32* %11, i32 %34, i8* %35, i32 %36)
  %38 = load i32, i32* @DL_DEFAULT, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dlrInit(i32* %12, i32 %38, i8* %39, i32 %40)
  %42 = load i32, i32* @DL_DEFAULT, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @dlwInit(i32* %13, i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %87, %33
  %46 = call i64 @dlrAtEnd(i32* %11)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call i64 @dlrAtEnd(i32* %12)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ true, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %88

54:                                               ; preds = %52
  %55 = call i64 @dlrAtEnd(i32* %12)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @dlwCopy(i32* %13, i32* %11)
  %59 = call i32 @dlrStep(i32* %11)
  br label %87

60:                                               ; preds = %54
  %61 = call i64 @dlrAtEnd(i32* %11)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @dlwCopy(i32* %13, i32* %12)
  %65 = call i32 @dlrStep(i32* %12)
  br label %86

66:                                               ; preds = %60
  %67 = call i64 @dlrDocid(i32* %11)
  %68 = call i64 @dlrDocid(i32* %12)
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 @dlwCopy(i32* %13, i32* %11)
  %72 = call i32 @dlrStep(i32* %11)
  br label %85

73:                                               ; preds = %66
  %74 = call i64 @dlrDocid(i32* %11)
  %75 = call i64 @dlrDocid(i32* %12)
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32 @dlwCopy(i32* %13, i32* %12)
  %79 = call i32 @dlrStep(i32* %12)
  br label %84

80:                                               ; preds = %73
  %81 = call i32 @posListUnion(i32* %11, i32* %12, i32* %13)
  %82 = call i32 @dlrStep(i32* %11)
  %83 = call i32 @dlrStep(i32* %12)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %57
  br label %45

88:                                               ; preds = %52
  %89 = call i32 @dlrDestroy(i32* %11)
  %90 = call i32 @dlrDestroy(i32* %12)
  %91 = call i32 @dlwDestroy(i32* %13)
  br label %92

92:                                               ; preds = %88, %28, %24
  ret void
}

declare dso_local i32 @dataBufferAppend(i32*, i8*, i32) #1

declare dso_local i32 @dlrInit(i32*, i32, i8*, i32) #1

declare dso_local i32 @dlwInit(i32*, i32, i32*) #1

declare dso_local i64 @dlrAtEnd(i32*) #1

declare dso_local i32 @dlwCopy(i32*, i32*) #1

declare dso_local i32 @dlrStep(i32*) #1

declare dso_local i64 @dlrDocid(i32*) #1

declare dso_local i32 @posListUnion(i32*, i32*, i32*) #1

declare dso_local i32 @dlrDestroy(i32*) #1

declare dso_local i32 @dlwDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
