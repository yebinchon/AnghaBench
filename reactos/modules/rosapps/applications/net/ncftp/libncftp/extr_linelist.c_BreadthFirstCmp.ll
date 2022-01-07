; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_BreadthFirstCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_BreadthFirstCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @BreadthFirstCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BreadthFirstCmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__**, align 8
  %7 = alloca %struct.TYPE_2__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %16, %struct.TYPE_2__*** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %18, %struct.TYPE_2__*** %7, align 8
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %45, %2
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %46

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %28

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %66, %46
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %49

67:                                               ; preds = %56
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %83

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @strcmp(i8* %80, i8* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %77, %72
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
