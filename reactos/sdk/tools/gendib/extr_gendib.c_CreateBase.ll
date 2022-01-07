; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateBase.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dest\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%sBase = (char *) BltInfo->%sSurface->pvScan0 +\0A\00", align 1
@FLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"             BltInfo->SourcePoint.y *\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"           BltInfo->DestRect.top *\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"             (BltInfo->SourcePoint.y +\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"              BltInfo->DestRect.bottom -\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"              BltInfo->DestRect.top - 1) *\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"           (BltInfo->DestRect.bottom - 1) *\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"           %sBltInfo->%sSurface->lDelta +\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"             %sBltInfo->SourcePoint.x\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"           BltInfo->DestRect.left\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" / %u\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" * %u\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c") & ~ 0x3)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"BaseSourcePixels = %u - (BltInfo->SourcePoint.x & 0x%x);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @CreateBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateBase(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @MARK(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 (i32*, i8*, ...) @Output(i32* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @Output(i32* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @Output(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %48

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 (i32*, i8*, ...) @Output(i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 (i32*, i8*, ...) @Output(i32* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 (i32*, i8*, ...) @Output(i32* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %47

44:                                               ; preds = %34
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (i32*, i8*, ...) @Output(i32* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 16, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %64 = call i32 (i32*, i8*, ...) @Output(i32* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %63)
  br label %68

65:                                               ; preds = %48
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32*, i8*, ...) @Output(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %69, 8
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = udiv i32 8, %73
  %75 = call i32 (i32*, i8*, ...) @Output(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %74)
  br label %85

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = icmp ult i32 8, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = udiv i32 %81, 8
  %83 = call i32 (i32*, i8*, ...) @Output(i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp ule i32 %89, 16
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 (i32*, i8*, ...) @Output(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88, %85
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = udiv i32 %96, 8
  %98 = call i32 (i32*, i8*, ...) @Output(i32* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load i32, i32* %8, align 4
  %103 = icmp ule i32 %102, 16
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = udiv i32 32, %106
  %108 = load i32, i32* %8, align 4
  %109 = udiv i32 32, %108
  %110 = sub i32 %109, 1
  %111 = call i32 (i32*, i8*, ...) @Output(i32* %105, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %101, %94
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
