; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlAttrNormalizeSpace2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlAttrNormalizeSpace2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @xmlAttrNormalizeSpace2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmlAttrNormalizeSpace2(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i32* null, i32** %4, align 8
  br label %112

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %112

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %34, %28
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %30

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48
  store i32 1, i32* %10, align 4
  br label %64

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %44
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %11, align 8
  br label %63

63:                                               ; preds = %60, %59
  br label %40

64:                                               ; preds = %58, %40
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = call i32* @xmlStrndup(i32* %71, i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @xmlErrMemory(i32* %80, i32* null)
  store i32* null, i32** %4, align 8
  br label %112

82:                                               ; preds = %67
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @xmlAttrNormalizeSpace(i32* %83, i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = call i64 @strlen(i8* %87)
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %12, align 8
  store i32* %91, i32** %4, align 8
  br label %112

92:                                               ; preds = %64
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 1, %106
  %108 = call i32 @memmove(i32* %100, i32* %104, i32 %107)
  %109 = load i32*, i32** %6, align 8
  store i32* %109, i32** %4, align 8
  br label %112

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110
  store i32* null, i32** %4, align 8
  br label %112

112:                                              ; preds = %111, %95, %82, %79, %27, %21
  %113 = load i32*, i32** %4, align 8
  ret i32* %113
}

declare dso_local i32* @xmlStrndup(i32*, i32) #1

declare dso_local i32 @xmlErrMemory(i32*, i32*) #1

declare dso_local i32 @xmlAttrNormalizeSpace(i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
